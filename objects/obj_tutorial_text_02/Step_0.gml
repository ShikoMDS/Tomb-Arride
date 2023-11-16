

if (text_num == 0) text = "If you touch a mummy, you will lose health";
if (text_num == 1) text = "Press LEFT MOUSE to shoot towards the cursor";
if (text_num == 2) text = "Shooting a mummy will temporarily stun it";
if (text_num == 3) text = "The 3 white dots above the player represent your shots";
if (text_num == 4) text = "If you run out of shots you will have to wait for more";

if (text_num == 5)
{
	text = "Try Shooting the mummy in the next room";
	
	with (obj_tutorial_wall_02)
	{
		image_speed = 1;
	}
}

if (text_num == 6) text = "If a mummy can't see you it will stop chasing you";
if (text_num == 7) text = "Stand on the teleporter to proceed";
if (text_num == 8) text = "Teleporters work both ways";
if (text_num == 9) text = "In each level there are coins some may be hidden";
if (text_num == 10) text = "You should aim to collect all coins in each level";

if (text_num == 11)
{
	text = "Try finding all the coins in the next room!";
	
	with (obj_tutorial_wall_03)
	{
		image_speed = 1;
	}
	
}

if (text_num == 12) text = "The exit will open when you have all the coins";

if (!instance_exists(obj_coin))
{
	with (obj_tutorial_wall_04)
	{
		image_speed = 1;
	}
}