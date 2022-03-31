function act_overlay(argument0) {
	overlayType = argument0;
	overlayObject = obj_nightOverlay;
	switch(overlayType){
		case(0): break;
	}
	if(!instance_exists(overlayObject)){
		instance_create_depth(0,0,-9998, overlayObject);
	}
	else{
		instance_destroy(overlayObject);
	}

	return true;


}
