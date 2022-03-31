function learnAbility(argument0, argument1) {
	partyMem = argument0;
	abId = argument1;

	/*for(i = 0; i < ds_list_size(partyMem.abilities); i++){
		if(ds_list_find_value(partyMem.abilities, i)[0] == abId) return false; //don't teach an ability that's already known (or do)
	}*/

	ds_list_add(partyMem.abilities, [abId, false]);

	abFile = file_text_open_read("files/abilities.txt");

	while(real(file_text_readln(abFile)) != abId)
	{
		file_text_readln(abFile);
		file_text_readln(abFile);
		file_text_readln(abFile);
	}
	file_text_close(abFile);
}
