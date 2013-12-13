require 'spec_helper'

describe file( '/etc/cron.d/chef-client' ) do
  it { should be_file }
  it { should contain "chef-client" }
end
