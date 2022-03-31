// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawFilePreview(xInit, yInit){
	if(global.loadPreview[27] == -1){
		draw_text(xInit, yInit, "No Data");
		return;
	}
	
	
	draw_text(xInit, yInit, "Location: " + string(global.loadPreview[0]));
	draw_text(xInit, yInit+16, "Gold: " + string(global.loadPreview[1]));
	

	tempTimePrev = global.loadPreview[2];

	hoursPrev = floor(global.loadPreview[2] / (3600000000));

	tempTimePrev = tempTimePrev % 3600000000;

	minutesPrev = floor(tempTimePrev / (60000000));

	tempTimePrev = tempTimePrev % 60000000;

	secondsPrev = floor(tempTimePrev / (1000000));
	
	if(secondsPrev < 10){
		secondString = "0" + string(secondsPrev);	
	}else secondString = string(secondsPrev);
	
	if(minutesPrev < 10){
		minuteString = "0" + string(minutesPrev);	
	}else minuteString = string(minutesPrev);	
	
	
	
	
	draw_text(xInit, yInit+32, "Play Time: " + string(hoursPrev) + ":" + minuteString+ ":" + secondString);
	
	if(real(global.loadPreview[7]) < 10){
		minuteString = "0"+string(global.loadPreview[7]);
	}else minuteString = string(global.loadPreview[7]);
	
	draw_text(xInit, yInit+48, "Last Played: " + month(global.loadPreview[4]) + " " + string(global.loadPreview[5])+ ", " + string(global.loadPreview[3]) + " | " + string(global.loadPreview[6]) +  ":" + minuteString);
	

	
	if(global.loadPreview[8] != -1){
		draw_sprite(characterSpriteSwitch(global.loadPreview[9], global.loadPreview[10], global.loadPreview[11])[0], 0, xInit+16, yInit + 112);
		draw_text(xInit, yInit + 144, global.loadPreview[8]);
		draw_text(xInit, yInit + 160, "Level: " + string(global.loadPreview[12]));
	}
	if(global.loadPreview[13] != -1){
		draw_sprite(characterSpriteSwitch(global.loadPreview[14], global.loadPreview[15], global.loadPreview[16])[0], 0, xInit+112, yInit + 112);
		draw_text(xInit+96, yInit + 144, global.loadPreview[13]);
		draw_text(xInit+96, yInit + 160, "Level: " + string(global.loadPreview[17]));
	}
	if(global.loadPreview[18] != -1){
		draw_sprite(characterSpriteSwitch(global.loadPreview[19], global.loadPreview[20], global.loadPreview[21])[0], 0, xInit+208, yInit + 112);
		draw_text(xInit+192, yInit + 144, global.loadPreview[18]);
		draw_text(xInit+192, yInit + 160, "Level: " + string(global.loadPreview[22]));
	}
	if(global.loadPreview[23] != -1){
		draw_sprite(characterSpriteSwitch(global.loadPreview[24], global.loadPreview[25], global.loadPreview[26])[0], 0, xInit+304, yInit + 112);
		draw_text(xInit+288, yInit + 144, global.loadPreview[23]);
		draw_text(xInit+288, yInit + 160, "Level: " + string(global.loadPreview[27]));
	}
	
}