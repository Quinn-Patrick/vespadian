function act_flashWhite(argument0, argument1) {
	flashSpeed = argument0;
	sleepTime = argument1;


	flashObj = instance_create_depth(0,0,-11000,obj_whiteScreen);

	flashObj.fadeRate = flashSpeed;

	if(clock >= sleepTime) return true;
	else return false;


}
