function sendMessage(argument0, argument1) {
	headText = argument0;
	bodText = argument1;
	
	for(z = 0; z < ds_list_size(obj_readoutMaster.messageQueue); z++){
		if(obj_readoutMaster.messageQueue[| z].headingText = headText
		&& obj_readoutMaster.messageQueue[| z].bodyText = bodText){
			obj_readoutMaster.messageQueue[| z].multiplicity++;
			return;
		}
	}

	ds_list_add(obj_readoutMaster.messageQueue, instance_create_depth(0, 0, -100, obj_readoutBox));
	newBox = obj_readoutMaster.messageQueue[| ds_list_size(obj_readoutMaster.messageQueue)-1];
	newBox.headingText = headText;
	newBox.bodyText = bodText;



}
