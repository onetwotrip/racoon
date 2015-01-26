# Cookbook Name:: racoon
# Recipe:: default

include_recipe 'runit' if node['racoon']['init_style'] == 'runit'
