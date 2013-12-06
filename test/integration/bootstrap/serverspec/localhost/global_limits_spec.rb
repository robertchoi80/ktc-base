require 'spec_helper'

describe file( "/etc/security/limits.d/global-limits.conf") do
  it { should be_file }
  it { should contain "hard    nofile" }
  it { should contain "soft    nofile" }
end
