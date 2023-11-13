
if (obj_player.x == x && obj_player.y == y)
{
	if (room == rm_level_one)
	{
		//Sets level data for level 1 to true "completed"
		global.level_data.level_01.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_01.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_01.coins = true;
	}

	if (room == rm_level_two)
	{
		//Sets level data for level 2 to true "completed"
		global.level_data.level_02.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_02.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_02.coins = true;
	}

	if (room == rm_level_three)
	{
		//Sets level data for level 3 to true "completed"
		global.level_data.level_03.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_03.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_03.coins = true;
	}

	if (room == rm_level_four)
	{
		//Sets level data for level 4 to true "completed"
		global.level_data.level_04.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_04.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_04.coins = true;
	}

	if (room == rm_level_five)
	{
		//Sets level data for level 5 to true "completed"
		global.level_data.level_05.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_05.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_05.coins = true;
	}

	if (room == rm_level_six)
	{
		//Sets level data for level 6 to true "completed"
		global.level_data.level_06.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_06.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_06.coins = true;
	}

	if (room == rm_level_seven)
	{
		//Sets level data for level 7 to true "completed"
		global.level_data.level_07.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_07.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_07.coins = true;
	}
	
	if (room == rm_level_eight)
	{
		//Sets level data for level 8 to true "completed"
		global.level_data.level_08.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_08.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_08.coins = true;
	}
	
	if (room == rm_level_nine)
	{
		//Sets level data for level 9 to true "completed"
		global.level_data.level_09.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_09.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_09.coins = true;
	}
	
	if (room == rm_level_ten)
	{
		//Sets level data for level 10 to true "completed"
		global.level_data.level_10.complete = true;
		if (obj_player.hp == obj_player.max_hp) global.level_data.level_10.damage = true;
		if (!instance_exists(obj_coin))			global.level_data.level_10.coins = true;
	}

	//Saves any changes to values to save file
	save_level_data(global.level_data);
}