if (!GamePaused)
{
	drawCoinsScore();
}

if (GamePaused)
{
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_height(), display_get_width(), false);
	draw_set_alpha(1);
	
	drawCoinsScore();
	
	draw_text(10, display_get_gui_height() - 64, "Press ESC to exit to menu")
	
	setTitleText();
	
	// Calculate the x position for center alignment
    var textx = display_get_gui_width() / 2 - string_width("Paused") / 2;

    // Calculate the y position for center alignment in the top half of the room
    var texty = display_get_gui_height() / 4 - string_height("Paused") / 2;

    // Draw the text with center alignment
    draw_text(textx, texty, "Paused");
	
	
	if (keyboard_check_pressed(vk_escape))
	{
		room_goto(rm_menu);
	}
	
}