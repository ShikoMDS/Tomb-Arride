player_x = obj_player.x;
player_y = obj_player.y;

if (shake) 
{ 
	camera_set_view_target(view_camera[0], noone);
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude);
   
   camera_set_view_pos(view_camera[0], player_x - _xval - (display_get_gui_width()/9), player_y - _yval - (display_get_gui_height()/9)); 
	//camera_set_view_pos(view_camera[0], player_x + _xval - (display_get_gui_width()/11), player_y + _yval - (display_get_gui_height()/11)); 
	

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
		  camera_set_view_target(view_camera[0], obj_player);
         shake = false; 
      } 
   } 
}

