
globalvar GamePaused;
GamePaused = false;

Coins = 0;
GoalsCompleted = 0;

function drawCoinsScore()
{
	draw_set_color(c_white);
	draw_set_font(FontMenuButtons);
	draw_text(80, 10, Coins);

	draw_sprite_ext(spr_coin, 0, 10, 10, 4, 4, 0, c_white, 1);
}

function setTitleText()
{
	draw_set_color(ColGold);
	draw_set_font(FontMenuTitle);
}