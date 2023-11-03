

//Enter state
if (state == 0)
{
	timer++;
	
	//Change room
	if (timer >= duration)
	{
		room_goto(target_room);
		
		//Set state
		state = 1;
	}
}
else if (state == 1) //Exit state
{
	timer--;
	
	//Destroy
	if (timer <= 0)
	{
		instance_destroy();
	}
}

//Set alpha
alpha = timer/duration;