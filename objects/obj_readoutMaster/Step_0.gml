/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < ds_list_size(messageQueue); i++){
	if(!instance_exists(messageQueue[| i ])){
		ds_list_delete(messageQueue, i);
	}
	else{
		if(messageQueue[| i ].lifeTime < messageQueue[| i ].maxLifeTime)messageQueue[| i ].x = 64;
		messageQueue[| i ].targetY = ((ds_list_size(messageQueue)-i)*64);
	}
}