if (!game_paused)
{

	//Player Movement
	var _up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
	var _left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
	var _down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
	var _right = (keyboard_check(ord("D")) || keyboard_check(vk_right));

	var _horizontal = (_right - _left); // -1 0 1
	var _vertical = (_down - _up); // -1 0 1

	var _h_spd = _horizontal * move_spd;
	var _v_spd = _vertical * move_spd;


	if (place_meeting(x + _h_spd, y, obj_collision_parent))
	{
	    while (!place_meeting(x + sign(_h_spd), y, obj_collision_parent))
	        x += sign(_h_spd);
	        _h_spd = 0;
	}

	if (!frozen) x += _h_spd;

	if (place_meeting(x, y + _v_spd, obj_collision_parent))
	{
	    while (!place_meeting(x, y + sign(_v_spd), obj_collision_parent))
	        y += sign(_v_spd);
	        _v_spd = 0;
	}

	if (!frozen) y += _v_spd;
	
	//Sprite Control
	if (_left)
	{
		image_xscale = -1;
	}

	if (_right)
	{
		image_xscale = 1;
	}
	
	if (sprite_index != spr_player_death)
	{
		if (_up || _left || _down || _right)
		{
			image_speed = 4;
		
			if (!audio_is_playing(snd_player_walk))
			{
				audio_play_sound(snd_player_walk, 1, true);
			}
		}
		else
		{
			image_speed = 0;
		
			audio_stop_sound(snd_player_walk);
		}
	}
	else
	{
		image_speed = 1;
	}

	if (mouse_check_button(mb_left) && b_can_shoot && ammo > 0)
	{
		instance_create_layer(x, y + 3, "Instances", obj_bullet);
	
		audio_play_sound(snd_shoot, 1, false, 1, 0, random_range(0.75, 1.25));
    
		ammo--;
	
		b_can_shoot = false;
	    alarm[0] = 15;
	}
	
	if (ammo < ammo_max)
	{
		if (ammo_regen < ammo_regen_time)
		{
			ammo_regen++;
		}
		else
		{
			ammo++;
			ammo_regen = 0;
		}
	}
	
	if (place_meeting(x, y, obj_teleport_parent))
	{
		anim_index += 0.15;
	}
	else
	{
		anim_index = 0;
	}
	
	if (hp <= 0)
	{
		frozen = true;
		
		sprite_index = spr_player_death;
		
		if (!audio_is_playing(snd_squish))
		{
			audio_play_sound(snd_squish, 1, false, 1, 0, random_range(0.75, 1.25));
		}
		
		if (sprite_index == spr_player_death)
		{
			if (image_index > 9)
			{
				room_restart();
			}
		}
	}
}

if (game_paused)
{
	image_speed = 0;
	audio_stop_sound(snd_player_walk);
	audio_stop_sound(snd_box_push);
	audio_stop_sound(snd_coin_pickup);
	audio_stop_sound(snd_mummy_hit);
	audio_stop_sound(snd_player_hit);
	audio_stop_sound(snd_player_teleport);
	audio_stop_sound(snd_shoot);
	audio_stop_sound(snd_squish);
}

if (hp == 5) // 1,2 frames
{
	image_index = (max(0, image_index % 2));
}
if (hp == 4) // 5,6 frames
{
	image_index = (max(4, image_index % 6));
}
if (hp == 3) // 9,10 frames
{
	image_index = (max(8, image_index % 10));
}
if (hp == 2) // 13,14 frames
{
	image_index = (max(12, image_index % 14));
}
if (hp == 1) // 17,18 frames
{
	image_index = (max(16, image_index % 18));
}