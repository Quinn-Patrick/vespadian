function findTarget(argument0, argument1, argument2) {
	targetType = argument0;
	u = argument1;
	range = argument2;

	if(u.player)
	{
		validPlayerTargetList(u, range, targetType);
		if(ds_list_size(global.playerTargets) == 0) return -2;
		if(instance_number(obj_targetSelector) == 0) instance_create_depth(448,256, -100, obj_targetSelector);
		if(key(10)){
			instance_destroy(obj_targetSelector);
			global.turnPhase = 0;
		}
		if(key(9)){
			global.storeTargetX = global.playerTargets[| global.playerTargetSelect].x;
			global.storeTargetY = global.playerTargets[| global.playerTargetSelect].y;
			instance_destroy(obj_targetSelector);
			return global.playerTargets[| global.playerTargetSelect];
		}
		else return -1;		
	}

	if(!u.player)
	{
		randomTarget = findRandomTargetAI(u, range, targetType);
		global.storeTargetX = randomTarget.x;
		global.storeTargetY = randomTarget.y;
		return randomTarget;		
	}


}
