 
var px = argument0;
var py = argument1;
var xunit = argument2;
var yunit = argument3;

draw_set_color(c_black);
var val = 5;

for (var i=1; i<val; i++)
{
	draw_primitive_begin(pr_linestrip);
	draw_vertex(px,py-(yunit*2/val*i));
	draw_vertex(px-(xunit*2/val*i),py+(yunit/val*i));
	draw_vertex(px+(xunit*2/val*i),py+(yunit/val*i));
	draw_vertex(px,py-(yunit*2/val*i));
	draw_primitive_end();
}

draw_line(px,py,px,py-2*yunit);
draw_line(px,py,px-2*xunit,py+yunit);
draw_line(px,py,px+2*xunit,py+yunit);

draw_set_color(c_white);