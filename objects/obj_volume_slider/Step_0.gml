if (mouse_check_button(mb_left) && position_meeting(x, y, self))
{
	if (mouse_x > 30 && mouse_x < 190)
	{
		x = mouse_x;
	}
}
else
{
	if (mouse_check_button_released(mb_left))
	{
		global.volume_percent = (x - 30) / start_x * 2;
	}
}

if (x < 35)
{
	sprite_index = spr_no_volume_box;
	global.volume_percent = 0;
}
else
{
	sprite_index = spr_volume_box;	
}

