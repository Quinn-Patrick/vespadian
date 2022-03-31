function encResolve() {
	if(ds_list_find_index(obj_system.noEncounterTiles, [global.ovx, global.ovy]) == -1){
		if(threat < global.maxThreat)threat += global.threatGrowth;

		if(random_range(0,200) < threat && threat > 2 && (room == rm_worldMap || global.map[global.ovx, global.ovy] != 256))
		{
			if((global.roomType == 0 || onWorldMap()) && !checkAbFieldParty(445))
			{
				threat = 0;
				encRoll = random_range(0,100);
				for(i = 0; i < ds_list_size(global.encP); i++)
				{
					if(i == 0) low = 0;
					else low = global.encP[| i-1];
					if(encRoll < global.encP[| i] && encRoll > low)
					{
						encNum = i;
						encSearch = 0;
						troupeSlot = 0;
						for(j = 0; j < ds_list_size(global.encs); j++)
						{
							if(encSearch == encNum && global.encs[| j] != -1)
							{
								global.troupe[troupeSlot, 0] = global.encs[| j];
								j++;
								global.troupe[troupeSlot, 1] = global.encs[| j];
								j++;
								global.troupe[troupeSlot, 2] = global.encs[| j];
								troupeSlot++;
					
							}
							if(global.encs[| j] == -1)
							{
								encSearch++;
								if(encSearch > encNum)
								{
									global.troupe[troupeSlot, 0] = -1;
									break;
								}
							}
						}
						global.musicCategory = 1;
						instance_create_depth(0,0,-100000,obj_battleStarter);
					}
				}
			}
		}
	}
}
