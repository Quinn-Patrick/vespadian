/// @description Insert description here
// You can write your code in this editor
global.control = false;

mode = 0;
count = 1;
countMax = 1;
storeCost = 0;

timeCount = 0;
timeEnd = 60;

shopfileName = "";

buyOrSell = 0;

selection[0] = 0;
selection[1] = 0;

shopScroll[0] = 0;
shopScroll[1] = 0;

maxSel[0] = 0;
maxSel[1] = 0;

equipmentSlot = 0;

ticker = 0;

/*for(i = 3; i > -1; i--)
{
	for(j = 15; j > -1; j--)
	{
		statChange[i,j] = 0;
	}
}*/

buyNums = ds_list_create();
buyNames = ds_list_create();
buyDesc = ds_list_create();
buyCosts = ds_list_create();

infoLoaded = false;

maxDisp = 15;

xO = (global.ovx*32)-512;
yO = (global.ovy*32)-384;