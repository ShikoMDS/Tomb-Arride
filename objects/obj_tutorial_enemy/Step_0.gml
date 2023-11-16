/// @description Insert description here
// You can write your code in this editor

if (!game_paused)
{
	if (instance_exists(obj_player))
	{
		if (!shot)
		{
			if (!collision_line(x, y, obj_player.x, obj_player.y, obj_collision_parent, false, false))
			{
				player_seen = true;
			}
		}
	}
}