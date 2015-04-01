# Cookbook Name:: racoon
# Recipe:: default

include_recipe 'runit' if node['racoon']['init_style'] == 'runit'

racoon node['racoon']['remote_ip'] do
  pre_shared_key node['racoon']['key']
  encryption_algorithms node['racoon']['encryption']
end if node['racoon']['remote_ip']
