name              "ktc-base"
maintainer        "Jesse Nelson"
maintainer_email  "spheromak@gmail.com"
license           "Apache 2"
description       "Base Role Cook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.2.10'

depends "apt"
depends "chef-client"
depends "ktc-git"
depends "ktc-logging"
depends "ktc-monitor"
depends "ktc-ssh"
depends "ktc-vim"
depends "ntp"
depends "ohai"
depends "omnibus_updater"
depends "selinux"
depends "sudo"
depends "timezone"
depends "tmux"
depends "ubuntu"
depends "users"
depends "yum"
depends "hostsfile", ">= 2.4.1"
