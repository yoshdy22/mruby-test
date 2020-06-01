sock = TCPSocket.open("192.168.1.10", 20000)
#sock = TCPSocket.open("192.168.1.11", 20000)
sock.write("HELLO")
sock.close
