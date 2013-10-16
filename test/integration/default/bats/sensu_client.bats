# vim: ft=sh:

@test "sensu client service started"  {
    service sensu-client status
}
