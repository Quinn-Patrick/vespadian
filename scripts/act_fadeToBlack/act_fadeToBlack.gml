function act_fadeToBlack(argument0, argument1) {
	fadeSpeed = argument0;
	sleepTime = argument1;


	if(!instance_exists(obj_blackScreen) || eventBlackScreen == pointer_null){
		eventBlackScreen = instance_create_depth(0,0,-11000,obj_blackScreen);
	}
	eventBlackScreen.fadeRate = fadeSpeed;

	if(clock >= sleepTime) return true;
	else return false;


}
