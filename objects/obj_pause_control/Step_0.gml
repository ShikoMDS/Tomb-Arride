

var _x1 = button_x - (button_width / 2);
var _x2 = button_x + (button_width / 2);

var _resume_y1 = resume_button_y - (button_height / 2);
var _resume_y2 = resume_button_y + (button_height / 2);

var _restart_y1 = restart_button_y - (button_height / 2);
var _restart_y2 = restart_button_y + (button_height / 2);

var _menu_y1 = menu_button_y - (button_height / 2);
var _menu_y2 = menu_button_y + (button_height / 2);

var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);


if (mouse_check_button_released(mb_left))
{
	if (point_in_rectangle(_mouse_x, _mouse_y, _x1, _resume_y1, _x2, _resume_y2))
	{
		GamePaused = false;
		
		instance_destroy();
	}


	if (point_in_rectangle(_mouse_x, _mouse_y, _x1, _restart_y1, _x2, _restart_y2))
	{
		room_restart();
		
		GamePaused = false;
	}


	if (point_in_rectangle(_mouse_x, _mouse_y, _x1, _menu_y1, _x2, _menu_y2))
	{
		with (instance_create_layer(x, y, "Instances", obj_fade_control))
		{
			target_room = rm_menu;
			colour = c_black;
		}
		
		instance_destroy();
	}
}