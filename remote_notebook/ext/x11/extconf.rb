require 'mkmf'

$libs = " -lX11 -lXtst"

class_name = 'x11_display'
dir_config(class_name)
create_makefile(class_name)

