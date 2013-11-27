#
# CookBook:: ktc-base
# Recipe:: default
# Author:: Jesse Nelson <spheromak@gmail.com>
#

node[:base][:includes].each do |recipe|
  next if recipe =~ /sensu.*|graphite.*|collectd.*|ktc-sensu.*|ktc-graphite.*|ktc-collectd.*/
  include_recipe recipe
end
