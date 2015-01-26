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
      :listen_addr    => node['racoon']['listen_addr'],
      :listen_port    => node['racoon']['listen_port'],
      :certificate    => node['racoon']['certificate'],
      :pre_shared_key => node['racoon']['pre_shared_key']
    )
  end

  # Main template
  template "/etc/racoon/racoon.d/#{new_resource.ipaddress}.conf" do
    source new_resource.source
    variables(
    :ipaddress => new_resource.ipaddress,
    :my_identifier => new_resource.my_identifier,
    :shared_secret => new_resource.shared_secret,
    :xauth_login => new_resource.xauth_login,
    :encryption_algorithms => new_resource.encryption_algorithms
    )
  end

  # Use runit by default  
  runit_service 'racoon' do
    default_logger true
    action :create
  end if node['racoon']['init_style'] == 'runit'

 
end

action :delete do
  apt_package 'racoon' do
    action :remove
  end
  runit_service 'racoon' do
    action :disable
  end if node['racoon']['init_style'] == 'runit'
end
