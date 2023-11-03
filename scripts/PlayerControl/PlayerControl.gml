// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerController()
{
	globalvar RightInput;
	globalvar LeftInput;
	globalvar UpInput;
	globalvar DownInput;
	globalvar ShootInput;
	
	RightInput = keyboard_check(ord("D"));
	LeftInput = keyboard_check(ord("A"));
	UpInput = keyboard_check(ord("W"));
	DownInput = keyboard_check(ord("S"));
	ShootInput = mouse_check_button(mb_left);
	
	// Potentially maybe duplicate functions and name as "other" for arrow keys
}

function horizontalMovementCheck()
{
	if ((RightInput && LeftInput) || (!RightInput && !LeftInput))
	{
		return false;
	}
	
	return true;
}

function verticalMovementCheck()
{
	if ((UpInput && DownInput) || (!UpInput && !DownInput))
	{
		return false;
	}
	
	return true;
}

function Movement(MoveSpeed)
{
	var HMove = RightInput - LeftInput;
	var VMove = DownInput - UpInput;
	var Speed = MoveSpeed;
	
	if (horizontalMovementCheck())
	{
		image_xscale = HMove;
		hspeed = HMove * Speed;
	}
	else 
	{
		hspeed = 0;
	}
	if (verticalMovementCheck())
	{
		vspeed = VMove * Speed;
	}
	else 
	{
		vspeed = 0;
	}
}