# encoding: utf-8
log "Привет comrades"

log "Input is #{node[:quickstart][:name]}"

bash "utf8 bash" do
  code "echo Привет from bash"
end
