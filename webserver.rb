require "webrick"
require "erubis"
require File.expand_path("controllers/home_controller")

server = WEBrick::HTTPServer.new(:Port => 3000)
server.mount "/", HomeController

trap("INT") {
  server.shutdown
}

server.start
