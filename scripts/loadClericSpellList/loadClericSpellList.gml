// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadClericSpellList(){
	clericSpellList = ds_list_create();
	clericSpellFile = file_text_open_read("files/classes/clericSpellList.txt");
	while(!file_text_eof(clericSpellFile)){
		ds_list_add(clericSpellList, real(file_text_readln(clericSpellFile)));
	}
	return clericSpellList
}