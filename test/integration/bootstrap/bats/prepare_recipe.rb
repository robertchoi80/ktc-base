Dir["/opt/kb/suites/bats/**/*.erb"].each do |bats_template|
  bats_name = bats_template.split(".erb").first

  template bats_name do
    source bats_template
  end
end
