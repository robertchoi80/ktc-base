describe package tzdata do
  it { should be_installed }
end

describe file "/etc/profile.d/tz.sh" do
  it { should be_installed }
  it { should_contain "TZ=GMT" }
end

describe command 'date +%Z' do
  it { should return_stdout "GMT" }
end

case backend(Serverspec::Commands::Base).check_os[:family]
when "RedHat"
  describe file "/etc/localtime" do
    it { should be_linked_to "/usr/share/zoneinfo/GMT" }
  end

  describe "/etc/sysconfig/clock" do
    it { should be_file }
    it { should contain "ZONE=GMT" }
  end
when "debian"
 describe "/etc/timezone" do
   it { should be_file }
   it { should contain "GMT" }
 end
end
