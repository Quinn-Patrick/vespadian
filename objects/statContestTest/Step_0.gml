/// @description Insert description here
// You can write your code in this editor
defWins = 0;

//if(key(9))
//{
	ds_list_add(tests, statContTest(offStat, defStat, offMod, defMod));
	total++;
//}

for(i = 0; i < ds_list_size(tests); i++)
{
	if(tests[| i] == true) defWins++;
}
