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
