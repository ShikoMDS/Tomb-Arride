// restart room
if (keyboard_check(ord("R")))
{
	room_restart();
}

if (instance_number(obj_goal) == completedGoals)
{
	//room_goto_next()
	instance_destroy(obj_wall_broken);
}
