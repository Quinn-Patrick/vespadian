function showText(argument0) {
	if(instance_number(obj_textShow) == 0)global.textObject = instance_create_depth(0,0,-11001, obj_textShow);
	
	global.textObject.show = argument0;
	
	global.talker = self;
	global.talker.talking = true;
	if(global.textTime > 5){
		
		return true;
	}
	else return false;



}
