/// @description Insert description here
// You can write your code in this editor
promptText = "";
selection = 0;
output = -1;
done = false;
listItems = ds_list_create();

for(i = 0; i < ds_list_size(global.teleportLocations); i++){
	loc = global.teleportLocations[| i];
	if(global.events[loc.flag]) ds_list_add(listItems, loc);
}