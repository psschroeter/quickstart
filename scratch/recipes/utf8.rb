# encoding: utf-8
log "Привет comrades"

log "Input is #{node[:scratch][:name]}"

unless platform_family?("windows")
  bash "utf8 bash" do
    code "echo Привет from bash"
  end
end

location = platform_family?("windows") ? "C:\\file.out" : "/tmp/file.out"
md5sum = "17a46374aaef6af9c4f3c533ab42bccd"
remote_file location do 
  source "http://s3.amazonaws.com/rightscale_rightlink_dev/5.8.8/patch/2.tgz"
  backup false
  checksum md5sum
end

# errors out if Encoding.default_internal set only?
ruby_block "test checksum" do 
  block do 
    require 'digest/md5'
    f = ::File.open(location,"rb")
    actual = Digest::MD5.hexdigest(f.read)
    raise "checksum mismatch expected #{md5sum} vs actual #{actual}" unless md5sum == actual
  end
end

