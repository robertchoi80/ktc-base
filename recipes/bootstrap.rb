# Encoding: UTF-8
# CookBook:: ktc-base
# Recipe:: default
# Author:: Jesse Nelson <spheromak@gmail.com>
#
case node.platform_family
when 'rhel'
  include_recipe 'selinux::permissive'
end

%w{
  ktc-package
  sysctl
  timezone
  ktc-base::timezone
  ktc-base::hosts
  ktc-chef
  ohai
  users
  sudo
  ktc-git::users
  ktc-ssh::users
  ktc-vim
  ktc-base::global_limits
  ntp
  tmux
  ktc-base::delete_validation
}.each { |i| include_recipe i }
