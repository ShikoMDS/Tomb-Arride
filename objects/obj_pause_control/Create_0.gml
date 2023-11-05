

//Pause menu button parameters

//Width and height of spr_menu_button
//width = 116;
//height = 28;

x_scale = 1;
y_scale = 1;

text_x_scale = 0.4;
text_y_scale = 0.4;

button_width = sprite_width * x_scale;
button_height = sprite_height * y_scale;

button_x = display_get_gui_width() / 2;

//Button y math
//
// height of each button -> 28 * y_scale = 56
//
//  button_gap = 20
//
// button_y_02 = button_y_01 + (button_gap + (button_height/2))
// lots of stupid math blah blah blah
// im going to just work it out and set the correct values
// for the buttons below i cant be bothered commenting

x = display_get_gui_width() / 2;
y = 400;

button_gap = 50;

resume_button_y = y;
restart_button_y = y + (button_gap + button_height);
menu_button_y = restart_button_y + (button_gap + button_height);