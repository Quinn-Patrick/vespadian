// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadAbilityData(){
	abilitiesFile = file_text_open_read("files/abilities.txt");
	abilityData = ds_map_create();
	while(!file_text_eof(abilitiesFile)){
		abilityId = file_text_read_real(abilitiesFile);
		file_text_readln(abilitiesFile);
		abilityCost = file_text_read_real(abilitiesFile);
		file_text_readln(abilitiesFile);
		abilityTitle = file_text_read_string(abilitiesFile);
		file_text_readln(abilitiesFile);
		abilityDescription = file_text_read_string(abilitiesFile);
		file_text_readln(abilitiesFile);
		
		
		ds_map_add(abilityData, abilityId, [abilityCost, abilityTitle, abilityDescription]);
		
	}
	
	file_text_close(abilitiesFile);
	return abilityData;
}