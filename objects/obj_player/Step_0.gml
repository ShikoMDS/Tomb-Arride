#region//Player Movement

if (!GamePaused)
{
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

	x += _h_spd;

	if (place_meeting(x, y + _v_spd, obj_collision_parent))
	{
	    while (!place_meeting(x, y + sign(_v_spd), obj_collision_parent))
	        y += sign(_v_spd);
	        _v_spd = 0;
	}

	y += _v_spd;
}

#endregion

#region//Sprite Control

if (!GamePaused)
{
	if (_left)
	{
		image_xscale = -1;
	}

	if (_right)
	{
		image_xscale = 1;
	}
}

#endregion
if (!GamePaused)
{
	if (mouse_check_button(mb_left) && bCanShoot)
	{
	    //with instance_create_layer(x,y,layer,obj_bullet)
	    //{
	    //    speed = 10;
	    //    direction = point_direction(x,y,mouse_x,mouse_y);
	    //    image_angle = direction;
	    //}    
	
		instance_create_layer(x, y, "Instances", obj_bullet);
	
	
    
		bCanShoot = false;
	    alarm[0] = 5; // Was 20
	}
}

global.teleporting = false;