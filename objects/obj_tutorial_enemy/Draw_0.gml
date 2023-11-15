
draw_self();

var _x = x + (4 * image_xscale);

if (!shot && !dying)
{
	if (player_seen) draw_sprite(spr_exclamation_mark, 0, _x, y - 12);
	else draw_sprite(spr_question_mark, 0, _x, y - 12);
}