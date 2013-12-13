#
# Base run list requirements
#
default[:base][:includes] = []

# selinux permissive when on rhelish things
case platform_family
when "rhel"
  default[:base][:includes] << "selinux::permissive"
end

default[:base][:includes].concat %w{
  ktc-package
  timezone
  ktc-base::timezone
  ktc-base::hosts
  chef-client::cron
  omnibus_updater
  ohai
  users
  sudo
  ktc-git::users
  ktc-ssh::users
  ktc-vim
  ktc-base::global_limits
  ntp
  tmux
  ktc-monitor::client
  ktc-logging::client
  chef-client::delete_validation
}
