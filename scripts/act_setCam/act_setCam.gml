function act_setCam(argument0) {
	actId = argument0;
	obj_camera.target = actors[| actId];
	return true;


}
