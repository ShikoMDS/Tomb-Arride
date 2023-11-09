
//Reset coins and completed goals at the start of each level
coins = 0;
goals_completed = 0;

if (room == rm_menu)
{
	if (!audio_is_playing(snd_menu_music))
	{
		audio_stop_all();
		audio_play_sound(snd_menu_music, 1, true, 0.9);
	}
}

if (room == rm_level_select || room == rm_tutorial_1)
{
	if (audio_is_playing(snd_menu_music))
	{
		audio_stop_sound(snd_menu_music);
	}
	
	if (!audio_is_playing(snd_background_music))
	{
		audio_play_sound(snd_background_music, 1, true);
	}
}