require 'ruboto'
require 'connection'

ruboto_import_widgets :Button, :LinearLayout, :EditText

$activity.handle_create do |bundle|
  setTitle 'Ruby Remote'

  setup_content do
    linear_layout :orientation => LinearLayout::VERTICAL do
      button :text => 'connect', :width => :wrap_content, :id => 60
      button :text => 'next', :width => :wrap_content, :id => 60
      button :text => 'previous', :width => :wrap_content, :id => 60
    end
  end

  handle_click do |view|
    case view.getText
    when 'connect'
      begin
        toast("Conectando")
        @server = Connection.new("diegorubin.com",3005) 
        toast("Pronto")
      rescue Exception => e 
        toast("Não foi possivel conectar: #{e.message}")
      end
    else
      @server.send(view.getText) if @server
      toast(view.getText)
    end
  end
end
