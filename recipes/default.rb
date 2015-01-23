# Cookbook Name:: racoon
# Recipe:: default

apt_package "racoon"

directory "/etc/racoon/racoon.d/" do
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
