// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//this script collapses the stock inventory so that there are no empty slots
function collapseStock(){
	finished = false;
	
	while(!finished){
		finished = true;
		for(g = 0; g < stockSize()+1; g++){
			if(global.stock[g, 0] > -1){
				for(h = g-1; h > -1; h--){
					if(global.stock[h, 0] == -1){
						finished = false;
						swapStock(h, h+1);
					}else{
						break;
					}
				}
			}
		}
	}
}