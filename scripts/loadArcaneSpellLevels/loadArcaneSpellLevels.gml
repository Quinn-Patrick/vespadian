// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadArcaneSpellLevels(){
	arcaneFile = file_text_open_read("files/classes/wizardSpellList.txt");
	arcaneSpellLevels = ds_map_create();
	while(!file_text_eof(arcaneFile)){
		spellId = file_text_read_real(arcaneFile);
		file_text_readln(arcaneFile);
		spellLevel = file_text_read_real(arcaneFile);
		file_text_readln(arcaneFile);
		
		ds_map_add(arcaneSpellLevels, spellId, spellLevel);
		
	}
	
	file_text_close(arcaneFile);
	return arcaneSpellLevels;
}