/// @description Insert description here
// You can write your code in this editor

//update distance to player
if perf_count == 0
{
	dist = distance_to_point(player.x,player.y);
	perf_count = performance_factor;
	
	if player.hiding == true
		dist = 1000;
}	
can_see = false;
perf_count -=1;

if dist < 1000
{
	//update attention and suspicion
	can_see = true;
	
	if attention > -1
	{
		facing = point_direction(x,y,player.x,player.y)/45;
		
		image_index = facing
	}
}

