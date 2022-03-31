// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function displayPauseMenu(xOrigin, yOrigin){
	menuY = 80;
	menuX = 800
	menuSpace = 32;
	
	draw_text(xOrigin + menuX, yOrigin + menuY, "Inventory");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*1), "Equipment");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*2), "Abilities");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*3), "Powers");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*4), "Formation");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*5), "Status");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*6), "Classes");
	if(global.roomType == 0 || (onWorldMap() && global.vehicle > 0)) draw_set_color(global.textC[1]);
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*7), "Save");
	draw_set_color(global.textC[0]);
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*8), "Options");
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*12), "Gold: " + string(global.money));
	if(global.minutes < 10) minString = "0" + string(global.minutes);
	else minString = string(global.minutes);
	if(global.seconds < 10) secString = "0" + string(global.seconds);
	else secString = string(global.seconds);
	draw_text_ext(xOrigin + menuX, yOrigin + menuY+(menuSpace*14), global.inGameRoomName, menuSpace-8, 220);
	draw_text(xOrigin + menuX, yOrigin + menuY+(menuSpace*16), "Play Time: " + string(global.hours) + ":" + string(minString) + ":" + string(secString));

}