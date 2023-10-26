/// @description Insert description here
// You can write your code in this editor

// Font creation
FontMenuTitle = font_add("Pixeled.ttf", 32, false, false, 32, 128); // Create a font variable
draw_set_font(FontMenuTitle); // Set default font

globalvar FontMenuButtons;
FontMenuButtons = font_add("Pixeled.ttf", 16, false, false, 32, 128);


// Colour
col_Gold = make_color_rgb(255, 215, 0); // Create a colour variable for custom colours
draw_set_color(col_Gold); // Set default text colour


// Fullscreen functionality creation
globalvar FullScreen;
FullScreen = true;



