function statContTest(argument0, argument1, argument2, argument3) {
	//offense = argument0;
	//defense = argument1;

	offStat = argument0;
	defStat = argument1;

	offMod = argument2;
	defMod = argument3;

	offRand1 = offStat + gauss(random_range(-1,1), offStat/3, offMod);
	defRand1 = defStat + gauss(random_range(-1,1), defStat/3, defMod);

	/*if(checkAbBatt(offense, 101))
	{
		offRand2 = offStat + gauss(random_range(-1,1), offStat/3, offMod);
		if(offRand2 > offRand1) offRand1 = offRand2;
	}*/

	/*if(checkAbBatt(defense, 101))
	{
		defRand2 = defStat + gauss(random_range(-1,1), defStat/3, defMod);
		if(defRand2 > defRand1) defRand1 = defRand2;
	}*/

	defWin = defRand1 >= offRand1;

	return defWin;


}
