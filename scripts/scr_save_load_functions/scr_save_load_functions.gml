
function save_level_data(_level_data)
{
	//if a save already exists deletes it and creates a new one to write too
	if (file_exists("User.sav")) file_delete("User.sav");
	ini_open("User.sav");
	
	//Saves the state of each level to the save file
	ini_write_real("Level_01", "Complete",				_level_data.level_01.complete);
	ini_write_real("Level_01", "No Damage Taken",		_level_data.level_01.damage);
	ini_write_real("Level_01", "All Coins Collected",	_level_data.level_01.coins);
	
	ini_write_real("Level_02", "Complete",				_level_data.level_02.complete);
	ini_write_real("Level_02", "No Damage Taken",		_level_data.level_02.damage);
	ini_write_real("Level_02", "All Coins Collected",	_level_data.level_02.coins);
	
	ini_write_real("Level_03", "Complete",				_level_data.level_03.complete);
	ini_write_real("Level_03", "No Damage Taken",		_level_data.level_03.damage);
	ini_write_real("Level_03", "All Coins Collected",	_level_data.level_03.coins);
	
	ini_write_real("Level_04", "Complete",				_level_data.level_04.complete);
	ini_write_real("Level_04", "No Damage Taken",		_level_data.level_04.damage);
	ini_write_real("Level_04", "All Coins Collected",	_level_data.level_04.coins);
	
	ini_write_real("Level_05", "Complete",				_level_data.level_05.complete);
	ini_write_real("Level_05", "No Damage Taken",		_level_data.level_05.damage);
	ini_write_real("Level_05", "All Coins Collected",	_level_data.level_05.coins);
	
	ini_write_real("Level_06", "Complete",				_level_data.level_06.complete);
	ini_write_real("Level_06", "No Damage Taken",		_level_data.level_06.damage);
	ini_write_real("Level_06", "All Coins Collected",	_level_data.level_06.coins);
	
	ini_write_real("Level_07", "Complete",				_level_data.level_07.complete);
	ini_write_real("Level_07", "No Damage Taken",		_level_data.level_07.damage);
	ini_write_real("Level_07", "All Coins Collected",	_level_data.level_07.coins);
	
	ini_write_real("Level_08", "Complete",				_level_data.level_08.complete);
	ini_write_real("Level_08", "No Damage Taken",		_level_data.level_08.damage);
	ini_write_real("Level_08", "All Coins Collected",	_level_data.level_08.coins);
	
	ini_write_real("Level_09", "Complete",				_level_data.level_09.complete);
	ini_write_real("Level_09", "No Damage Taken",		_level_data.level_09.damage);
	ini_write_real("Level_09", "All Coins Collected",	_level_data.level_09.coins);
	
	ini_write_real("Level_10", "Complete",				_level_data.level_10.complete);
	ini_write_real("Level_10", "No Damage Taken",		_level_data.level_10.damage);
	ini_write_real("Level_10", "All Coins Collected",	_level_data.level_10.coins);
	
	ini_close();
}


function load_level_data(_level_data)
{
	if (file_exists("User.sav"))
	{
		ini_open("User.sav");
		
		//Reads save file and sets each level status to the variable
		_level_data.level_01.complete = ini_read_real("Level_01", "Complete", 0);
		_level_data.level_01.damage = ini_read_real("Level_01", "No Damage Taken", 0);
		_level_data.level_01.coins = ini_read_real("Level_01", "All Coins Collected", 0);
		
		_level_data.level_02.complete = ini_read_real("Level_02", "Complete", 0);
		_level_data.level_02.damage = ini_read_real("Level_02", "No Damage Taken", 0);
		_level_data.level_02.coins = ini_read_real("Level_02", "All Coins Collected", 0);
		
		_level_data.level_03.complete = ini_read_real("Level_03", "Complete", 0);
		_level_data.level_03.damage = ini_read_real("Level_03", "No Damage Taken", 0);
		_level_data.level_03.coins = ini_read_real("Level_03", "All Coins Collected", 0);
		
		_level_data.level_04.complete = ini_read_real("Level_04", "Complete", 0);
		_level_data.level_04.damage = ini_read_real("Level_04", "No Damage Taken", 0);
		_level_data.level_04.coins = ini_read_real("Level_04", "All Coins Collected", 0);
		
		_level_data.level_05.complete = ini_read_real("Level_05", "Complete", 0);
		_level_data.level_05.damage = ini_read_real("Level_05", "No Damage Taken", 0);
		_level_data.level_05.coins = ini_read_real("Level_05", "All Coins Collected", 0);
		
		_level_data.level_06.complete = ini_read_real("Level_06", "Complete", 0);
		_level_data.level_06.damage = ini_read_real("Level_06", "No Damage Taken", 0);
		_level_data.level_06.coins = ini_read_real("Level_06", "All Coins Collected", 0);
		
		_level_data.level_07.complete = ini_read_real("Level_07", "Complete", 0);
		_level_data.level_07.damage = ini_read_real("Level_07", "No Damage Taken", 0);
		_level_data.level_07.coins = ini_read_real("Level_07", "All Coins Collected", 0);
		
		_level_data.level_08.complete = ini_read_real("Level_08", "Complete", 0);
		_level_data.level_08.damage = ini_read_real("Level_08", "No Damage Taken", 0);
		_level_data.level_08.coins = ini_read_real("Level_08", "All Coins Collected", 0);
		
		_level_data.level_09.complete = ini_read_real("Level_09", "Complete", 0);
		_level_data.level_09.damage = ini_read_real("Level_09", "No Damage Taken", 0);
		_level_data.level_09.coins = ini_read_real("Level_09", "All Coins Collected", 0);
		
		_level_data.level_10.complete = ini_read_real("Level_10", "Complete", 0);
		_level_data.level_10.damage = ini_read_real("Level_10", "No Damage Taken", 0);
		_level_data.level_10.coins = ini_read_real("Level_10", "All Coins Collected", 0);
		
		ini_close();
	}
}


