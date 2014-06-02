if ::File.exists?("/var/lib/booted")
  log "Skipping reboot, /var/lib/booted file indicates we already booted"
else
  log "Issueing an init6 to simulate an early reboot"
  ::File.open("/var/lib/booted","w") {|f| f.puts(Time.now)}
  execute "init 6"
end
