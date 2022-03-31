/// @description Insert description here
// You can write your code in this editor
global.control = false;
ticker++;
if(!infoLoaded)
{
	index = 0;
	for(j = 0; j < ds_list_size(shopFileNames); j++){
		shopfile = file_text_open_read(shopFileNames[| j]);
		thankTxt = file_text_readln(shopfile);
		brokeTxt = file_text_readln(shopfile);
	
		
		while(!file_text_eof(shopfile))
		{
			craftCosts[index] = ds_list_create();
			itemIden = real(file_text_readln(shopfile));
			itemFlag = real(file_text_readln(shopfile));
			ds_list_add(buyNums, itemIden);
			ds_list_add(flags, itemFlag);
			ds_list_add(buyNames, getItemDat(itemIden,-1));
			ds_list_add(buyDesc, getItemDes(itemIden));
			next = file_text_readln(shopfile);
			while(next != -1){
				ds_list_add(craftCosts[index], [next, cleanString(file_text_readln(shopfile)), cleanString(getItemDat(next, -1))]);
				next = file_text_readln(shopfile);
			}
			index++;
		}
		maxSel[0] = ds_list_size(buyNums)-1;
		file_text_close(shopfile);
	}
	/*for(bd = 0 ; bd < 4; bd++)
	{
		if(global.party[bd,0] != -1 && !is_undefined(buyNums[| selection[0]]))
		{
			if(global.equipCodes[global.party[bd,0], getItemDat(buyNums[| selection[0]], 20)])
			{
				//statPreviewSetup(global.party[bd,0], buyNums[| selection[0]], equipmentSlot);
			}
		}
	}*/
	infoLoaded = true;
}

maxSel[1] = stockSize();
if(mode == 0)
{
	if(key(5))
	{
		sound(snd_select);
		selection[buyOrSell]--;
		if(selection[buyOrSell] < 0) 
		{
			shopScroll[buyOrSell] = maxSel[buyOrSell] - maxDisp+1;
			if(shopScroll[buyOrSell] < 0) shopScroll[buyOrSell] = 0;
			selection[buyOrSell] = maxSel[buyOrSell];
		}
		if(selection[buyOrSell] < shopScroll[buyOrSell])
		{
			shopScroll[buyOrSell]--;
		}
		
		
	}
	
	if(key(7))
	{
		sound(snd_select);
		selection[buyOrSell]++;
		if(selection[buyOrSell] > maxSel[buyOrSell]) 
		{
			shopScroll[buyOrSell] = 0;
			selection[buyOrSell] = 0;
		}
		if(selection[buyOrSell] > shopScroll[buyOrSell]+maxDisp-1)
		{
			shopScroll[buyOrSell]++
		}
		
		
	}
	if(key(9))
	{
		sound(snd_select);
		count = 0;
		countMax = 99-getItemCount(buyNums[| selection[0]]);
		mode = 1;
		
	}
	if(key(10))
	{
		sound(snd_select);
		global.control = true;
	    global.line = -2;
	    global.inDial = false;
		parent.state = 0;
		instance_destroy();
	}
}

if(mode == 1)
{
	if(countMax == 0)
	{
		mode = 0;
	}
	if(key(1))
	{
		sound(snd_select);
		count++;
		if(count > countMax) count = 1;
	}
	if(key(3))
	{
		sound(snd_select);
		count--;
		if(count < 1) count = countMax;
	}
	if(key(9))
	{
		sound(snd_select);
		
		if(checkCraftable(craftCosts[selection[0]], count))
		{
			craft(buyNums[| selection[0]], craftCosts[selection[0]], count);
			generateSortedInventory(sortedInventory);
			global.events[flags[| selection[0]]] = true;
			message = thankTxt;
		}
		else
		{
			message = brokeTxt;
		}

		
		timeCount = timeEnd;
		mode = 2;
	}
	if(key(10))
	{
		sound(snd_select);
		mode = 0;
		count = 1;
	}
	if(count == 0) count = 1;
}

if(mode == 2)
{
	timeCount--;
	if(timeCount <= 0 || key(9))
	{
		count = 1;
		mode = 0;
	}
}


