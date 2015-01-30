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
    cookbook 'racoon'
    variables(
      :listen_addr    => ipaddress,
      :listen_port    => node['racoon']['listen_port'],
      :certificate    => node['racoon']['certificate'],
      :pre_shared_key => node['racoon']['pre_shared_key']
    )
  end

  # Main template
  template "/etc/racoon/racoon.d/#{new_resource.ipaddress}.conf" do
    source new_resource.source
    cookbook new_resource.cookbook
    variables(
    :ipaddress => new_resource.ipaddress,
    :encryption_algorithms => new_resource.encryption_algorithms
    )
  end

  template node['racoon']['pre_shared_key_path'] do
    source 'psk.txt.erb'
    cookbook 'racoon'
    variables(
    :ipaddress => new_resource.ipaddress,
    :pre_shared_key => new_resource.pre_shared_key
    )
  end

  # Use runit by default  
  runit_service 'racoon' do
    default_logger true
    cookbook 'racoon'
    action :enable
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

def ipaddress()
  node['racoon']['listen_addr'] ? node['racoon']['listen_addr'] : node['ipaddress']
end
