function ai0() {
	actOut = 0;
	actOut = irandom_range(0, ds_list_size(global.top.powers));
	if(actOut != 0)
	{
		return global.top.powers[| actOut - 1];
	}

	return actOut;


}
