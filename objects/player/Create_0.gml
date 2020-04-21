/// @description Insert description here
// You can write your code in this editor
mv_spd = 3;
hiding = false;

image_speed = 0;
image_xscale = 2;
image_yscale = 2;
ani = 0;
facing = 0;
dpad_dir=no_direction;

emotion = "Ambivalent";
strength = 0;

update_cycle = 0;
update_index = 20;
//emotion stats
randomize();
attention = irandom_range(1,10);
anxiety = irandom_range(1,10);
excitement  = irandom_range(1,10);
fear = irandom_range(1,10);
determination = irandom_range(1,10);

eyes_on = 0;
watched_by = [];