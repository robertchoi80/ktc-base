#
# vim: set ft=ruby:
#

chef_api "https://cookbooks.mkd2.ktc", node_name: "cookbook", client_key: ".cookbook.pem"

site :opscode

cookbook "ktc-rsyslog", ">= 0.1.5"
metadata

group :integration do
  cookbook 'ktc-etcd'
  cookbook 'ktc-sensu'
  cookbook 'ktc-testing'
  cookbook 'timezone', github: 'secondmarket-cookbooks/timezone'
end
