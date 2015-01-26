# Cookbook Name:: racoon
# Recipe:: default

include_recipe 'runit' if node['racoon']['init_style'] == 'runit'

racoon "192.168.173.12" do
  pre_shared_key "89123389jkdsjkkj123"
end
