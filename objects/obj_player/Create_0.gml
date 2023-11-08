b_can_shoot = true;

max_hp = 5;

hp = max_hp;

invincible = false;

invincibility_time = 60;

frozen = false;

move_spd = 2;

depth = -12;


var _cam_width = (camera_get_view_width(view_camera[0]) / 2);
var _cam_height = (camera_get_view_height(view_camera[0]) / 2);

camera_set_view_pos(view_camera[0], (obj_player.x - _cam_width), (obj_player.y - _cam_height));