/// @description Insert description here
// You can write your code in this editor
if(!is_undefined(char)){
	draw_text(x+256, y+42, char.name);
	draw_text(x+256, y+84, "Experience: " + string(startXp));
	draw_text(x+256, y+126, "To Next Level: " + string(global.xpThresholds[apparentLevel+1]-startXp));
	draw_text(x+256, y+168, "Level: " + string(apparentLevel));
	
	if(initialized){
		if(messageIndex > -1){
			if(messageIndex < ds_list_size(progressionMessages))draw_text(x+128, y+256, progressionMessages[| messageIndex]);
		}
	}
	
	spriteArray = getCharacterSprites(char);
	if(char.conditions[0] > 0) draw_sprite(spriteArray[3], 0, x + 128, y + 192);
	else draw_sprite(spriteArray[0], 0, x + 128, y + 192);
}