// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_check(check_id){
	show_debug_message("Sending check location " + string(check_id));
	var _contents = {
		cmd: "LocationChecks",
		locations: [int64(check_id)]	
	}
	var arr = [_contents]

	aa = json_stringify(arr)

	var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
	buffer_seek(buffer, buffer_seek_start, 0)
	buffer_write(buffer,buffer_text,aa)

	network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)
}