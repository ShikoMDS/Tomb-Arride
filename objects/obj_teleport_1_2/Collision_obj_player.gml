/// @description Insert description here
// You can write your code in this editor

if (!global.teleporting && place_meeting(x, y, obj_player)) 
{
    global.teleporting = true;
    instance_create_layer(x, y, "Instances", obj_teleport_2_1);
    instance_destroy();
}




