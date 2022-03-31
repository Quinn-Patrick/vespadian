/// @description Insert description here
// You can write your code in this editor
if(!is_undefined(char)){
	if(!initialized){
		
		startXp = char.xp;
		apparentLevel = char.level;
		if(char.conditions[0] == 0){			
			endXp = global.xpTot + startXp;
			char.xp += global.xpTot;
			if(char.xp > global.xpThresholds[global.levelCap]){
				char.xp = global.xpThresholds[global.levelCap];
			}
			while(char.xp >= global.xpThresholds[char.level+1])
			{
				ds_list_add(progressionMessages, "Grew to level " + string(char.level + 1) + "!");
				levelUp(char, self);
			}
			
			
		}
		initialized = true;
	}
	if(char.level == global.levelCap || char.classLevels[char.class] == 50){
		endXp = startXp;
	}
	
	if(startXp < endXp){
		if(endXp - startXp > 2000) startXp += 12;
		else if(endXp - startXp > 1000) startXp += 6;
		else if(endXp - startXp > 500) startXp += 3;
		else if(endXp - startXp > 100) startXp += 2;
		else startXp += 1;
	}
	if(startXp >= global.xpThresholds[apparentLevel+1]){
		apparentLevel++;
	}
	if(ds_list_size(progressionMessages) == 0) finished = true;
}else finished = true;