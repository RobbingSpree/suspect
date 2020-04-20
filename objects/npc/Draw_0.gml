/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_sprite(bar,0,x,y-40);
draw_sprite(bar,1,x,y-60);

var annt_pos = (x-32);
var susp_pos = (x-32);
annt_pos += (attention/2);
susp_pos += (suspicion/2);
draw_sprite(bar_icons,0,annt_pos,y-40);
draw_sprite(bar_icons,1,susp_pos,y-60);

//debug
draw_set_color(c_white);
if dist < 1000
{
	draw_line(x,y,player.x,player.y);
	draw_text(x,y-80,dist);
}