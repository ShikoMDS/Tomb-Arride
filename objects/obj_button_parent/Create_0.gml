/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

x_scale = 1;
y_scale = 1;

width = sprite_width * x_scale;
height = sprite_height * y_scale;

is_clicked = false;

function draw_text_custom(_y_adjust)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y + _y_adjust, button_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}