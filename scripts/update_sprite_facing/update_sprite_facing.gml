/// @description Update Sprite Index
if(dpad_dir != no_direction)
{
  image_speed = 1;
  xscale=1;
  switch(round_n(dpad_dir,45))
  {
    case 180: xscale = -1; sprite_index = l_run; break; 
    case 225: xscale = -1; sprite_index = ld_run; break;
    case 135: xscale = -1; sprite_index = lu_run; break;
    case 360: 
    case 0:   sprite_index = r_run; break; 
    case 315: sprite_index = rd_run; break;
    case 45:  sprite_index = ru_run; break;
    case 90:  sprite_index = u_run; break;
    case 270: sprite_index = d_run; break;
  }
}
else
{  
  image_speed = 0;
  image_index = 0; //or whatever frame has both feet on the ground.
}