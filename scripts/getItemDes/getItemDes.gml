function getItemDes(argument0) {
	item = argument0;

	if(item == -1)
	{
		if(global.paused == 1)
		{
			if(itemMenu > 0)
				return "Empty. Pick an item under 'Stock,' select 'Swap,' and then select this position to ready that item for battle.";
			else
				return "Empty.";
		}
		else
		{
			return "Empty.";
		}
	}

	descriptionFile = file_text_open_read("files/itemData/itemDes.txt");

	while(!file_text_eof(descriptionFile))
	{
		if(real(file_text_readln(descriptionFile)) == item)
		{
			out = file_text_readln(descriptionFile);
			file_text_close(descriptionFile);
			return(cleanString(out));
		}
		file_text_readln(descriptionFile);
	}

	file_text_close(descriptionFile);

	return "Unknown item. How mysterious!";


}
