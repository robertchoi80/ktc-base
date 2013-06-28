if platform == "ubuntu"
  include_attribute "ubuntu"

  default[:ubuntu][:archive_url] = "http://ftp.daum.net/ubuntu"
  default[:ubuntu][:security_url] = "http://ftp.daum.net/ubuntu"
end
