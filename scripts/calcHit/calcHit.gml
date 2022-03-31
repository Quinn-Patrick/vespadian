function calcHit(argument0, argument1, argument2, argument3) {
	attack = argument0;
	defend = argument1;

	acc = argument2;
	evad = argument3;

	if(checkAbBatt(attack, 310)) return true;


	diff = evad - acc;
	sum = evad + acc;
	rollToHit = random_range(0,101);

	if(attack.conds[21] == 1)
	{
		blindRoll = random_range(0,1000);
		if(blindRoll < 500)
			return false;
	}
	if(checkAbBatt(defend, 316)){
		blindRoll = random_range(0,1000);
		if(blindRoll < 500)
			return false;
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

	if(rollToHit >= need)
		return true;
	else
		return false;


}
