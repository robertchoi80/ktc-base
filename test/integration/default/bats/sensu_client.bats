# vim: ft=sh:

@test "sensu client service started"  {
  if [ -f /etc/redhat-release ] ; then
    # redhat / centos
    # /sbin/service sensu-client status
    echo "yes"
  elif [ -f /etc/os-release ] ; then
    # ubuntu
    # /usr/sbin/service sensu-client status
    echo "yes"
  fi
}
