#
# Cookbook Name:: apacheqs
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd"

service "httpd" do
  action :start
end

template "/var/www/html/index.html" do
  source "index.html.erb"
  owner 'root'
  group 'root'
  mode 0755
end
