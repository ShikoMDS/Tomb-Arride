/// @description Insert description here
// You can write your code in this editor

var button_left = x - width / 2;
var button_right = x + width / 2;
var button_top = y - height / 2;
var button_bottom = y + height / 2;

if (mouse_check_button(mb_left) && point_in_rectangle(mouse_x, mouse_y, button_left, button_top, button_right, button_bottom))
{
    // Button is clicked
    is_clicked = true;

    // Add your event functionality here
    // For example, you might want to perform an action or change a state
    // based on the button click.
    show_debug_message("Button Clicked!");
}
else
{
    is_clicked = false;
}