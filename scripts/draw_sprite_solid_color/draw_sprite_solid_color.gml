///@param sprite
///@param subimg
///@param x
///@param y
///@param xscale
///@param yscale
///@param rot
///@param col
///@param alpha
var _spr = argument0,
    _img = argument1,
    _x   = argument2,
    _y   = argument3,
    _xs  = argument4,
    _ys  = argument5,
    _ang = argument6,
    _col = argument7,
    _a   = argument8;

gpu_set_fog(true,_col,-16000,16000);
draw_sprite_ext(_spr,_img,_x,_y,_xs,_ys,_ang,_col,_a);
gpu_set_fog(false,0,0,0);