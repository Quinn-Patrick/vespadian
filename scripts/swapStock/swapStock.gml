// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swapStock(index1, index2){
	//this function swaps the data stored in theses two indeces in the stock inventory
	store[0] = global.stock[index1,0];
	store[1] = global.stock[index1,1];
	store[2] = global.stock[index1,2];
	storeN = global.stockN[index1];
	
	global.stock[index1,0] = global.stock[index2,0];
	global.stock[index1,1] = global.stock[index2,1];
	global.stock[index1,2] = global.stock[index2,2];
	global.stockN[index1] = global.stockN[index2];
						
	global.stock[index2,0] = store[0];
	global.stock[index2,1] = store[1];
	global.stock[index2,2] = store[2];
	global.stockN[index2] = storeN;

}