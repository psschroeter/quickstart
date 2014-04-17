# encoding: utf-8
log "Привет comrades"

log "Input is #{node[:scratch][:name]}"

unless platform_family?("windows")
  bash "utf8 bash" do
    code "echo Привет from bash"
  end
end
