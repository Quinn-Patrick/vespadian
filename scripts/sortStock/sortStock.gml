// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//this script sorts the inventory according to item sorting numbers
function sortStock(){
	collapseStock(); //make sure that the inventory is fully collapsed
	
	finished = false;
	
	while(!finished){
		finished = true;
		for(g = 0; g < stockSize(); g++){
			if(getItemDat(global.stock[g,0], 2) > getItemDat(global.stock[g+1,0], 2)){
				finished = false;
				swapStock(g, g+1);
			}
		}
	}
}