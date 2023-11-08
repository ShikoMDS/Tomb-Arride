if (distance_to_object(obj_player) < 128)
{
	if (audio_is_playing(snd_background_music)) audio_stop_sound(snd_background_music);
	
	if (!audio_is_playing(snd_dance_music))
	{
		audio_play_sound(snd_dance_music, 1, true);
	}
}
else
{
	audio_stop_sound(snd_dance_music);
}