log "Secret credential test"

log "#{node[:scratch][:secret]}"

ruby_block "set attribute" do
  block do
    node.set[:scratch][:foo2] = File.read("/tmp/xxx")
  end
end
