/// @description Insert description here
// You can write your code in this editor
global.control = true;
obj_player.visible = true;
global.event = -1;
file_text_close(evFile);
for(i = 0; i < ds_list_size(actors); i++)
{
	instance_destroy(actors[| i]);
}
ds_list_destroy(actors);

ds_map_destroy(evCommands);