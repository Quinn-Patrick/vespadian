function act_screenShake(argument0, argument1) {
	shakeIntensitySet = argument0;
	sleepTime = argument1;

	if(clock < 2) obj_camera.shakeIntensity = shakeIntensitySet;

	if(clock >= sleepTime) return true;
	else return false;


}
