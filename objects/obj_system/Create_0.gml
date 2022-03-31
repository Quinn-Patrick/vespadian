/// @description Insert description here
// You can write your code in this editor
/// initialize
depth = -1000;


noEncounterTiles = ds_list_create();
instance_create_depth(0,0,0,obj_dialogueHandler);



roomTime = 0;

if(room != rm_battle && room != rm_start && room != rm_gainXp){
	if(global.postBattleEvent > -1){
		eventGo(global.postBattleEvent);
	}

	global.postBattleEvent = -1;
	
	//set up the event after collecting 3 thorns
	if(!global.events[226] && getItemCount(1410) == 3){
		global.exitEvent = 64;
	}
}