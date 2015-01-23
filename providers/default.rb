def whyrun_supported?
  true
end

use_inline_resources

action :create do
  # install racoon with apt and create dir
  apt_package 'racoon'
  directory '/etc/racoon/racoon.d/' do
    owner 'root'
    group 'root'
    mode '0644'
    action :create
  end
 
  # Base template 
  template '/etc/racoon/racoon.conf' do
    source 'racoon.conf.erb'
    variables(
      :listen_addr    => new_resource.listen_addr,
      :listen_port    => new_resource.listen_port,
      :certificate    => new_resource.certificate,
      :pre_shared_key => new_resource.pre_shared_key
    )
  end

  # Use runit by default  
  runit_service 'racoon' do
    default_logger true
    action :create
  end if new_resource.init_style == 'runit'

 
end

action :delete do
  apt_package 'racoon' do
    action :remove
  end
  runit_service 'racoon' do
    action :disable
  end if new_resource.init_style == 'runit'
end
