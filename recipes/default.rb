#
# Cookbook Name:: application-nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

upload_template "#{node[:app][:config_path]}/nginx.site.conf" do
  source 'nginx.site.conf.erb'
end

%w{/etc/nginx/sites-available/default /etc/nginx/sites-enabled/000-default}.each do |f|
  file f do
    action :delete
  end
end

link node[:app][:nginx][:site_available] do
  to "#{node[:app][:config_path]}/nginx.site.conf"
end

link node[:app][:nginx][:site_enabled] do
  to "#{node[:app][:config_path]}/nginx.site.conf"
end

include_recipe 'application-nginx::service'
