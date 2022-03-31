// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadKeyboard(keyboardFilename){
	keyboardFile = file_text_open_read(keyboardFilename);
	keyboard = ds_list_create();
	ds_list_add(keyboard, ds_list_create());
	rowNumber = 0;
	while(!file_text_eof(keyboardFile)){
		row = file_text_read_string(keyboardFile);
		for(i = 1; i < string_length(row) + 1; i++){
			if(string_char_at(cleanString(row), i) != " "){
				ds_list_add(keyboard[| rowNumber], string_char_at(cleanString(row), i));
			}
		}
		ds_list_add(keyboard, ds_list_create());
		file_text_readln(keyboardFile);
		rowNumber++;
	}
	
	ds_list_add(keyboard, ds_list_create());
	ds_list_add(keyboard[| rowNumber], "Shift");
	
	ds_list_add(keyboard[| rowNumber], "Space");
	ds_list_add(keyboard[| rowNumber], "Back");
	ds_list_add(keyboard[| rowNumber], "Done");
	
	file_text_close(keyboardFile);
	return keyboard;
}