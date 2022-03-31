function readPromptText(argument0, argument1) {
	text = argument0;
	li = argument1;


	output[3] = ""
	var p;

	for(p=1;p<(li*2);p++)
	{   
	    file_text_readln(text);
	    if(p==(li*2)-1)
	    {
	        output[0] = file_text_readln(text);
			output[0] = string_replace(output[0], "\n", "");
			output[0] = string_replace(output[0], "\r", "");
			output[1] = file_text_readln(text);
			output[1] = string_replace(output[1], "\n", "");
			output[1] = string_replace(output[1], "\r", "");
			output[2] = file_text_readln(text);
			output[2] = string_replace(output[2], "\n", "");
			output[2] = string_replace(output[2], "\r", "");
			output[3] = file_text_readln(text);
			output[3] = string_replace(output[3], "\n", "");
			output[3] = string_replace(output[3], "\r", "");
			output[4] = file_text_readln(text);
			output[4] = string_replace(output[4], "\n", "");
			output[4] = string_replace(output[4], "\r", "");
			file_text_close(text);
	        return(output);
	    }
    
		file_text_readln(text);
		file_text_readln(text);
	
    
	}



}
