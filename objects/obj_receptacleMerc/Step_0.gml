/// @description Insert description here
// You can write your code in this editor
if(global.event > -1) visible = false;
else visible = true;

if(!global.events[eventIndex]){
	frontSprite = spr_tokenReceptacle;
	backSprite = spr_tokenReceptacle;
	sideSprite = spr_tokenReceptacle;
}else{
	frontSprite = spr_mercuryReceptacle;
	backSprite = spr_mercuryReceptacle;
	sideSprite = spr_mercuryReceptacle;
}