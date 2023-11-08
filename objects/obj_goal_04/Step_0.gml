if (added == false)
{
	if (place_meeting(x, y, obj_box))
	{		
		added = true;
		if (instance_exists(obj_wall_broken_04))
		{
			obj_wall_broken_04.image_speed = 1;
		}
		obj_gamemanager.goals_completed += 1;
	}
}