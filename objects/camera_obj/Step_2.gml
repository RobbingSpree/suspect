/// @description Insert description here
// You can write your code in this editor
if instance_exists(target)
{
	view_x = lerp(view_x,target.x,0.16);
	view_y = lerp(view_y,target.y,0.16);
	vm = matrix_build_lookat(view_x,view_y,-10,view_x,view_y,0,0,1,0);
	camera_set_view_mat(camera,vm);
}