/// @description Insert description here
// You can write your code in this editor
global.control = false;
ticker++;
if(!infoLoaded)
{
	shopfile = file_text_open_read(shopfileName);
	thankTxt = file_text_readln(shopfile);
	brokeTxt = file_text_readln(shopfile);
	while(!file_text_eof(shopfile))
	{
		
		itemIden = real(file_text_readln(shopfile));
		//itemIden will be -1 if the incoming item is locked behind a flag (like the dynamite)
		if(itemIden > -1){
			//if it's greater than -1, proceed as normal
			ds_list_add(buyNums, itemIden);
			ds_list_add(buyCosts, real(file_text_readln(shopfile))*getItemDat(itemIden,27));
			ds_list_add(buyNames, getItemDat(itemIden,-1));
			ds_list_add(buyDesc, getItemDes(itemIden));
		}else{
			//otherwise go through the motions
			shopFlag = real(file_text_readln(shopfile)); //the flag that it's locked behind will be the next line
			if(global.events[shopFlag]){
				itemIden = real(file_text_readln(shopfile)); //the rest is the same as above
				ds_list_add(buyNums, itemIden);
				ds_list_add(buyCosts, real(file_text_readln(shopfile))*getItemDat(itemIden,27));
				ds_list_add(buyNames, getItemDat(itemIden,-1));
				ds_list_add(buyDesc, getItemDes(itemIden));
			}else{ //if the flag is false, skip the next couple lines
				file_text_readln(shopfile);
				file_text_readln(shopfile);
			}
		}
	}
	maxSel[0] = ds_list_size(buyNums)-1;
	
	infoLoaded = true;
	file_text_close(shopfile);
	itemType = getItemDat(buyNums[| selection[0]],0);
	switch(itemType){
		case 2: equipmentSlot = 0; break;
		case 3: equipmentSlot = 1; break;
		case 4: equipmentSlot = 0; break;
		case 5: equipmentSlot = 2; break;
		case 6: equipmentSlot = 3; break;
		case 7: equipmentSlot = 4; break;
	}
	
	/*for(bd = 0 ; bd < 4; bd++)
	{
		if(!is_undefined(global.party[bd]) && !is_undefined(buyNums[| selection[0]]))
		{
			if(global.party[bd].equipCodes[getItemDat(buyNums[| selection[0]], 20)])
			{
				//statPreviewSetup(global.party[bd,0], buyNums[| selection[0]], equipmentSlot);
			}
		}
	}*/
}

maxSel[1] = stockSize();
if(mode == 0)
{
	if(key(1) || key(3))
	{
		sound(snd_select);
		if(buyOrSell == 0)
		{
			buyOrSell = 1;
		}
		else buyOrSell = 0;
	}
	
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
		itemType = getItemDat(buyNums[| selection[0]],0);
		switch(itemType){
			case 2: equipmentSlot = 0; break;
			case 3: equipmentSlot = 1; break;
			case 4: equipmentSlot = 0; break;
			case 5: equipmentSlot = 2; break;
			case 6: equipmentSlot = 3; break;
			case 7: equipmentSlot = 4; break;
		}
		for(bd = 0 ; bd < 4; bd++)
		{
			if(!is_undefined(global.party[bd]) && !is_undefined(buyNums[| selection[0]]))
			{
				if(global.party[bd].equipCodes[getItemDat(buyNums[| selection[0]], 20)])
				{
					//statPreviewSetup(global.party[bd,0], buyNums[| selection[0]], equipmentSlot);
				}
			}
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
		itemType = getItemDat(buyNums[| selection[0]],0);
		switch(itemType){
			case 2: equipmentSlot = 0; break;
			case 3: equipmentSlot = 1; break;
			case 4: equipmentSlot = 0; break;
			case 5: equipmentSlot = 2; break;
			case 6: equipmentSlot = 3; break;
			case 7: equipmentSlot = 4; break;
		}
		for(bd = 0 ; bd < 4; bd++)
		{
			if(!is_undefined(global.party[bd]) && !is_undefined(buyNums[| selection[0]]))
			{
				if(global.party[bd].equipCodes[getItemDat(buyNums[| selection[0]], 20)])
				{
					//statPreviewSetup(global.party[bd,0], buyNums[| selection[0]], equipmentSlot);
				}
			}
		}
	}
	if(key(9))
	{
		sound(snd_select);
		if(buyOrSell == 0)
		{
			count = 0;
			countMax = 99-getItemCount(buyNums[| selection[0]]);
			storeCost = buyCosts[| selection[0]];
			mode = 1;
		}
		else if(getItemDat(global.stock[selection[1],0], 0) != 10)
		{
			hello = getItemDat(global.stock[selection[1],0], 0);
			count = 0;
			countMax = global.stock[selection[1],2];
			storeCost = getItemDat(global.stock[selection[1],0], 27);
			mode = 1;
		}
		
		
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
		if(buyOrSell == 0)
		{
			if(global.money >= storeCost*count)
			{
				global.money -= storeCost*count;
				stockItem(buyNums[| selection[0]], count);
				message = thankTxt;
			}
			else
			{
				message = brokeTxt;
			}
		}
		else
		{
			global.money += (storeCost/2)*count;
			itemDecrement(selection[1], count);
			message = thankTxt;
		}
		timeCount = timeEnd;
		mode = 2;
	}
	if(key(10))
	{
		sound(snd_select);
		mode = 0;
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

