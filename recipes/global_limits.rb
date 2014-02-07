# = begin
# Recipe:: global_limits
#
#  Setup the global pam limits. Use the user_limit ressource for per-user things
#
# = end

directory '/etc/security/limits.d/' do
  owner 'root'
  group 'root'
  mode '0755'
end

file '/etc/security/limits.d/global-limits.conf' do
  owner 'root'
  group 'root'
  mode  0640
  content <<-END
    # global limits
    *        hard    nofile  40960
    *        soft    nofile  40960
    *        hard    core    0
    *        soft    core    0
 END

end
