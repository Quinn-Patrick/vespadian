// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_ap_item_name(itemId, slot){
	game = ds_map_find_value(global.playerNames, slot).game;
	gameData = ds_map_find_value(global.apItemNames, game);
	return ds_map_find_value(gameData, itemId);

}