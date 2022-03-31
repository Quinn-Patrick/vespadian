// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scoreGrowth(maxVal, level){
	slope = maxVal/50;
	return floor(level*slope)-floor((level-1)*slope);

}