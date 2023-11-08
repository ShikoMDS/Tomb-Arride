
draw_self();

var _level_data = variable_struct_get(global.level_data,level);

var _complete = variable_struct_get(_level_data,"complete");
var _damage = variable_struct_get(_level_data,"damage");
var _coins = variable_struct_get(_level_data,"coins");


draw_sprite(spr_level_star, _complete, x - 16, y + 16);
draw_sprite(spr_level_star, _damage, x - 16, y);
draw_sprite(spr_level_star, _coins, x - 16, y - 16);
