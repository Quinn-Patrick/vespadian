/*
Directions:
	1. East to West
	2. West to East
	3. South to North
	4. North to South
*/
switch(dir){
	case 1: sprite_index = spr_conveyerWE; break;
	case 2: sprite_index = spr_conveyerEW; break;
	case 3: sprite_index = spr_conveyerSN; break;
	case 4: sprite_index = spr_conveyerNS; break;
}


if(gridx == global.ovx && gridy == global.ovy && global.event == -1 && global.stopped && stepProtector == 0){
	obj_player.forceMove = dir;
}

draw_self();

if(gridx != global.ovx || gridy != global.ovy) stepProtector = 0;

