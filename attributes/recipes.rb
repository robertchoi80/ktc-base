#
# Base run list requirements
#
default[:base][:includes] = []

# selinux permissive when on rhelish things
case platform_family
when "rhel"
  default[:base][:includes] << "selinux::permissive"
  default[:base][:includes] << "yum"
when "debian"
  default[:base][:includes] << "apt"
  if platform == "ubuntu"
    default[:base][:includes] << "ubuntu"
  end
end

default[:base][:includes].concat %w{
  timezone
  ktc-base::timezone
  chef-client::cron
  omnibus_updater
  ohai
  helpers
  users
  sudo
  ktc-git::users
  ktc-ssh::users
  ktc-vim
  ktc-base::global_limits
  ntp
  tmux::package
  chef-client::delete_validation
}
