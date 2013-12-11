
hostsfile_entry '127.0.0.1' do
  hostname  node['fqdn']
  ip_address '127.0.0.1'
  aliases   ['localhost']
  action    :update
end

ip = node[:ipaddress] || '127.0.0.1'
hostsfile_entry ip do
  comment "Set by chef ktc-base::hosts"
  hostname node[:hostname] || 'unknown'
  ip_address ip
  aliases [node[:fqdn]] || 'unkown.localdomain'
  unique false
end
