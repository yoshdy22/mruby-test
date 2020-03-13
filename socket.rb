server = TCPServer.open(20000)
socket = server.accept

line = socket.gets

p line

socket.close
