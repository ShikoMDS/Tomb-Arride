if (spr_mummy_death)
{
	instance_destroy()
	if (!audio_is_playing(snd_squish))
	{
		audio_play_sound(snd_squish, 1, false, 1, 0, random_range(0.75, 1.25));
	}
}


