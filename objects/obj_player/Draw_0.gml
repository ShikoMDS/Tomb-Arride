

draw_self();

draw_sprite_ext(spr_bullet_indicator, ammo, x, y - 8, 1, 1, 0, c_white, 1);

if (place_meeting(x, y, obj_teleport_parent))
{
	draw_sprite(spr_teleport_animation, anim_index, x, y);
}