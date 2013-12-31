#
# we prefer this version of the delete_validation as it works in instances where
# the Chef::Config doesn't have a client_key (chef-solo chef-zero client-zero)
#
# TODO: Replace this with upstream when this issuee is resolved there.
#   https://github.com/opscode-cookbooks/chef-client/pull/141
#
class ::Chef::Recipe
  include ::Opscode::ChefClient::Helpers
end

client_key = Chef::Config[:client_key] || '/etc/chef/validation.pem'

unless chef_server?
  file Chef::Config[:validation_key] do
    action :delete
    backup false
    only_if { ::File.exists?(client_key) }
  end
end
