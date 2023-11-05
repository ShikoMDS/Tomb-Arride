/// @description Insert description here
// You can write your code in this editor

var _x1 = x - (width / 2);
var _x2 = x + (width / 2);
var _y1 = y - (height / 2);
var _y2 = y + (height / 2);

if (mouse_check_button(mb_left) && point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2))
{
	// Button is clicked
	is_clicked = true;
	image_index = 1;

	// Add your event functionality here
	// For example, you might want to perform an action or change a state
	// based on the button click.
	show_debug_message("Button Clicked!");
}
else
{
    is_clicked = false;
	image_index = 0;
}