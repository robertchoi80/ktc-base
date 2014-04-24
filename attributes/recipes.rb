# Encoding: UTF-8
#
# Base run list requirements
#
default[:base][:includes] = []

# selinux permissive when on rhelish things
case platform_family
when 'rhel'
  default[:base][:includes] << 'selinux::permissive'
end

default[:base][:includes].concat %w(
  ktc-package
  sysctl
  timezone
  ktc-base::timezone
  ktc-base::hosts
  ktc-monitor::client
  ktc-chef
  ohai
  users
  sudo
  ktc-git::users
  ktc-ssh
  ktc-ssh::users
  ktc-vim
  ktc-base::global_limits
  ntp
  tmux
  ktc-logging::client
  ktc-base::delete_validation
)
