include_recipe 'ntp'

# UCLOUDNG-1476 Block ntp from vm
if node['hostname'].include?('cnode')
  chef_gem 'chef-rewind'
  require 'chef/rewind'

  rewind template: '/etc/ntp.conf' do
    cookbook_name 'ktc-base'
  end
end
