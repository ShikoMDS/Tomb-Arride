if place_meeting(x + 10, y, obj_player)
{
    if (keyboard_check_pressed(vk_space))
    {
        x -= 32;
    }    
}
if place_meeting(x - 10, y, obj_player)
{
    if (keyboard_check_pressed(vk_space))
    {
        x += 32;
    }
}
if place_meeting(x, y + 10, obj_player)
{
    if (keyboard_check_pressed(vk_space))
    {
        y -= 32;
    }
}
if place_meeting(x, y - 10, obj_player)
{
    if (keyboard_check_pressed(vk_space))
    {
        y += 32;
    }
}