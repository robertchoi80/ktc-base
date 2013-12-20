#
#  The following did not work, as hostsfile initialize would blow up
# hostsfile_entry '127.0.1.1' do
#   action :remove
# end

h = Chef::Util::FileEdit.new("/etc/hosts")
h.search_file_delete_line /^\s+127.0.1.1.*/
h.write_file

# Remove uneeded 127.0.1.1 entry
hostsfile_entry '127.0.1.1' do
  action :remove
end

hostsfile_entry '127.0.0.1' do
  comment "Set by chef ktc-base::hosts"
  hostname  'localhost.localdomain'
  ip_address '127.0.0.1'
  aliases   ['localhost']
  unique true
  action [:create, :update]
end

# Ubuntu REQUIRES this to be setup corectly
#   ipaddr  FQDN HOSTNAME
#   ^^ has to be this order for hostname -f to work (and thus ohai)
# the 127.0.1.1 entry shoudl be unused as it should only exist on hosts
#  with no ipaddress
ip = node[:ipaddress]

# need to figure out the fqdn and wether it is the same as hostname
# and set aliases acordingly
full_name = node[:fqdn].empty? ? 'unknown.localdomain' : node[:fqdn]
name = node[:fqdn].empty? ? 'unknown.localdomain' : node[:fqdn]
other_names =  [name]
if name == full_name
  other_names = nil
end

hostsfile_entry ip do
  not_if { ip == '127.0.0.1' }
  action [:create, :update]
  hostname full_name
  aliases other_names if other_names
  comment "Set by chef ktc-base::hosts"
  ip_address ip
  unique true
end
