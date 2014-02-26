#!/usr/bin/env bats
# vim: ft=sh:

# these are brittle, but better than just looking for the file
@test "should have set the tcp_keepalive_time" {
  [ "$(sysctl net.ipv4.tcp_keepalive_time)" == "60" ]
}

@test "should have set tcp_keepalive_probes" {
  [ "$(sysctl net.ipv4.tcp_keepalive_probes)" == "6" ]
}

@test "should have set tcp_keepalive_intvl" {
  [ "$(sysctl net.ipv4.tcp_keepalive_intvl)" == "10" ]
}
