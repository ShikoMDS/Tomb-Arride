if (!GamePaused)
{
	if (room != rm_menu && room != rm_controls && room != rm_credits)
	{
		draw_coin_score();
	}
}