


if(place_meeting(x, y, obj_player))
{
	if (audio_is_playing(snd_background_music)) 
	{
		audio_sound_gain(snd_background_music, 0, 300);
	}
	
	if (!audio_is_playing(snd_ayoub_dev_room))
	{
		audio_play_sound(snd_ayoub_dev_room, 1, true);
		audio_sound_gain(snd_ayoub_dev_room, 0.1, 300);
		
	}
	else
	{
		audio_sound_gain(snd_ayoub_dev_room, 0.1, 300);
	}
}
else
{
	audio_sound_gain(snd_ayoub_dev_room, 0, 300);
	audio_sound_gain(snd_background_music, 1, 300);
}
