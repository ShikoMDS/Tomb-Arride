/// @description Teleports the player

if (place_meeting(x, y, obj_player))
{
	obj_player.x = teleporter.x;
	obj_player.y = teleporter.y;
	
	audio_play_sound(snd_player_teleport, 1, 0);
	
	teleporting = true;
}