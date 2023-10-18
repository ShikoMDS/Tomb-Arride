//if (x > other.x && (bbox_top > other.bbox_top) && (bbox_bottom < other.bbox_bottom))
//{
//	if (place_free(other.x - other.sprite_width, other.y))
//	other.direction = 0
//	other.speed = -64
//}

//if (x < other.x && (bbox_top > other.bbox_top) && (bbox_bottom < other.bbox_bottom))
//{
//	other.direction = 0
//	if (place_free(other.x + other.sprite_width, other.y))
//	other.speed = 64
//}

//if (y > other.y && (bbox_left > other.bbox_left) && (bbox_right < other.bbox_right))
//{
//	other.direction = 90
//	if (place_free(other.x, other.y - other.sprite_height))
//	other.speed = 64
//}

//if (y < other.y && (bbox_left > other.bbox_left) && (bbox_right < other.bbox_right))
//{
//	other.direction = 90
//	if (place_free(other.x, other.y + other.sprite_height))
//	other.speed = -64
//}


/////////////////////////////////////////////////////////////////////////////////


if (x > other.x + other.sprite_width / 2 - 1)
{
	if (keyboard_check_pressed(vk_space))
	{
		other.direction = 0
		if (place_free(other.x - other.sprite_width, other.y))
		{
			other.speed = -64
		}
	}
}

if (x < other.x - other.sprite_width / 2 + 1)
{
	if (keyboard_check_pressed(vk_space))
	{
		other.direction = 0
		if (place_free(other.x + other.sprite_width, other.y))
		{
			other.speed = 64
		}
	}
}

if (y > other.y + other.sprite_height / 2 - 1)
{
	if (keyboard_check_pressed(vk_space))
	{	
		other.direction = 0;
		if (place_free(other.x, other.y - other.sprite_height))
		{
			other.speed = 64;
		}
	}
}

if (y < other.y - other.sprite_height / 2 + 1)
{
	if (keyboard_check_pressed(vk_space))
	{
		other.direction = 90
		if (place_free(other.x, other.y + other.sprite_height))
		{
			other.speed = -64	
		}
	}
}

