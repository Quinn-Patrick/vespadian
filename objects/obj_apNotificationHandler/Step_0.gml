/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < ds_list_size(notifications); i++){
	var notification = ds_list_find_value(notifications, i);
	if(notification.timer <= 0){
		instance_destroy(notification);
		ds_list_delete(notifications, i);
		i--;
		continue;
	}
	notification.yCoord = 748 - (16 * i)
}