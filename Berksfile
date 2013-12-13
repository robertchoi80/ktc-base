#
# vim: set ft=ruby:
#

chef_api "https://cookbooks.mkd2.ktc", node_name: "cookbook", client_key: ".cookbook.pem"

site :opscode

metadata

cookbook 'timezone', github: 'secondmarket-cookbooks/timezone'

group :integration do
  cookbook 'ktc-etcd'
  cookbook 'ktc-sensu'
  cookbook 'ktc-testing'
end
