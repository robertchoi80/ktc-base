#
#  Controll omni updater recipe
#

include_attribute "ktc-package"
include_attribute "omnibus_updater"

default[:omnibus_updater][:direct_url] =
  "http://#{node["repo_host"]}/prod/kt/pool/main/c/chef/chef_11.8.2-1.ubuntu.12.04_amd64.deb"

# for why we turn this off
# see https://github.com/hw-cookbooks/omnibus_updater/issues/20
default[:omnibus_updater][:kill_chef_on_upgrade]   = false
default[:omnibus_updater][:remove_chef_system_gem] =  true
default[:omnibus_updater][:always_download] = false
default[:omnibus_updater][:cache_omnibus_installer] = true
