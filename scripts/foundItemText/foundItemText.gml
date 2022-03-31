function foundItemText(argument0, argument1, argument2, argument3) {
	file = argument0;
	firstLine = argument1;
	lastLine = argument2;
	itemName = argument3;

	global.control = false;

	for(i=0; i<(lastLine-firstLine+1); i++)
	{
	    lines[i] = firstLine+i;
	}

	if(global.line == -2)
	{
	    global.line = lines[0];
	}
	//draw_text(300,332,string(global.line)+", "+string(lines[lastLine-firstLine]+1));
	//stockTextFile = file_text_open_read(file);
	content = readText(file, global.line) + " " + string(itemName) + "!";
	//file_text_close(words);

	ready = showText(content);

	if(key(9) && ready)
	{
	    global.line++;
	    global.textTime = 0;
	    if(global.line > lines[lastLine-firstLine])
	    {
	        //draw_text(300,300, "oops!")
	        global.control = true;
	        global.line = -2;
	        global.inDial = false;
	    }
    
	}



}
