require 'socket'

class Connection
  def initialize(host, port)
    @socket = TCPSocket.open(host, port)
    @socket.puts "phone"
  end

  def next
    @socket.puts "next"
  end
  
  def previous
    @socket.puts "prev"
  end

  def close
    @socket.close
  end
end
