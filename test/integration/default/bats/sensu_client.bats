# vim: ft=sh:

@test "sensu client service started"  {
    /usr/sbin/service sensu-client status
}
