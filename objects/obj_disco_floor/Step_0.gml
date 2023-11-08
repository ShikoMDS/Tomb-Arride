
if (!game_paused)
{
	if (hue < 255)
	{
		hue++;
	}
	else
	{
		hue = 0;
	}
}

colour = make_color_hsv(hue, 255, 255);