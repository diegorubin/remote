#include "x11_display.h"

VALUE x11_display = Qnil;

void Init_x11_display() {
  x11_display = rb_define_class("X11Display", rb_cObject);
  rb_define_method(x11_display, "initialize", method_initialize, 0);
  rb_define_method(x11_display, "send_key", method_send_key, 1);
  
}

VALUE method_initialize(VALUE self) {
  display = XOpenDisplay("");
  return self;
}

VALUE method_send_key(VALUE self, VALUE key) {
 
  XTestFakeKeyEvent(display, NUM2INT(key), 1, 0);
  XTestFakeKeyEvent(display, NUM2INT(key), 0, 0);
  XSync(display,1);
  return Qtrue;
}

