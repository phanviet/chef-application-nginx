# nginx config
default[:app][:nginx] = {}
default[:app][:nginx][:site_available] = "#{node[:nginx][:dir]}/sites-available/#{node[:app][:name]}.conf"
default[:app][:nginx][:site_enabled] = "#{node[:nginx][:dir]}/sites-enabled/#{node[:app][:name]}.conf"
default[:app][:nginx][:server_name] = "#{node[:app][:domain]}"
