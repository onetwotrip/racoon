# Cookbook Name:: racoon
# Recipe:: default

include_recipe 'runit'

racoon "192.168.173.12" do
  my_identifier "hqipsec"
  shared_secret "11223344-5566-7788-99AA-BBCCDDEEFF11.SS"
  xauth_login "vpnuser"
end
