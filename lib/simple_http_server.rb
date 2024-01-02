require 'webrick'

class SimpleHttpServer
  def initialize(port = 1234)
    @server = WEBrick::HTTPServer.new(Port: port)
    setup_routes
  end

  def start
    trap 'INT' do
      @server.shutdown
    end
    @server.start
  end

  private

  def setup_routes
    @server.mount_proc '/' do |req, res|
      res.body = 'Hello, client! This is the server.'
    end
  end
end
