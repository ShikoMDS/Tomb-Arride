global.completed_levels = 0;

if (file_exists("User.sav"))
{
	ini_open("User.sav");
	global.completed_levels = ini_read_real("Save1", "levels", 0);
	ini_close();
}
else
{
	// do nothing	
}

function addLevelCompleted()
{
	global.completed_levels += (1/90);
	if (file_exists("User.sav")) file_delete("User.sav");
	ini_open("User.sav");
	ini_write_real("Save1", "levels", global.completed_levels);
	ini_close();
}