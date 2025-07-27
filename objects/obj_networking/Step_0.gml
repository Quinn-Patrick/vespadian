/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_f8)){
	reconnect();
}
/*sinceLastPacket++;

if(sinceLastPacket % 300 == 0){
	get_from_server();
}

if(sinceLastPacket % 1800 == 0){
	show_debug_message("No packets in " + string(sinceLastPacket / 60) + " seconds. Reconnecting.");
	ds_list_add(messages, "No packets in " + string(sinceLastPacket / 60) + " seconds. Reconnecting.");
	reconnect();
}*/