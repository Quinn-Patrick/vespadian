// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadPowerData(){
	powersFile = file_text_open_read("files/powerData.txt");
	powerData = ds_map_create();
	while(!file_text_eof(powersFile)){
		powerId = file_text_read_real(powersFile);
		file_text_readln(powersFile);
		powerCost = file_text_read_real(powersFile);
		file_text_readln(powersFile);
		powerDescription = file_text_read_string(powersFile);
		file_text_readln(powersFile);
		
		ds_map_add(powerData, powerId, [powerCost, powerDescription]);
		
	}
	
	file_text_close(powersFile);
	return powerData;
}