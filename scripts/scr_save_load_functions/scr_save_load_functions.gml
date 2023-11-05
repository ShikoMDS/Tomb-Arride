
function save_level_data(_level_data)
{
	//if a save already exists deletes it and creates a new one to write too
	if (file_exists("User.sav")) file_delete("User.sav");
	ini_open("User.sav");
	
	//Saves the state of each level to the save file
	ini_write_real("Save", "level_01", _level_data.level_01);
	ini_write_real("Save", "level_02", _level_data.level_02);
	ini_write_real("Save", "level_03", _level_data.level_03);
	ini_write_real("Save", "level_04", _level_data.level_04);
	ini_write_real("Save", "level_05", _level_data.level_05);
	
	ini_close();
}


function load_level_data(_level_data)
{
	if (file_exists("User.sav"))
	{
		ini_open("User.sav");
		
		//Reads save file and sets each level status to the variable
		_level_data.level_01 = ini_read_real("Save", "level_01", 0);
		
		ini_close();
	}
}


function clear_level_data(_level_data)
{
	if (file_exists("User.sav")) file_delete("User.sav")
		ini_open("User.sav");
		
		//Resets all level data to default
		ini_write_real("Save", "level_01", false);
		ini_write_real("Save", "level_02", false);
		ini_write_real("Save", "level_03", false);
		ini_write_real("Save", "level_04", false);
		ini_write_real("Save", "level_05", false);
		
		ini_close();
		
		//Resets the level data variable to default
		_level_data.level_01 = false;
		_level_data.level_02 = false;
		_level_data.level_03 = false;
		_level_data.level_04 = false;
		_level_data.level_05 = false;
}