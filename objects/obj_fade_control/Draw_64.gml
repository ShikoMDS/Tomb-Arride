

//Get GUI dimensions
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

//Draw fade
draw_set_alpha(alpha);
draw_set_color(colour);

draw_rectangle(0,0,_gui_w,_gui_h,0);

draw_set_alpha(1);
draw_set_color(c_white);