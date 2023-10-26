if (added == false)
{
	if (place_meeting(x, y, obj_box))
	{
		added = true;
		obj_wall_broken_01.image_speed = 1;
	}
}