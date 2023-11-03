if (added == false)
{
	if (place_meeting(x, y, obj_box))
	{		
		added = true;
		if (instance_exists(obj_wall_broken_03))
		{
			obj_wall_broken_03.image_speed = 1;
		}
		obj_gamemanager.GoalsCompleted += 1;
	}
}