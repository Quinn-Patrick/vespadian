//Returns the number of party members that are eligible for gaining exp.
function totalParty() {
	retu = 0;
	for(aj = 0; aj < ds_list_size(global.ally); aj++)
	{
		if(global.ally[| aj].conds[0] == 0 && global.ally[| aj].lvl < global.levelCap && global.ally[| aj].num.classLevels[global.ally[| aj].num.class] < 50)
		{
			retu++;
		}
	}
	return retu;


}
