$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "../lib")))
require "sikuli-server"

client = SikuliServer::Client.new
client.app_focus("Chrome")
