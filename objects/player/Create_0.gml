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
var max_stat = 5;
attention = irandom_range(1,max_stat);
anxiety = irandom_range(1,max_stat);
arousal = irandom_range(1,max_stat);
excitement  = irandom_range(1,max_stat);
fear = irandom_range(1,max_stat);
determination = irandom_range(1,max_stat);

eyes_on = 0;
watched_by = [];