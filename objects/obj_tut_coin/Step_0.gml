if (place_meeting(x,y,obj_player))
{	
	if (keyboard_check(ord("E")))
	{
		instance_destroy();
		obj_gamemanager.Coins += 1;
	}
}