if (boxLocked == false)
{
	if (up == false && down == false && left == false && right == false)
	{
		if place_meeting(x + 10, y, obj_player)
		{
			if (keyboard_check_pressed(vk_space))
			{
				if !place_meeting(x - 10, y, obj_wall)
				{
					left = true;
					currentX = x;
					currentY = y;
				}
			}    
		}
		if place_meeting(x - 10, y, obj_player)
		{
		    if (keyboard_check_pressed(vk_space))
		    {
				if !place_meeting(x + 10, y, obj_wall)
				{
					right = true;
					currentX = x;
					currentY = y;
				}
		    }
		}
		if place_meeting(x, y + 10, obj_player)
		{
		    if (keyboard_check_pressed(vk_space))
		    {
				if !place_meeting(x, y - 10, obj_wall)
				{
					up = true;
					currentX = x;
					currentY = y;
				}
		    }
		}
		if place_meeting(x, y - 10, obj_player)
		{
		    if (keyboard_check_pressed(vk_space))
		    {
				if !place_meeting(x, y + 10, obj_wall)
				{
					down = true;
					currentX = x;
					currentY = y;
				}
		    }
		}
	}
}

if (up == true)
{
	move_towards_point(currentX, currentY - 16, 2)
	if (x == currentX && y == (currentY - 16))
	{
		speed = 0;
		up = false;
	}
}
	
if (down == true)
{
	move_towards_point(currentX, currentY + 16, 2)
	if (x == currentX && y == (currentY + 16))
	{
		speed = 0;
		down = false;
	}
}
	
if (left == true)
{
	move_towards_point(currentX - 16, currentY, 2)
	if (x == (currentX - 16) && y == currentY)
	{
		speed = 0;
		left = false;
	}
}
	
if (right == true)
{
	move_towards_point(currentX + 16, currentY, 2)
	if (x == (currentX + 16) && y == currentY)
	{
		speed = 0;
		right = false;
	}
}

if (place_meeting(x, y, obj_goal))
{
	boxLocked = true;
}