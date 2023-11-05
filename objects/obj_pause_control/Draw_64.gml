
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);
	
draw_set_color(ColGold);
draw_set_font(FontMenuTitle);
	
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _x = display_get_gui_width() / 2
var _y = display_get_gui_height() / 4

//Draw the text with center alignment
draw_text(_x, _y, "Paused");



//Resume button
draw_sprite_ext(sprite_index, 0, button_x, resume_button_y, x_scale, y_scale, 0, c_white, 1);
draw_text_transformed(button_x, resume_button_y - 8, "Resume", text_x_scale, text_y_scale, 0);

//Restart button
draw_sprite_ext(sprite_index, 0, button_x, restart_button_y, x_scale, y_scale, 0, c_white, 1);
draw_text_transformed(button_x, restart_button_y - 8, "Restart", text_x_scale, text_y_scale, 0);

////Menu button
draw_sprite_ext(sprite_index, 0, button_x, menu_button_y, x_scale, y_scale, 0, c_white, 1);
draw_text_transformed(button_x, menu_button_y - 8, "Menu", text_x_scale, text_y_scale, 0);