if (instance_exists(obj_player))
{
	if (bShot == false)
	{
		if (!collision_line(x, y, obj_player.x, obj_player.y, obj_collision_parent, false, false))
		{
			bPlayerSeen = true
		}
		else
		{
			bPlayerSeen = false;
			if (choose_direction_timer_tick <= 0)
			{
				mp_potential_step(RangeX, RangeY, 0.5, false);
				
				choose_direction_timer_tick = choose_direction_timer;
				alarm[0] = 1.25 * room_speed;
			}
			choose_direction_timer_tick--;
		}

		if (bPlayerSeen == true)
		{
			mp_potential_step(obj_player.x,obj_player.y,0.5,false);
		}
	}
}

if (xprevious < x)
{
	image_xscale = 1;
}

if (xprevious > x)
{
	image_xscale = -1;
}