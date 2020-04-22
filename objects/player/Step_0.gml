/// @description Insert description here
// You can write your code in this editor
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var change = keyboard_check_released(vk_shift);
var debug = keyboard_check_released(vk_escape);

var input_h = right-left;
var input_v = down-up;

dpad_dir = point_distance(0,0,input_h,input_v) > 0 ? point_direction(0,0,input_h,input_v) : no_direction;

movement_and_collision(dpad_dir,mv_spd,wall_obj);

//debug
if debug
	room_restart();

//sprite update
update_sprite_facing();

//udate stealth values
hiding = false;
if place_meeting(x,y,changeroom)
{
	hiding = true;
	if change == true
		image_index +=1;
}

//update emotion state
if update_cycle == 0
{
	eyes_on = 0;
	watched_by = [];
	with (npc)
	{
		if can_see == true
		{
			player.watched_by[player.eyes_on]=self;
			player.eyes_on += 1;
		}
	}
	if eyes_on > 0
	{
		for (var i=0; i< array_height_2d(watched_by); i++)
		{
			if eyes_on < 5
				attention = ceil(eyes_on/2);
		}
		
	}
	//find highest emotion
	var top = [];
	top[0] = "Attention";
	top[1] = attention;
	if top[1] < anxiety
	{
		top[0] = "Anxiety";
		top[1] = anxiety;
	}
	if top[1] < excitement
	{
		top[0] = "Excitement";
		top[1] = excitement;
	}
	if top[1] < fear
	{
		top[0] = "Fear";
		top[1] = fear;
	}
	if top[1] < determination
	{
		top[0] = "Determination";
		top[1] = determination;
	}
	emotion = top[0];
	strength = top[1];
	
	
	update_cycle = update_index;
}
update_cycle -=1;