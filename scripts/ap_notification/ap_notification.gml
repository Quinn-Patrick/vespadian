// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ap_notification(text){
	notification = instance_create_depth(0,0,0,obj_apNotification);
	notification.persistent = true;
	notification.text = text;
	notification.timer = 600;
	ds_list_add(global.messageHandler.notifications, notification);
}