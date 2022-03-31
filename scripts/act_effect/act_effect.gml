function act_effect(argument0, argument1, argument2, argument3) {
	effectType = argument0;
	efX = argument1;
	efY = argument2;
	sleepTime = argument3;

	if(clock == 1){
		switch(effectType){
			case(0): instance_create_depth(efX*32, efY*32, -10000, eff_fire);
			break;
			case(1): instance_create_depth(efX*32, efY*32, -10000, eff_burning);
			break;
			case(2): instance_create_depth(efX*32, efY*32, -10000, obj_npc1backStatue);
			break;
			case(3): instance_create_depth(efX*32, efY*32, -10000, obj_npc2backStatue);
			break;
			case(4): instance_create_depth(efX*32, efY*32, -10000, obj_npc3backStatue);
			break;
			case(5): instance_create_depth(efX*32, efY*32, -10000, eff_barf);
			break;
			case(6): instance_create_depth(efX*32, efY*32, -10000, eff_darkTeleport);
			break;
		}
	
	}
	if(clock > sleepTime) return true;
	else return false;


}
