
if (instance_exists(obj_player))
{
	if (place_meeting(x, y, obj_player))
	{
		if (alarm[0] < 0)
		{
			alarm[0] = 60;
			teleporting = false;
		}
	}
}