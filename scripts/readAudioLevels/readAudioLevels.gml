// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function readAudioLevels(){
	global.audioGain = ds_map_create();
	audioGainFile = file_text_open_read("files/sfxGain.txt");
	while(!file_text_eof(audioGainFile)){
		readKey = asset_get_index(cleanString(file_text_read_string(audioGainFile)));
		file_text_readln(audioGainFile);
		readValue  = file_text_read_real(audioGainFile);
		file_text_readln(audioGainFile);
		ds_map_add(global.audioGain, readKey, readValue);
	}
	file_text_close(audioGainFile);
}