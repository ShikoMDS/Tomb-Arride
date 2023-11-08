if (!game_paused)
{
	if (room != rm_menu && room != rm_controls && room != rm_credits)
	{
		draw_coin_score();
		
		if (instance_exists(obj_player))
		{
			var _hp_index = (obj_player.max_hp - obj_player.hp) * 2;
			
			var _width = display_get_gui_width();
			
			var _height = display_get_gui_height();
			
			var _scale = 4;
			
			draw_sprite_ext(spr_player_health, _hp_index, _width - 50,50, _scale, _scale, 0, c_white, 1);
		}
	}
}