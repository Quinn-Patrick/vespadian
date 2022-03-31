function readText(argument0, argument1) {
	text = file_text_open_read(argument0);
	li = argument1;

	var p;
	for(p=0;p<(li*2);p++)
	{   
    
	    if(p==(li*2)-1)
	    {
	        output = file_text_read_string(text);
	        file_text_close(text);
			
	        return(cleanString(processString(output)));
	    }
	    file_text_readln(text);
    
	}
	return "";



}
