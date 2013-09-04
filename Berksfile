# vim: set ft=ruby:
site :opscode

metadata
group "ktc" do
  cookbook 'helpers',
    github: 'cloudware-cookbooks/helpers'
  cookbook 'users',
    github: 'cloudware-cookbooks/users'
  cookbook 'ktc-vim',
    github: 'cloudware-cookbooks/ktc-vim'
  cookbook 'ktc-git',
    github: 'cloudware-cookbooks/ktc-git'
  cookbook 'ktc-ssh',
    github: 'cloudware-cookbooks/ktc-ssh'
  # can remove this when upstream yum includes https://github.com/opscode-cookbooks/yum/pull/48
  cookbook 'yum',
    github: 'spheromak/yum',
    branch: 'integration'
  cookbook 'ktc-monitor', 
    git: 'git@github.com:cloudware-cookbooks/ktc-monitor.git' 
  cookbook 'ktc-collectd',
    github: 'cloudware-cookbooks/ktc-collectd'
  cookbook 'ktc-sensu', 
    git: 'git@github.com:cloudware-cookbooks/ktc-sensu.git', 
    branch: 'develop'
end

group "other" do
  cookbook 'chef-client',
    github: 'opscode-cookbooks/chef-client'
  cookbook 'omnibus_updater',
    github: 'hw-cookbooks/omnibus_updater'
  cookbook 'timezone',
    github: 'secondmarket-cookbooks/timezone'
  cookbook 'collectd',
    github: 'miah/chef-collectd'
  cookbook "graphite",
    github: "hw-cookbooks/graphite"
  cookbook "sensu", 
    github: "sensu/sensu-chef"
  cookbook "redis", 
    github: "miah/chef-redis", 
    branch: "2.1.0"
end

group "integration" do
  cookbook 'chef-solo-search',
    github: 'edelight/chef-solo-search'
end

