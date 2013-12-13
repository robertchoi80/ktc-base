require 'serverspec'
require 'pathname'
### include requirements ###

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.path = '/sbin:/usr/sbin'
end
