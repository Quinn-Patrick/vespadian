function prompt(argument0, argument1, argument2, argument3) {
	file = argument0;
	firstLine = argument1;
	lastLine = argument2;
	numberOfOptions = argument3;
	
	file = cleanString("files/"+file);

	global.control = false;

	for(i=0; i<(lastLine-firstLine+1); i++)
	{
	    lines[i] = firstLine+i;
	}

	if(global.line == -2)
	{
	    global.line = lines[0];
	}
	content[3] = ""
	words = file_text_open_read(file);
	content = readPromptText(words, global.line);
	file_text_close(words);

	contProc = "";

	for(i = 0; i < global.dialPos; i++)
	{
		contProc += string_char_at(content[0], i+1);
	}
	if(global.dialPos == 0) sound(snd_select);
	
	global.dialPos+= global.textSpeed;
	
	if(global.dialPos % 6 == 0 && global.dialPos < string_length(content[0])) sound(snd_text);
		
	if(key(5)){
		sound(snd_select);
		global.promptSelection--;
		if(global.promptSelection < 0) global.promptSelection = numberOfOptions-1;
	}
	else if(key(7)){
		sound(snd_select);
		global.promptSelection++;
		if(global.promptSelection > numberOfOptions-1) global.promptSelection = 0;
	}

	ready = showText(contProc);

	screenPosX = obj_camera.x;
	screenPosY = obj_camera.y;

	if(global.dialPos >= string_length(content[0])){
		draw_sprite(spr_promptBox, 0, screenPosX+800, screenPosY+544);
		for(i = 0; i < numberOfOptions; i++){
			draw_text(screenPosX+816, screenPosY+534+(16*(i+1)), content[i+1]);
		}
	
		draw_sprite(spr_cursor, 0, screenPosX+790, screenPosY+534+(16*(global.promptSelection+1)));
	}





	if(key(9) && global.dialPos >= string_length(content[0]))
	{
		sound(snd_select);
		global.dialPos = 0;
	    global.line++;
	    global.textTime = 0;
	    if(global.line > lines[lastLine-firstLine])
	    {
			if(global.event == -1)
			{
		        global.control = true;
		        global.line = -2;
		        global.inDial = false;
				state = 2;
			}
			else
			{
				global.line = -2;
				global.inDial = false;
				return global.promptSelection;
			}
	    }
    
	}



}
