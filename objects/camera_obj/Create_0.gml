/// @description Insert description here
// You can write your code in this editor
camera = view_get_camera(0);
view_x = 0;
view_y = 0;
vm = matrix_build_lookat(0,0,-10,0,0,0,0,1,0);
target = player;