if (added == false)
{
	if (place_meeting(x, y, obj_box))
	{
		added = true;
		if (instance_exists(obj_wall_broken_01))
		{
			obj_wall_broken_01.image_speed = 1;
		}
		obj_tutorialmanager.GoalsCompleted += 1;
	}
}