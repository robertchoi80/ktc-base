# vim: ft=sh:

@test "Mtime of hostsfile shouldn't update on seccessive run" {
  mtime=(stat -c %Y /etc/hosts)
  sudo chef-solo -c /tmp/kitchen/client.rb  -o 'ktc-base::hosts'  2>&1 > /dev/null
  newtime=(stat -c %Y /etc/hosts)
  [ "$newtime" == "$mtime" ]
}

