if (keyboard_check_pressed(ord("O")))
{
	global.completed_levels = 0;
	if (file_exists("User.sav")) file_delete("User.sav");
	ini_open("User.sav");
	ini_write_real("Save1", "levels", global.completed_levels);
	ini_close();
}