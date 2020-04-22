/// @description Insert description here
// You can write your code in this editor
draw_self();

//draw_ui
var UIx= camera_obj.view_x-view_get_hport(0)/3;
var UIy= camera_obj.view_y-20;
//var UIy= camera_get_view_y(cam)+camera_get_view_height(cam)/2;
draw_sprite_ext(face_spr,0,UIx+90,UIy+125,1,1,0,c_white,1);
var str = "Top emotion: " + string(emotion);
draw_text(UIx+20,UIy+210,str);
draw_text(UIx+30,UIy+230,strength);

//draw graph
var px = UIx+45;
var py = UIy+170;
var xunit = 20;
var yunit = 20;

//draw outline
draw_primitive_begin(pr_trianglelist);
var _col = c_white;
draw_vertex_color(px,py-2*yunit,_col,1);
draw_vertex_color(px-2*xunit,py+yunit,_col,1);
draw_vertex_color(px+2*xunit,py+yunit,_col,1);
draw_primitive_end();

//draw current values
draw_primitive_begin(pr_trianglelist);
var _col = c_red;
draw_vertex_color(px,py-(2*yunit/10*excitement),_col,1);
draw_vertex_color(px-(2*xunit/10*arousal),py+(yunit/10*arousal),_col,1);
draw_vertex_color(px+(2*xunit/10*anxiety),py+(yunit/10*anxiety),_col,1);
draw_primitive_end();

//draw overlay
draw_unit_markings(px,py,xunit,yunit);

//draw center point
draw_set_color(c_black);
draw_circle(px-1,py,2,false);
draw_set_color(c_white);

