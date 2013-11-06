
hostsfile_entry node[:ipaddress] do
  comment "Set by chef ktc-base::hosts"
  hostname node[:hostname]
  aliases [node[:fqdn]]
  unique true
end