function clear_level_data(_level_data)
{
	if (file_exists("User.sav")) file_delete("User.sav")
		ini_open("User.sav");
		
		//Resets all level data to default
		ini_write_real("Level_01", "Complete",				false);
		ini_write_real("Level_01", "No Damage Taken",		false);
		ini_write_real("Level_01", "All Coins Collected",	false);
		
		ini_write_real("Level_02", "Complete",				false);
		ini_write_real("Level_02", "No Damage Taken",		false);
		ini_write_real("Level_02", "All Coins Collected",	false);
		
		ini_write_real("Level_03", "Complete",				false);
		ini_write_real("Level_03", "No Damage Taken",		false);
		ini_write_real("Level_03", "All Coins Collected",	false);
		
		ini_write_real("Level_04", "Complete",				false);
		ini_write_real("Level_04", "No Damage Taken",		false);
		ini_write_real("Level_04", "All Coins Collected",	false);
		
		ini_write_real("Level_05", "Complete",				false);
		ini_write_real("Level_05", "No Damage Taken",		false);
		ini_write_real("Level_05", "All Coins Collected",	false);
		
		ini_write_real("Level_06", "Complete",				false);
		ini_write_real("Level_06", "No Damage Taken",		false);
		ini_write_real("Level_06", "All Coins Collected",	false);
		
		ini_write_real("Level_07", "Complete",				false);
		ini_write_real("Level_07", "No Damage Taken",		false);
		ini_write_real("Level_07", "All Coins Collected",	false);
		
		ini_write_real("Level_08", "Complete",				false);
		ini_write_real("Level_08", "No Damage Taken",		false);
		ini_write_real("Level_08", "All Coins Collected",	false);
		
		ini_write_real("Level_09", "Complete",				false);
		ini_write_real("Level_09", "No Damage Taken",		false);
		ini_write_real("Level_09", "All Coins Collected",	false);
		
		ini_write_real("Level_10", "Complete",				false);
		ini_write_real("Level_10", "No Damage Taken",		false);
		ini_write_real("Level_10", "All Coins Collected",	false);
		
		ini_close();
		
		//Resets the level data variable to default
		_level_data.level_01.complete	= false;
		_level_data.level_01.damage		= false;
		_level_data.level_01.coins		= false;
		
		_level_data.level_02.complete	= false;
		_level_data.level_02.damage		= false;
		_level_data.level_02.coins		= false;
		
		_level_data.level_03.complete	= false;
		_level_data.level_03.damage		= false;
		_level_data.level_03.coins		= false;
		
		_level_data.level_04.complete	= false;
		_level_data.level_04.damage		= false;
		_level_data.level_04.coins		= false;
		
		_level_data.level_05.complete	= false;
		_level_data.level_05.damage		= false;
		_level_data.level_05.coins		= false;
		
		_level_data.level_06.complete	= false;
		_level_data.level_06.damage		= false;
		_level_data.level_06.coins		= false;
		
		_level_data.level_07.complete	= false;
		_level_data.level_07.damage		= false;
		_level_data.level_07.coins		= false;
		
		_level_data.level_08.complete	= false;
		_level_data.level_08.damage		= false;
		_level_data.level_08.coins		= false;
		
		_level_data.level_09.complete	= false;
		_level_data.level_09.damage		= false;
		_level_data.level_09.coins		= false;
		
		_level_data.level_10.complete	= false;
		_level_data.level_10.damage		= false;
		_level_data.level_10.coins		= false;
}