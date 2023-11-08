
obj_gamemanager.coins++;
audio_play_sound(snd_coin_pickup, 1, false, 1, 0, random_range(0.75, 1.25));
instance_destroy();