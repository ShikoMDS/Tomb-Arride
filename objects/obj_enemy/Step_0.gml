if (instance_exists(obj_player))
{
	if (!collision_line(x,y,obj_player.x, obj_player.y, obj_wall, false, false))
	{
		bPlayerSeen = true
	}
	else
	{
		bPlayerSeen = false;
		if (choose_direction_timer_tick <= 0)
		{
			
			mp_potential_step(RangeX, RangeY, 2, false);
			
			choose_direction_timer_tick = choose_direction_timer;
			alarm[0] = 1.25 * room_speed;
		}
		choose_direction_timer_tick--;
	}

	if (bPlayerSeen == true)
	{
		
		mp_potential_step(obj_player.x,obj_player.y,2,false);

		//y = clamp(y,0 + sprite_height/2,768)
		//x = clamp(x,0 + sprite_width/2,1366)
	}
}

