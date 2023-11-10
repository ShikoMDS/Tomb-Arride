coins = 0;
goals_completed = 0;
global.volume_percent = 25.0;

//Holds level completion data
global.level_data = {
	level_01: {complete: false, damage: false, coins: false},
	level_02: {complete: false, damage: false, coins: false},
	level_03: {complete: false, damage: false, coins: false},
	level_04: {complete: false, damage: false, coins: false},
	level_05: {complete: false, damage: false, coins: false},
	level_06: {complete: false, damage: false, coins: false},
	level_07: {complete: false, damage: false, coins: false},
	level_08: {complete: false, damage: false, coins: false},
	level_09: {complete: false, damage: false, coins: false},
	level_10: {complete: false, damage: false, coins: false},
};

load_level_data(global.level_data);

//Sets custom cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

#region//Global Variables


// Font creation
globalvar fnt_menu_title;
fnt_menu_title = font_add("Pixeled.ttf", 32, false, false, 32, 128); // Create a font variable

globalvar fnt_menu_button;
fnt_menu_button = font_add("Pixeled.ttf", 16, false, false, 32, 128);


// Colour
globalvar col_gold;
col_gold = make_color_rgb(255, 215, 0); // Create a colour variable for custom colours

globalvar game_paused;
game_paused = false;

globalvar tutorial_number;
tutorial_number = 1;


#endregion

function draw_coin_score()
{
	draw_set_color(c_white);
	draw_set_font(fnt_menu_button);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text(80, 10, coins);

	draw_sprite_ext(spr_coin, 0, 25, 25, 4, 4, 0, c_white, 1);
}


