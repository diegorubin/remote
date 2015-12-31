require 'socket'
require File.join(File.dirname(__FILE__),'..','ext','x11','x11_display')

class Client

  def initialize(host,port)
    @socket = TCPSocket.open(host,port)
    @socket.puts "note"
    @display = X11Display.new
  end

  def main_loop
    loop do
      msg = @socket.recvfrom(100)
      handler(msg.to_s)
    end
  end

  protected
  def handler(action)
    case action
    when "next"
      puts "proximo slide"
      @display.send_key 65
    when "prev"
      puts "slide anterior"
      @display.send_key 22 
    end
  end


end
