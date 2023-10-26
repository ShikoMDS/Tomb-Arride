/// @description Insert description here
// You can write your code in this editor

draw_set_font(FontMenuButtons);
draw_set_color(c_navy);

if (is_clicked) 
{
    // If the button is clicked, use frame 1
    draw_sprite_ext(spr_menu_button, image_index + 1, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
	
	drawText(0);
} 
else 
{
    // Otherwise, use frame 0
    draw_sprite_ext(spr_menu_button, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
	
	drawText(-5);
}



