function dialogue(file, firstLine, lastLine) {
	file = cleanString("files/"+file);
	global.control = false;



	words = file_text_open_read(file);
	for(i=0; i<(lastLine-firstLine+1); i++)
	{
		lines[i] = firstLine+i;
	}
	if(!obj_dialogueHandler.initialized){
	
		for(i = 0; i < (lastLine-firstLine+1); i++){
			obj_dialogueHandler.contentArray[i] = readText(file, lines[i]);
		}
		obj_dialogueHandler.initialized = true;
	}
	file_text_close(words);

	if(global.line == -2)
	{
	    global.line = lines[0];
	}
	content = obj_dialogueHandler.contentArray[global.line-firstLine];





	contProc = string_copy(content,0, global.dialPos);

	if(global.dialPos == 0) sound(snd_select);
	global.dialPos+= global.textSpeed;
		
	if(global.dialPos % 6 == 0 && global.dialPos < string_length(content)) sound(snd_text);


	ready = showText(contProc);

	if(key(9) && global.dialPos >= string_length(content))
	{
		global.dialPos = 0;
	    global.line++;
	    global.textTime = 0;
	    if(global.line > lines[lastLine-firstLine])
	    {
			if(global.event == -1)
			{
				obj_dialogueHandler.initialized = false;
				obj_dialogueHandler.contentArray = [];
		        global.control = true;
		        global.line = -2;
		        global.inDial = false;
				instance_destroy(global.textObject);
				state = 2;
			}
			else
			{
				obj_dialogueHandler.initialized = false;
				obj_dialogueHandler.contentArray = [];
				global.line = -2;
				global.inDial = false;
				instance_destroy(global.textObject);
				return true;
			}
	    }
    
	}



}
