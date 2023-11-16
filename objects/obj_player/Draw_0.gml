

draw_self();

draw_sprite_ext(spr_bullet_indicator, ammo, x, y - 8, 1, 1, 0, c_white, 1);

if (place_meeting(x, y, obj_teleport_parent))
{
	draw_sprite(spr_teleport_animation, anim_index, x, y);
}


if (!game_paused)
{
	if (instance_exists(obj_tutorial_text_parent))
	{
		var _text = instance_nearest(x, y, obj_tutorial_text_parent).text;
	
		var _scale = 0.5;
	
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		
		draw_set_color(c_yellow);
		draw_set_font(fnt_mulish);
	
		draw_text_transformed(x, y - 20, _text, _scale, _scale, 0);
	}
}