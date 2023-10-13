key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));


if (key_right)
{
	direction = 0;
}
if (key_left)
{
	direction = 180;
}
if (key_up)
{
	direction = 90;
}
if (key_down)
{
	direction = 270;
}

//If not moving horizontally...
if (key_right - key_left == 0)
{
    currentXSpeed *= deccel; //Decelerate
}
else
{
    //Otherwise, add some acceleration in the horizontal direction we are moving
    currentXSpeed += (key_right - key_left) * accel;
}

//If not moving vertically...
if (key_down - key_up == 0)
{
    currentYSpeed *= deccel; //Decelerate
}
else
{
    //Otherwise, add some acceleration in the vertical direction we are moving
    currentYSpeed += (key_down - key_up) * accel;
}

if (abs(currentXSpeed) > maxSpeed)
{
    //If horizontal speed is higher than max speed, cap it at the max.
    currentXSpeed = maxSpeed * sign(currentXSpeed);    
}

if (abs(currentYSpeed) > maxSpeed)
{
    //If vertical speed is higher than max speed, cap it at the max.
    currentYSpeed = maxSpeed * sign(currentYSpeed);    
}

//If moving left, flip the image xscale
if (currentXSpeed < 0)
{
    image_xscale = -1;   
}

//If moving right, reset the image xscale
if (currentXSpeed > 0)
{
    image_xscale = 1;
}


if (!place_meeting(x + currentXSpeed, y, obj_wall))
{
    x += currentXSpeed;
}

if (!place_meeting(x, y + currentYSpeed, obj_wall))
{
    y += currentYSpeed;
}



// Camera follow
cameraX = x - camera_get_view_width(view_camera[0]) / 2;

cameraY = y - camera_get_view_height(view_camera[0]) / 2;


cameraX = clamp( cameraX, 0, room_width - camera_get_view_width(view_camera[0]));

cameraY = clamp( cameraY, 0, room_height - camera_get_view_height(view_camera[0]));


camera_set_view_pos(view_camera[0],cameraX,cameraY);


if (mouse_check_button(mb_left) && bCanShoot == true)
{
	with instance_create_layer(x,y,0,obj_bullet)
	{
		speed = 25;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
	}
	
		bCanShoot = false;
		alarm[0] = 20;
	
}




