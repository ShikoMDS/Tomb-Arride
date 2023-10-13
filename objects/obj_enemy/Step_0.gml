if (instance_exists(obj_player))
{
	if (!collision_line(x,y,obj_player.x, obj_player.y, obj_wall, false, false))
{
	bPlayerSeen = true
}

if (bPlayerSeen == true)
{
	mp_potential_step(obj_player.x,obj_player.y,2,false);

	//y = clamp(y,0 + sprite_height/2,768)
	//x = clamp(x,0 + sprite_width/2,1366)
}
}