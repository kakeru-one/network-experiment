require 'socket'

class TCPAdapter
  def initialize
    @socket = nil
  end

  def start_server(port)
    @socket = TCPServer.new(port)
    puts "サーバーを起動しました。クライアントからの接続を待機中..."
    @client_socket = @socket.accept
  end

  def start_client(server_ip, port)
    @socket = TCPSocket.new(server_ip, port)
  end

  def send_data(data)
    @socket.puts(data)
  end

  def receive
    data = @client_socket.recv(1024)
    puts "message: #{data}"
  end

  def close
    @socket.close
  end
end
