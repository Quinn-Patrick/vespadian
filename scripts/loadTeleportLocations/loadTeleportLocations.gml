// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadTeleportLocations(){
	global.teleportLocations = ds_list_create();
	teleportFile = file_text_open_read("files/teleportLocations.txt");
	while(!file_text_eof(teleportFile)){
		initFlag = real(file_text_readln(teleportFile));
		initName = cleanString(file_text_readln(teleportFile));
		initZone = real(file_text_readln(teleportFile));
		initX = real(file_text_readln(teleportFile));
		initY = real(file_text_readln(teleportFile));
		
		ds_list_add(global.teleportLocations, new teleportLocation(initFlag, initName, initZone, initX, initY));
	}
	file_text_close(teleportFile);

}