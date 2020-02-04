server = TCPServer.open(20000)
socket = server.accept

line = socket.recv
#line = socket.gets

p line

socket.close
