// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scout_items(){
	if(instance_find(obj_networking, 0) == noone){
		return;
	}
	
	chests = [];
	show_debug_message("Room contains " + string(instance_number(obj_chest)) + " chests.");
	for (var i = 0; i < instance_number(obj_chest); ++i;)
	{
	show_debug_message("Scouting chest " + string(instance_find(obj_chest, i)));
	    chests[i] = int64(instance_find(obj_chest, i).chestNum + 1000);
	}
	
	show_debug_message("Scouting locations.");
	var _contents = {
		cmd: "LocationScouts",
		locations: chests,
		create_as_hint: 0
	}
	var arr = [_contents];

	aa = json_stringify(arr);

	var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1);
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer,buffer_text,aa);

	network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text);
}