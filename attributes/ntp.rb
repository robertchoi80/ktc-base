include_attribute "ntp"
default[:ntp][:server] = %w/
  kr.pool.ntp.org
  0.asia.pool.ntp.org
  0.pool.ntp.org
/

default[:ntp][:peers] = %w/ntp01 ntp02/
default[:ntp][:restrictions] = [
  # TODO: scope this down to the actial internal net
  "10.0.0.0 mask 255.0.0.0 nomodify notrap",
]
