log "Secret credential test"

log "#{node[:scratch][:secret]}"

node.set[:scratch][:foo3] = "Привет"
