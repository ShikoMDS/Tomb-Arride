

if (place_meeting(x, y, obj_player))
{
	obj_player.x = obj_teleport_b2.x;
	obj_player.y = obj_teleport_b2.y;
	
	audio_play_sound(snd_player_teleport, 1, 0);
}