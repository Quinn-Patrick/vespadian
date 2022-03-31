/// @description Insert description here
// You can write your code in this editor
characterCreators = ds_list_create();
focus = 0;
menuSelect = 0;
numberOfCharacters = 0;
if(room == rm_partyCreator) numberOfCharacters = 4;
else if(room == rm_partyEditor) numberOfCharacters = 1;