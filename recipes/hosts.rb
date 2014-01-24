# To you, W. B. Yeats, good praiser, wholesome dispraiser, heavy-handed judge,
# open-handed helper of us all, I offer a play of my plays for every night of
# the week, because you like them, and because you have taught me my trade.
#  - Lady Gregory
#
# Ubuntu REQUIRES this to be setup corectly
#   ipaddr  FQDN HOSTNAME
#   ^^ has to be this order for hostname -f to work (and thus ohai)
# the 127.0.1.1 entry shoudl be unused as it should only exist on hosts
#  with no ipaddress
#
# Hostsfile should be something like
# -----------------------------------------------------------------------------
# # This is set by ktc-base::hosts chef recipe changes will be wiped out
# 127.0.0.1 localhost.localdomain localhost
#

# use the management interface if it exists as the ipaddress.
# This has some side-effects in chef. The node.fqdn may change.
# after this then things will work.
KTC::Network.node = node
ip = KTC::Network.address "management" ||  node[:ipaddress]

# quick hack for mnode
# TODO: fix this to be better
if node[:node][:hostname].match('^mnode')
  if node[:network][:interfaces].include? 'br0'
    ip = KTC::Network.address 'br0'
  else
    ip = KTC::Network.address 'eth1'
  end
  if ip.nil?
    ip = KTC::Network.address 'eth0'
  end
end

# we don't want to manage or force this on a host with only loopback
return if ip == '127.0.0.1'
# but if theres no ip, then well use that
local_only = true if ip.nil?

# need to figure out the fqdn and wether it is the same as hostname
# and set aliases acordingly
full_name = node[:fqdn].empty? ? 'unknown.localdomain' : node[:fqdn]
name = node[:hostname].empty? ? 'unknown.localdomain' : node[:hostname]
other_name =  name
if name == full_name
  other_name = nil
end

# setup the hostfile content
#
local_entry = "127.0.0.1 localhost.localdomain localhost\n"
if local_only
  local_entry "127.0.0.1 #{full_name} #{other_name} localhost.localdomain localhost\n"
end

data = "# This is set by ktc-base::hosts chef recipe changes will be wiped\n"
data << local_entry
data << "#{ip} #{full_name} #{other_name}\n"

# chef file resource is atomic and generally pretty nice
file "/etc/hosts" do
  mode 00644
  owner 'root'
  group 'root'
  content data
end
