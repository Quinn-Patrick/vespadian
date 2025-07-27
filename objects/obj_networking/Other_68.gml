sinceLastPacket = 0;
///@desc Buffer loading & Receiving Items
show_debug_message("Receiving packet.");
//Loads the buffers and lists them out into a variable (Probably not useful for the most part, just there at this point for assurance.)
var buff;
var response;
if(async_load[? "size"] > 0){
	buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	response = buffer_read(buff,buffer_string)
}
buffer_seek(buff,buffer_seek_start,0)
var data = json_parse(response)

show_debug_message("******************************************");
show_debug_message("Received Packet: " + string(data));
show_debug_message("******************************************");


//Locks the data needed for the next functions into an array.
for (var i = 0; i < array_length(data); ++i)
{
	
	//Send locations checked while disconnected
	if(struct_exists(data[i], "missing_locations")){
		var missing_locations = data[i].missing_locations;
		
		for(var j = 0; j < array_length(missing_locations); j++){
			var location_index = missing_locations[j];
			if(location_index < 2000){
				//show_debug_message("Checking location index " + string(location_index - 1000) + "; global.chests is " + string(global.chests[location_index - 1000]));
				if(global.chests[location_index - 1000]){
					send_check(location_index);
				}
			}
			//This is for events. Right now only rescuing Ariadne has a check on it.
			if(location_index >= 2000 && location_index < 3000){
				if(global.events[location_index - 2000]){
					send_check(location_index);
				}
			}
			//This is for beating Ephemeris.
			if(location_index == 3000 && global.events[456]){
				send_check(3000);
			}
		}
	}
	
	if(struct_exists(data[i], "slot_info")){
		ds_map_clear(global.playerNames);
		var slot_info = data[i].slot_info;
		var slot = 1;
		while(struct_exists(slot_info, slot)){
			ds_map_add(global.playerNames, slot, {"name": slot_info[$ string(slot)].name, "game": slot_info[$ string(slot)].game})
			slot++;
		}
		
	}
	
	//Note: struct_exists() was added in v2023.8.x.xx, versions prior will need to be optimized to account for this.
	if struct_exists(data[i], "cmd")
	{
		if(data[i].cmd = "Connected"){
			ap_notification("Connected to server.");
			get_data_package();
			scout_items();
		}
		
		if(data[i].cmd = "LocationInfo"){
			if(struct_exists(data[i], "locations")){
				var locations = data[i].locations;
				ds_map_clear(global.scoutedItems);
				for(var l = 0; l < array_length(locations); l++){
					ds_map_add(global.scoutedItems, locations[l].location, {item: locations[l].item, player: locations[l].player});
				}
			}
		}
		
		if(data[i].cmd = "DataPackage"){
			if(struct_exists(data[i], "data") && struct_exists(data[i].data, "games")){
				var games = data[i].data.games;
				ds_map_clear(global.apItemNames);
				var keys = struct_get_names(games);
				for (var l = array_length(keys)-1; l >= 0; l--) {
				    var gameName = keys[l];
					show_debug_message("Indexing item names from game " + gameName + " in slot " + string(l));
				    var v = games[$ gameName];
					var itemNameToId = v.item_name_to_id;
					var gameData = ds_map_create()
					ds_map_add(global.apItemNames, gameName, gameData);
					var itemNames = struct_get_names(itemNameToId);
					for (var m = array_length(itemNames) - 1; m >= 0; m--){
						var itemName = itemNames[m]
						ds_map_add(gameData, itemNameToId[$ itemName], itemName);
					}
				}
			}
		}

		//Checks to see if the command part of the json is equal to the received items list, lists them out and throws them into a struct, allowing you to call them into update_obtains()
		if (data[i].cmd = "ReceivedItems") {
			if struct_exists(data[i], "items") {
				show_debug_message("Found Items " + string(data[i].items));
				var index = data[i].index;
				for (var ii = 0; ii < array_length(data[i].items); ++ii) {
						//show_debug_message(data[i].items[ii])
						//Variable used for get_name(), if you want you can change it.
					playerSent = data[i].items[ii].player
					if (playerSent >= 0 && index >= global.archipelagoIndex) {
						ap_notification("You receieved " + getItemName(data[i].items[ii].item) + " from " + string(ds_map_find_value(global.playerNames, playerSent).name));
						update_obtains(data[i].items[ii].item, playerSent, data[i].items[ii].location)
						global.archipelagoIndex++;
					}			
					index++;
				}
			}
		}
	}
}
