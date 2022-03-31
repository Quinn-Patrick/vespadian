/// @description Insert description here
// You can write your code in this editor
//global.control = false;

eventBlackScreen = pointer_null;
state = 0;
clock = 0;
evFile = file_text_open_read("files/events/event" + string(global.event) + ".txt");
otherFiles[9] = "";
actors = ds_list_create();
actOver = true;
ready = 0;
actData[9] = 0;
nxt = file_text_readln(evFile);
do{
	ds_list_add(actors, actorSwitch(real(nxt), real(file_text_readln(evFile)), real(file_text_readln(evFile)), real(file_text_readln(evFile))));
	nxt = (file_text_readln(evFile));
}until(ord(string(nxt)) == 33);

//We're going to create a hashmap of command words corresponding to different numbers
evCommands = ds_map_create();
ds_map_add(evCommands, "sleep", 0);
ds_map_add(evCommands, "dialogue", 1);
ds_map_add(evCommands, "turn", 2);
ds_map_add(evCommands, "walk", 3);
ds_map_add(evCommands, "focus", 4);
ds_map_add(evCommands, "fadeToBlack", 5);
ds_map_add(evCommands, "battle", 6);
ds_map_add(evCommands, "flash", 7);
ds_map_add(evCommands, "teleport", 8);
ds_map_add(evCommands, "shake", 9);
ds_map_add(evCommands, "room", 10);
ds_map_add(evCommands, "flag", 11);
ds_map_add(evCommands, "changeParty", 12);
ds_map_add(evCommands, "tpPlayer", 13);
ds_map_add(evCommands, "effect", 14);
ds_map_add(evCommands, "camp", 15);
ds_map_add(evCommands, "worldMap", 16);
ds_map_add(evCommands, "unFlag", 17);
ds_map_add(evCommands, "overlay", 18);
ds_map_add(evCommands, "item", 19);
ds_map_add(evCommands, "takeItem", 20);
ds_map_add(evCommands, "instaWalk", 21);
ds_map_add(evCommands, "battleMusic", 22);
ds_map_add(evCommands, "music", 23);
ds_map_add(evCommands, "sound", 24);
ds_map_add(evCommands, "end", -1)

ds_map_add(evCommands, "0", 0);
ds_map_add(evCommands, "1", 1);
ds_map_add(evCommands, "2", 2);
ds_map_add(evCommands, "3", 3);
ds_map_add(evCommands, "4", 4);
ds_map_add(evCommands, "5", 5);
ds_map_add(evCommands, "6", 6);
ds_map_add(evCommands, "7", 7);
ds_map_add(evCommands, "8", 8);
ds_map_add(evCommands, "9", 9);
ds_map_add(evCommands, "10", 10);
ds_map_add(evCommands, "11", 11);
ds_map_add(evCommands, "12", 12);
ds_map_add(evCommands, "13", 13);
ds_map_add(evCommands, "14", 14);
ds_map_add(evCommands, "15", 15);
ds_map_add(evCommands, "16", 16);
ds_map_add(evCommands, "17", 17);
ds_map_add(evCommands, "18", 18);
ds_map_add(evCommands, "19", 19);
ds_map_add(evCommands, "20", 20);
ds_map_add(evCommands, "21", 21);
ds_map_add(evCommands, "22", 22);
ds_map_add(evCommands, "23", 23);
ds_map_add(evCommands, "24", 24);
ds_map_add(evCommands, "-1", -1);

depth = -11001;