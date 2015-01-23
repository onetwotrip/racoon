def whyrun_supported?
  true
end

use_inline_resources

action :create do
  apt_package 'racoon'
  
  directory '/etc/racoon/racoon.d/' do
    owner 'root'
    group 'root'
    mode '0644'
    action :create
  end
  
  template '/etc/racoon/racoon.conf' do
    source 'racoon.conf.erb'
    variables(
      :listen_addr    => new_resource.listen_addr,
      :listen_port    => new_resource.listen_port,
      :certificate    => new_resource.certificate,
      :pre_shared_key => new_resource.pre_shared_key
    )
  end

  runit_service 'racoon' do
    default_logger true
    action :create
  end
end

action :delete do

end
