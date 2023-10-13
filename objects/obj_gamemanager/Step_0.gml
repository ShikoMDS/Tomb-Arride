if (instance_exists((obj_player)))
{
	if (obj_box1.x == obj_goal1.x && obj_box1.y = obj_goal1.y)
	{
		obj_player.bGoal1 = true;
	}
	
	else
	{
		obj_player.bGoal1 = false;
	}

	if (obj_box2.x == obj_goal2.x && obj_box2.y = obj_goal2.y)
	{
		obj_player.bGoal2 = true;
	}
	
	else
	{
		obj_player.bGoal2 = false;
	}

	if (obj_player.bGoal1 == true && obj_player.bGoal2 == true)
	{
		instance_destroy(obj_player)
	}
}

if (keyboard_check(ord("R")))
{
	room_restart();
}
