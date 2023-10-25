vspeed = 0;
hspeed = 0;

if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    hspeed = 2;
    image_xscale = 1;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
    hspeed = -2;
    image_xscale = -1;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W")))
{
    vspeed = -2;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S")))
{
    vspeed = 2;
}


if (mouse_check_button(mb_left) && bCanShoot == true)
{
    with instance_create_layer(x,y,0,obj_bullet)
    {
        speed = 10;
        direction = point_direction(x,y,mouse_x,mouse_y);
        image_angle = direction;
    }    
    
	bCanShoot = false;
    alarm[0] = 20;
}