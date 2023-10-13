//move
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)

x += xspd;
y += yspd;

//bullet out of range
if point_distance(xstart,ystart,x,y) > maxdist
{
	instance_destroy()
}