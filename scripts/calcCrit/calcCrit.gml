function calcCrit(argument0, argument1, argument2, argument3) {
	attack = argument0;
	defend = argument1;

	acc = argument2;
	evad = argument3;

	diff = evad - acc;
	sum = evad + acc;
	rollToHit = random_range(0,101);

	if(checkAbBatt(attack, 312)){
		instance_create_depth(0,0, -3, obj_critFlash)
		return true;
	}

	if(checkAbBatt(attack, 401) && defend.conds[32] > 0){
		instance_create_depth(0,0, -3, obj_critFlash)
		return true;
	}

	if(diff == 0)
	{
		need = 10;
	}
	else if (diff > 0)
	{
		need = (((sqr(diff/sum))*90)+10)
	}
	else if(diff < 0)
	{
		need = (power(((diff/sum)+1),(1/3)))*10
	}


	need += 85;

	if(checkAbBatt(attack, 4) && getItemDat(attack.eq[0], 1) == 1) need *= 0.5;
	need *= 1/(checkAbBatt(attack, 454)+1);
	if(checkAbBatt(attack, 313) && attack.conds[20] == 1) need *= 0.5;

	if(rollToHit >= need || rollToHit >= 98)
	{
		instance_create_depth(0,0, -3, obj_critFlash)
		return true;
	}
	else
		return false;


}
