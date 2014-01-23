#
#
#  Controll omni updater recipe
#
include_attribute "omnibus_updater"

default[:omnibus_updater][:version] = "latest"

# for why we turn this off
# see https://github.com/hw-cookbooks/omnibus_updater/issues/20
default[:omnibus_updater][:kill_chef_on_upgrade]   = false
default[:omnibus_updater][:remove_chef_system_gem] =  true
default[:omnibus_updater][:always_download] = false
default[:omnibus_updater][:cache_omnibus_installer] = true
