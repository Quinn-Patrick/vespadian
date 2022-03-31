// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadPowerNames(){
	powersFile = file_text_open_read("files/powers.txt");
	powerNames = ds_map_create();
	while(!file_text_eof(powersFile)){
		powerId = file_text_read_real(powersFile);
		file_text_readln(powersFile);
		powerTitle = file_text_read_string(powersFile);
		file_text_readln(powersFile);
		
		ds_map_add(powerNames, powerId, powerTitle);
		
	}
	
	file_text_close(powersFile);
	return powerNames;
}