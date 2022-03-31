/// @description Insert description here
// You can write your code in this editor
lastPhase = aiPhase

if(curHp < maxHp*0.67 && curHp >= maxHp*0.33) aiPhase = 1;
else if(curHp < maxHp*0.33) aiPhase = 2;

if(aiPhase == 1 && lastPhase != aiPhase){
	conds[7] -= 198;
	conds[8] += 198;
}
else if(aiPhase == 2 && lastPhase != aiPhase){
	conds[9] -= 99;
	conds[8] += 99;
}