if (added == false)
{
	if (place_meeting(x, y, obj_box))
	{
		added = true;
		obj_gamemanager.completedGoals += 1;
	}
}