$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "../lib")))
require "sikuli-server"

images = File.expand_path(File.join(File.dirname(__FILE__), "images"))
client = SikuliServer::Client.new

host_os = RbConfig::CONFIG['host_os']
case host_os
when /mswin|msys|mingw|cygwin|bccwin|wince|emc/i
  client.focus('Google Chrome.app')
  client.click(File.join(images, 'SignIn.png'))
#when /darwin|mac os/i
#  client.focus('Safari')
#  client.click(File.join(images, '???.png'))
when /linux/i
  client.focus('Mozilla Firefox')
  client.click(File.join(images, 'help.png'))
when /solaris|bsd/i
  client.focus('Mozilla Firefox')
  client.click(File.join(images, 'help.png'))
else
  raise RuntimeError, "Unknown os: #{host_os.inspect}"
end
