name              "ktc-base"
maintainer        "Jesse Nelson"
maintainer_email  "spheromak@gmail.com"
license           "Apache 2"
description       "Base Role Cook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.2.23'

depends "chef-client", ">= 3.2.0"
depends "ktc-git"
depends "sysctl"
depends "ktc-logging"
depends "ktc-rsyslog", ">= 0.1.11"
depends "ktc-monitor"
depends "ktc-package"
depends "ktc-ssh"
depends "ktc-vim"
depends "ktc-utils"
depends "ntp"
depends "ohai"
depends "omnibus_updater"
depends "selinux"
depends "sudo"
depends "timezone"
depends "tmux"
depends "users"
depends "ktc-package"
