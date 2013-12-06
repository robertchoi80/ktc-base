
hostsfile_entry node[:ipaddress] do
  comment "Set by chef ktc-base::hosts"
  hostname node[:hostname]
  ip_address node[:ipaddress]
  aliases [node[:fqdn]]
  unique true
end
