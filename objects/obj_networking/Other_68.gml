///@desc Buffer loading & Receiving Items
show_debug_message("Receiving packet.");
//Loads the buffers and lists them out into a variable (Probably not useful for the most part, just there at this point for assurance.)
var buff;
var response;
if(async_load[? "size"] > 0){
	show_debug_message("packet size is greater than zero");
	buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	response = buffer_read(buff,buffer_string)
}
buffer_seek(buff,buffer_seek_start,0)
var data = json_parse(response)

show_debug_message("Data is " + string(data));
//Locks the data needed for the next functions into an array.
for (var i = 0; i < array_length(data); ++i)
{
	//Note: struct_exists() was added in v2023.8.x.xx, versions prior will need to be optimized to account for this.
	if struct_exists(data[i], "cmd")
	{
		show_debug_message("Struct exists; data at index " + string(i) + "is" + string(data[i].cmd));

		//Checks to see if the command part of the json is equal to the received items list, lists them out and throws them into a struct, allowing you to call them into update_obtains()
		if (data[i].cmd = "ReceivedItems") {
			show_debug_message("Command is Received Items");
			if struct_exists(data[i], "items") {
				show_debug_message("Found Items " + string(data[i].items));
				for (var ii = 0; ii < array_length(data[i].items); ++ii) {
						//show_debug_message(data[i].items[ii])
						//Variable used for get_name(), if you want you can change it.
					playerSent = data[i].items[ii].player
					show_debug_message("Player sent is " + string(playerSent))
					if (playerSent >= 0) {
						show_debug_message("Sending item to player.");
						update_obtains(data[i].items[ii].item, playerSent)
					}			
				}
			}
		}
	}
}
