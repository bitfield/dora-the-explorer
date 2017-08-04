#!/usr/local/bin/ruby
require 'webrick'
include WEBrick

s = HTTPServer.new(:Port => 9090,  :DocumentRoot => Dir::pwd)
trap("INT"){ s.shutdown }
s.mount_proc '/' do |req, res|
    res.body = File.open('/etc/config/greeting').read()
end
s.start
