ruby_block "log some arrays" do 
 block do 
   Chef::Log.info(node[:scratch][:testarray].inspect)
 end
end
