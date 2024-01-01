# コンセプトドキュメント
## bin/tcp-test
ベタガキすると、以下のような感じになる。

### サーバー側
```ruby
require 'socket'

# サーバーソケットを作成
server = TCPServer.new(12345) # ポート番号 12345 を使用

puts "サーバーを起動しました。クライアントからの接続を待機中..."

# クライアントからの接続を待機
client_socket = server.accept

# データを受信
data = client_socket.recv(1024)
puts "クライアントからのデータ: #{data}"

# クライアントとの接続を閉じる
client_socket.close
```

### クライアント側
```ruby
require 'socket'

# サーバーに接続
client_socket = TCPSocket.new('サーバーのIPアドレス', 12345) # サーバーのIPアドレスとポート番号

# データを送信
client_socket.puts("Hello, Server!")

# サーバーとの接続を閉じる
client_socket.close
```
