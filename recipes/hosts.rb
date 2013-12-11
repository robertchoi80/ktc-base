
hostsfile_entry '127.0.0.1' do
  comment "Set by chef ktc-base::hosts"
  hostname  'localhost.localdomain'
  ip_address '127.0.0.1'
  aliases   ['localhost']
  unique true
  action [ :create, :update ]
end

# Ubuntu REQUIRES this to be setup corectly
#   ipaddr  FQDN HOSTNAME
#   ^^ has to be this order for hostname -f to work (and thus ohai)
# the 127.0.1.1 entry shoudl be unused as it should only exist on hosts
#  with no ipaddress
ip = node[:ipaddress]
hostsfile_entry ip do
  not_if { ip == '127.0.0.1' }
  action [ :create, :update ]
  hostname node[:fqdn].empty? ? 'unknown.localdomain' : node[:fqdn]
  aliases [ node[:hostname].empty? ? 'unknown' : node[:hostname] ]
  comment "Set by chef ktc-base::hosts"
  ip_address ip
  unique true
end

hostsfile_entry '127.0.1.1' do
  action :remove
end
