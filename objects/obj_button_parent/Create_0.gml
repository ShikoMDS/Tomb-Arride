/// @description Insert description here
// You can write your code in this editor

width = sprite_width * 1.5;
height = sprite_height * 2;

is_clicked = false;

function drawText(yAdjust)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y + yAdjust, button_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}