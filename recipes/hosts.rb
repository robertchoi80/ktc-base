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
ip = KTC::Network.address "management" ||  node[:ipaddress]

# we don't want to manage or force this on a host with only loopback
return if ip == '127.0.0.1'

# need to figure out the fqdn and wether it is the same as hostname
# and set aliases acordingly
full_name = node[:fqdn].empty? ? 'unknown.localdomain' : node[:fqdn]
name = node[:hostname].empty? ? 'unknown.localdomain' : node[:hostname]
other_name =  name
if name == full_name
  other_name = nil
end

# setup the hostfile content
data = "# This is set by ktc-base::hosts chef recipe changes will be wiped\n"
data << "127.0.0.1 localhost.localdomain localhost\n"
data << "#{ip} #{full_name} #{other_name}\n"

# chef file resource is atomic and generally pretty nice
file "/etc/hosts" do
  mode 00644
  owner 'root'
  group 'root'
  content data
end
