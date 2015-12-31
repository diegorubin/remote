#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <X11/Xlib.h>
#include <X11/extensions/XTest.h>
#include <ruby.h>

/* ruby methods */
VALUE method_initialize(VALUE self);
VALUE method_send_key(VALUE self, VALUE key);

/* attr */
Display *display;

/* aux methods */
void Init_x11_display();

