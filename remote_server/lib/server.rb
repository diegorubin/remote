require 'socket'

class Server
  def initialize(port)
    @socket = TCPSocket.open(port)
  end

  def main_loop
    loop do
      @client = @socket.accept
      msg = client.recvfrom(100)
      handler(msg.to_s)
    end
  end

  protected
  def handler(msg)
    case msg
    when "note"
      puts "recebendo contato do note"
      @note = @client
    when "phone"
      puts "recebendo contato do phone"
      @phone = @client
    when "next"
      puts "proximo slide"
      @note.puts "next"
    when "prev"
      puts "slide anterior"
      @note.puts "prev"
    end
  end

end
