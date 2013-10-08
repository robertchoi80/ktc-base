name              "ktc-base"
maintainer        "Jesse Nelson"
maintainer_email  "spheromak@gmail.com"
license           "Apache 2"
description       "Base Role Cook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.2.7"

depends "ohai"
depends "ubuntu",
          "~> 1.1.1"

depends "apt",
          "~> 2.1.2"

# as this is a new / random upstream
# I am going to lock it down for now
depends "timezone",
          "~> 0.0.3"

depends "cron",
          "~> 1.2.8"

depends "ntp",
          "~> 1.3.2"

depends "tmux",
          "~> 1.3.0"

depends "selinux",
          "~> 0.5.6"

depends "helpers",
          "~> 1.2.1"

depends "users",
          "~> 1.1.2"

depends "ktc-vim",
          "~> 0.1.3"

depends "ktc-git",
          "~> 0.1.1"

depends "ktc-ssh",
          "~> 1.1.1"

depends "sudo",
          "~> 2.2.0"

depends "chef-client",
          "~> 3.0.0"

depends "hostsfile",
          "~> 1.0.1"

depends "yum",
          "~> 2.3.1"

depends "omnibus_updater",
          "~> 0.2.4"

depends "ktc-monitor",
          "~> 0.9.0"

depends "ktc-logging",
          "~> 0.1.0"

depends "ktc-utils",
          "~> 0.3.3"
