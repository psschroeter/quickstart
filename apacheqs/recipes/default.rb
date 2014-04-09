#
# Cookbook Name:: apacheqs
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#r = gem_package "ruby-debug" do
#  action :nothing
#end
#r.run_action(:install)
#Gem.clear_paths

#require 'rubygems'; require 'ruby-debug';

# Omit the following assignment statment line if don't want to wait
# for a client before continuing...
#Debugger.wait_connection = true
#Debugger.start_remote('localhost',9500)
#ruby_block "debug" do
#block do
#debugger
#end
#action :create
#end
#

require "chef/mixin/shell_out"
log "In the default recipe"


class Chef::Recipe
  include Chef::Mixin::ShellOut
end
class Chef::Resource
  include Chef::Mixin::ShellOut
end
class Chef::Provider
  include Chef::Mixin::ShellOut
end

ruby_block "test block" do 
  block do
    shell_out! "exit 1"
  end
end
