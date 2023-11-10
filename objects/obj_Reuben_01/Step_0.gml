if (!game_paused)
{
	if (time < irandom_range(180, 240))
	{
		time++;
	}
	else
	{
		time = 0;
		image_xscale *= -1;
	}
}