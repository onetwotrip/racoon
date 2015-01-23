# Cookbook Name:: racoon
# Recipe:: default

include_recipe 'runit'

racoon '' do
  action :create
end
