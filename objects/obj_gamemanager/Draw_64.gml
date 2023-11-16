if (!game_paused)
{
	if (room != rm_menu && room != rm_controls && room != rm_credits && room != rm_level_select)
	{
		draw_coin_score();
		
		if (room != rm_tutorial_1 && room != rm_tutorial_2)
		{
			var _x = display_get_gui_width() - 32;
			var _scale = 4;
			
			var _coin_02 = 1;
			var _coin_03 = 0;
			
			if (instance_exists(obj_player))
			{
				if (obj_player.hp == obj_player.max_hp)
				{
					_coin_02 = 1;
				}
				else
				{
					_coin_02 = 0;
				}
			}
			
			if (instance_exists(obj_coin))
			{
				_coin_03 = 0;
			}
			else
			{
				_coin_03 = 1;
			}
			
			draw_sprite_ext(spr_level_star, 1, _x, 64, _scale, _scale, 0, c_white, 1);
			draw_sprite_ext(spr_level_star, _coin_02, _x, 128, _scale, _scale, 0, c_white, 1);
			draw_sprite_ext(spr_level_star, _coin_03, _x, 192, _scale, _scale, 0, c_white, 1);
		}
	}
}