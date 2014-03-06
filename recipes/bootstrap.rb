# Encoding: UTF-8
# CookBook:: ktc-base
# Recipe:: default
# Author:: Jesse Nelson <spheromak@gmail.com>
#

match = /
  (ktc-)?monitor.*|
  (ktc-)?sensu.*|
  (ktc-)?graphite.*|
  (ktc-)?collectd.*|
  (ktc-)?logging.*
/

node[:base][:includes].each do |recipe|
  next if recipe =~ match
  include_recipe recipe
end
