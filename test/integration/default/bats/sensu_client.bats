# vim: ft=sh:

@test "sensu client service started"  {
  if [ -f /etc/redhat-release ] ; then
    # redhat / centos
    /sbin/service sensu-client status
  elif [ -f /etc/os-release ] ; then
    # ubuntu
    /usr/sbin/service sensu-client status
  fi
}
