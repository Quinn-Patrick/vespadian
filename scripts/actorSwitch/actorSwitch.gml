function actorSwitch(argument0, argument1, argument2, argument3) {
	lay = argument0;
	xPos = argument3;
	yPos = argument2;
	actNum = argument1;

	if(xPos == -1) xPos = global.ovx;
	if(yPos == -1) yPos = global.ovy;

	switch(actNum){
		case(0): newAct = instance_create_depth(0, 0, lay, obj_actPartyMember); 
		newAct.actCharacter = global.party[0] break;
		case(1): newAct = instance_create_depth(0, 0, lay, obj_actPartyMember); 
		newAct.actCharacter = global.party[1] break;
		case(2): newAct = instance_create_depth(0, 0, lay, obj_actPartyMember); 
		newAct.actCharacter = global.party[2] break;
		case(3): newAct = instance_create_depth(0, 0, lay, obj_actPartyMember); 
		newAct.actCharacter = global.party[3] break;
		case(4): newAct = instance_create_depth(0, 0, lay, obj_actCloakedFigure); break;
		case(5): newAct = instance_create_depth(0, 0, lay, obj_actHector); break;
		case(10): newAct = instance_create_depth(0, 0, lay, obj_actMirror); break;
		case(11): newAct = instance_create_depth(0, 0, lay, obj_actFridaFalling); break;
		case(12): newAct = instance_create_depth(0, 0, lay, obj_actCadet); break;
		case(13): newAct = instance_create_depth(0, 0, lay, obj_actFoodBag); break;
		case(14): newAct = instance_create_depth(0, 0, lay, obj_actElk); break;
		case(15): newAct = instance_create_depth(0, 0, lay, obj_actAriadne); break;
		case(16): newAct = instance_create_depth(0, 0, lay, obj_actVitruvius); break;
		case(17): newAct = instance_create_depth(0, 0, lay, obj_actCryogoyle); break;
		case(18): newAct = instance_create_depth(0, 0, lay, obj_actCaptain); break;
		case(19): newAct = instance_create_depth(0, 0, lay, obj_actDog); break;
		case(20): newAct = instance_create_depth(0, 0, lay, obj_actRock); break;
		case(21): newAct = instance_create_depth(0, 0, lay, obj_actClarence); break;
		case(22): newAct = instance_create_depth(0, 0, lay, obj_actPedestal); break;
		case(23): newAct = instance_create_depth(0, 0, lay, obj_actAdam); break;
		case(24): newAct = instance_create_depth(0, 0, lay, obj_actSiegfried); break;
		case(25): newAct = instance_create_depth(0, 0, lay, obj_actMountedCadet); break;
		case(26): newAct = instance_create_depth(0, 0, lay, obj_actMountedElite); break;
		case(27): newAct = instance_create_depth(0, 0, lay, obj_actLordsKnight); break;
		case(28): newAct = instance_create_depth(0, 0, lay, obj_actMountedEliteWithMary); break;
		case(29): newAct = instance_create_depth(0, 0, lay, obj_actAdamTheHawk); break;
		case(30): newAct = instance_create_depth(0, 0, lay, obj_actEphemeris); break;
		case(31): newAct = instance_create_depth(0, 0, lay, obj_actAlexander); break;
		case(32): newAct = instance_create_depth(0, 0, lay, obj_actMaria); break;
	}

	newAct.gridX = xPos;
	newAct.gridY = yPos;
	newAct.x = newAct.gridX*32+16;
	newAct.y = newAct.gridY*32+16;

	return newAct;


}
