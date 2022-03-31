/// @description Insert description here
// You can write your code in this editor
global.control = false;

mode = 0;
count = 1;
countMax = 1;
storeCost = 0;

timeCount = 0;
timeEnd = 60;

shopFileNames = ds_list_create();
sortedInventory = ds_list_create();

generateSortedInventory(sortedInventory);

ds_list_add(shopFileNames, "files/crafting/craft1.txt");
ds_list_add(shopFileNames, "files/crafting/craft5.txt");
ds_list_add(shopFileNames, "files/crafting/craft3.txt");
ds_list_add(shopFileNames, "files/crafting/craft4.txt");
ds_list_add(shopFileNames, "files/crafting/craft10.txt");

if(getItemCount(1421)){
	global.events[309] = true;
	removeItem(1421, 99);
}

if(getItemCount(1422)){
	global.events[324] = true;
	removeItem(1422, 99);
}

if(getItemCount(1425)){
	global.events[366] = true;
	removeItem(1425, 99);
}

if(global.events[309]){
	ds_list_add(shopFileNames, "files/crafting/craft2.txt");
	ds_list_add(shopFileNames, "files/crafting/craft6.txt");
}

if(global.events[324]){
	ds_list_add(shopFileNames, "files/crafting/craft8.txt");
	ds_list_add(shopFileNames, "files/crafting/craft11.txt");
}

if(global.events[366]){
	ds_list_add(shopFileNames, "files/crafting/craft9.txt");
	ds_list_add(shopFileNames, "files/crafting/craft12.txt");
}

buyOrSell = 0;

selection[0] = 0;
selection[1] = 0;

shopScroll[0] = 0;
shopScroll[1] = 0;

maxSel[0] = 0;
maxSel[1] = 0;

equipmentSlot = 0;

ticker = 0;



buyNums = ds_list_create();
buyNames = ds_list_create();
buyDesc = ds_list_create();
flags = ds_list_create();
craftCosts[0] = ds_list_create();



infoLoaded = false;

maxDisp = 15;

xO = (global.ovx*32)-512;
yO = (global.ovy*32)-384;

itemNameXPos = xO+SCREENW/4;
craftCostXPos = xO+SCREENW*(5/8);