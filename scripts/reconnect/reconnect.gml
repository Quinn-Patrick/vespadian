// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reconnect(){
	while(instance_number(obj_networking) > 0){
		instance_destroy(instance_find(obj_networking, 0));
	}
	
	instance_create_depth(0, 0, 0, obj_networking);
}