if platform == "ubuntu"
  include_attribute "ubuntu"

  case node.chef_environment
  when "mkd2"
    # mkds repo server
    default[:ubuntu][:archive_url] = "http://repo02.mkd2.ktc/prod/ubuntu"
    default[:ubuntu][:security_url] = "http://repo02.mkd2.ktc/prod/ubuntu"
  when "ipc-stage", "ipc-ng"
    # ipc repo server
    default[:ubuntu][:archive_url] = "http://ngnode01.core.ucloud.com/prod/ubuntu"
    default[:ubuntu][:security_url] = "http://ngnode01.core.ucloud.com/prod/ubuntu"
  else
    # external ip for ipc stage
    default[:ubuntu][:archive_url] = "http://repo.kt-cloud.com/stage/ubuntu"
    default[:ubuntu][:security_url] = "http://repo.kt-cloud.com/stage/ubuntu"
  end
end
