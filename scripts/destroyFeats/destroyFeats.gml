function destroyFeats() {
	hello = 0;
	for(bb = 0; bb <= 28; bb++)
	{
		if(obj_pauseManager.actFeats[bb] != -1)
		{
			instance_destroy(obj_pauseManager.actFeats[bb])
			obj_pauseManager.actFeats[bb] = -1
		}
	}


}
