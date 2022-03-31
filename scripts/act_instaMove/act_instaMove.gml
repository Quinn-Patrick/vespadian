function act_instaMove(argument0, argument1, argument2, argument3) {
	actId = argument0;
	direct = argument1;
	spd = argument2;
	dist = argument3;

	newMoverObject = instance_create_depth(0,0,0,obj_instaMover);

	newMoverObject.actor = actors[| actId];
	newMoverObject.direct = direct;
	newMoverObject.spd = spd;
	newMoverObject.dist = dist;

	return true;


}
