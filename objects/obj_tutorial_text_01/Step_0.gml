

if (text_num == 0) text = "Hello and welcome to Tomb Arride";
if (text_num == 1) text = "Your objective is to push boxes into slots";
if (text_num == 2) text = "Once all slots have a box in them the exit will unlock";
if (text_num == 3) text = "Use WASD to move";

if (text_num == 4)
{
	text = "Make your way through the gap";
	
	with (obj_tutorial_wall_01)
	{
		image_speed = 1;
	}
}

if (text_num == 5) text = "Slots are also tied to broken walls";
if (text_num == 6) text = "Once a box is in a slot the respective walls will break";
if (text_num == 6) text = "While next to a box press SPACE to push it";
if (text_num == 8) text = "Try pushing this box into the slot";
if (text_num == 9) text = "Stand on the exit to proceed to the next level!";