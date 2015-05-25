application-nginx Cookbook
============

This cookbook helps you setup the nginx config to run a rails application with unicorn or puma
- It depends on:
  + [application-defaults](https://github.com/phanviet/chef-application-defaults.git)
  + [nginx](https://supermarket.chef.io/cookbooks/nginx)
- Some related cookbooks:
  + [application-unicorn](https://github.com/phanviet/chef-application-unicorn.git)
  + [application-puma](https://github.com/phanviet/chef-application-puma.git)

Attributes
----------
  + Reading `attributes` folder in cookbook to know more details

Recipes & Usage
-----
- `recipe[application-nginx]`: Setup nginx config and services to run a rails application with unicorn or puma
- `recipe[application-nginx::service]`: Setup only services for nginx
