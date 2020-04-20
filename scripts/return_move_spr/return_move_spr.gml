
var facing = argument0;
var spr = hunam_spr;

switch(facing)
{
	case 0: spr = r_run; break;
	case 1: spr = ru_run; break;
	case 2: spr = u_run; break;
	case 3: spr = lu_run; break;
	case 4: spr = l_run; break;
	case 5: spr = ld_run; break;
	case 6: spr = d_run; break;
	case 7: spr = rd_run; break;
}

return spr;