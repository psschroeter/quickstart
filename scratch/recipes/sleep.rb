ruby_block "sleep #{node[:scratch][:sleep_sec]} seconds"  do
  block do 
    sleep node[:scratch][:sleep_sec] 
  end
end
