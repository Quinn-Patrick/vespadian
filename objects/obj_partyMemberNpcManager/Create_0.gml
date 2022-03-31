/// @description Insert description here
// You can write your code in this editor
availableCharacters = ds_list_create();
ds_list_copy(availableCharacters, global.characterBench);
charactersAsNPCs[9] = undefined;
arrayIndex = 0;
while(ds_list_size(availableCharacters) > 0)
{
	charactersAsNPCs[arrayIndex] = chooseRandomListElement(availableCharacters);
	ds_list_delete(availableCharacters, ds_list_find_index(availableCharacters, charactersAsNPCs[arrayIndex]));
	arrayIndex++;
	if(arrayIndex == 10) break;
}