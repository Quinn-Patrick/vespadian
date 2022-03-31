/// @description Insert description here
// You can write your code in this editor
preTicker++;
if(preTicker > 319)ticker++;
if(ticker >= rate){
	frame++;
	ticker = 0;
}

