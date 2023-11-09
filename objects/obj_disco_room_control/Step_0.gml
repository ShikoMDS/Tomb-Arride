


if(obj_player.x >= 704)
{
	if (audio_is_playing(snd_background_music)) 
	{
		audio_sound_gain(snd_background_music, 0, 1);
	}
	
	if (!audio_is_playing(snd_dance_music))
	{
		audio_play_sound(snd_dance_music, 1, true);
	}
}
else
{
	audio_stop_sound(snd_dance_music);
	audio_sound_gain(snd_background_music, 1, 1);
}
