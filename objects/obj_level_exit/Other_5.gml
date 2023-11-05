

if (room == rm_level_one)
{
	//Sets level data for level 1 to true "completed"
	obj_gamemanager.level_data.level_01 = true;
}

if (room == rm_level_two)
{
	//Sets level data for level 2 to true "completed"
	obj_gamemanager.level_data.level_02 = true;
}

if (room == rm_level_three)
{
	//Sets level data for level 3 to true "completed"
	obj_gamemanager.level_data.level_03 = true;
}

if (room == rm_level_four)
{
	//Sets level data for level 4 to true "completed"
	obj_gamemanager.level_data.level_04 = true;
}

//No level 5 yet

/*
if (room == rm_level_five)
{
	//Sets level data for level 5 to true "completed"
	obj_gamemanager.level_data.level_05 = true;
}
*/

//Saves any changes to values to save file
save_level_data(obj_gamemanager.level_data);