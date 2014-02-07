# Encoding: UTF-8
include_attribute 'sysctl'

default[:sysctl][:params][:net][:ipv4][:tcp_keepalive_time] = 60
default[:sysctl][:params][:net][:ipv4][:tcp_keepalive_probes] = 6
default[:sysctl][:params][:net][:ipv4][:tcp_keepalive_intvl] = 10
