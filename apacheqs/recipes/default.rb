#
# Cookbook Name:: apacheqs
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

r = gem_package "ruby-debug" do
  action :nothing
end
r.run_action(:install)

require 'rubygems'; require 'ruby-debug';

# Omit the following assignment statment line if don't want to wait
# for a client before continuing...
Debugger.wait_connection = true
Debugger.start_remote

#package "httpd"

#service "httpd" do
#  action :start
#end


