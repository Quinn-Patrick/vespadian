// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getClassFile(classId){
	classFileName = "files/classes/fighter.txt";
	switch(classId){
		case 0 : classFileName = "files/classes/fighter.txt"; break;
		case 1 : classFileName = "files/classes/wizard.txt"; break;
		case 2 : classFileName = "files/classes/thief.txt"; break;
		case 3 : classFileName = "files/classes/cleric.txt"; break;
		case 4 : classFileName = "files/classes/ranger.txt"; break;
		case 5 : classFileName = "files/classes/bard.txt"; break;
	}
	return classFileName;
}