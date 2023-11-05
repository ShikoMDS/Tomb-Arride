/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_menu_button);
draw_set_color(c_navy);

draw_sprite_ext(spr_menu_button, image_index, x, y, x_scale, y_scale, 0, c_white, 1);

if (is_clicked) draw_text_custom(0);
else draw_text_custom(-5);