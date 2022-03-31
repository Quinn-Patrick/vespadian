// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadPersonalities(){
	persoFile = file_text_open_read("files/personalities.txt");
	persoNames = ds_list_create();
	persoData = ds_list_create();
	
	while(!file_text_eof(persoFile)){
		newPersoName = file_text_read_string(persoFile);
		file_text_readln(persoFile);
		
		newPersoData = [0,0,0,0,0,0,0,0];
		newPersoDataString =  cleanString(file_text_read_string(persoFile));
		file_text_readln(persoFile);
		
		numberString = "";
		persoDataIndex = 0;
		for(i = 1; i < string_length(newPersoDataString); i++){
			if(string_char_at(newPersoDataString, i) == " "){
				newPersoData[persoDataIndex] = real(numberString);
				persoDataIndex++
				numberString = "";
			}
			
			numberString += string_char_at(newPersoDataString, i);
		}
		
		ds_list_add(persoNames, newPersoName);
		ds_list_add(persoData, newPersoData);
		
	}
	
	return([persoNames, persoData]);
}