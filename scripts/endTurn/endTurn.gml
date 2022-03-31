function endTurn() {
	
	if(!global.gameOver){
		clearDamageTokens(global.top);
		clearTargetToken();
		global.turnPhase = 0;
		global.multicast = 0;
	
		//refresh ability
		if(global.top.conds[0] == 0 && checkAbBatt(global.top, 107)){
			applyStatus(target, 16, 0);
			applyStatus(target, 21, 0);
			applyStatus(target, 32, 0);
			applyStatus(target, 17, 0);
			applyStatus(target, 19, 0);
			applyStatus(target, 38, 0);
			applyStatus(target, 41, 0);
		}
	
		//attempt to break out of paralysis (if paralyzed)
		if(global.top.conds[17] > 0){
			breakout = irandom_range(1,30);
			if(breakout+global.top.wis > global.top.conds[17] || breakout > 27){
				deltaStatus(global.top, 17, -global.top.conds[17]);
			}
		}
	
		waterBonus = 1;
		if(checkAbBatt(global.turns[0,0], 212) && global.field == 2){
			waterBonus = 0.5;
		}
	
		if(global.top.conds[43] > 0){
			global.forceReady = true;
			doDamage(global.top, global.top.conds[43])
			global.top.conds[43] = 0;
		
		}
	
	
		waitRefresh =  round((global.turns[0,0].wait*(1-global.turns[0,0].conds[23])*(global.turns[0,0].conds[22]+1)*waterBonus));
		global.turns[0,1] = waitRefresh;
		global.order[| global.lookAhead-1] = turnSort();
	

		global.turnCount++;

		global.turnPhase = 0;
		global.selLevel = 0;
		global.gridSelect[1] = 0;
		global.gridSelect[0] = 0;
		global.PorEgrid = 0;

		global.anim = 0;
		global.animTimeMax = 0;
		global.animTime = 60;
		global.actSelection = 0;
		global.scrollLevel = 0;

		global.targStore = -1;
		global.freeCast = false;


		ds_stack_clear(global.actionBuffer);




		for(r = 0; r < ds_list_size(global.ally); r++)
		{
			currentCharacter = global.ally[| r];
			//Make sure hidden characters remain hidden
			if(currentCharacter.conds[20]){
				if(!canHide(currentCharacter)) applyStatus(currentCharacter, 20, 0);
			}
		
			//poison damage
			if(currentCharacter.conds[16] > 0){
				global.forceReady = true;
			
				poisonDamage = round(currentCharacter.maxHp*global.ally[| r].conds[16])*(global.deltaT/50);
				if(poisonDamage < 1) poisonDamage = 1;
			
				doDamage(currentCharacter, poisonDamage);
			}
			if(global.ally[| r].curHp <= 0)
			{
				//soul eater ability
				if(global.ally[| r].conds[0] == 0){
					soulEaterCheck();
				}
				global.ally[| r].conds[0] = 1;
			
				if(global.ally[| r].conds[39] > 0){
					global.ally[| r].conds[0] = 0;
					global.ally[| r].curHp = 1;
					global.ally[| r].conds[39] = 0;
				}
			
				
			
				//end status effects that do not persist through death
				global.ally[| r].conds[16] = 0;
				global.ally[| r].conds[32] = 0;
				global.ally[| r].conds[33] = 0;
			}
		}

		for(r = 0; r < ds_list_size(global.enemy); r++)
		{
			currentCharacter = global.enemy[| r]
			//poison damage
			if(currentCharacter.conds[16] > 0){
				global.forceReady = true;
			
				poisonDamage = round(currentCharacter.maxHp*currentCharacter.conds[16])*(global.deltaT/50);
				if(poisonDamage < 1) poisonDamage = 1;
			
				doDamage(currentCharacter, poisonDamage);
			}
			if(global.enemy[| r].curHp <= 0)
			{
				//soul eater ability
				if(global.enemy[| r].conds[0] == 0){
					soulEaterCheck();
				}
			
				if(global.enemy[| r].deadSprite == spr_nothing){
					hello = global.enemy[| r].conds[0] == 0;
					if(global.enemy[| r].conds[0] == 0){
						enemyKill(global.enemy[| r]);
					}
				}
			
				if(global.enemy[| r].conds[39] > 0){
					global.enemy[| r].conds[0] = 0;
					global.enemy[| r].curHp = 1;
					global.enemy[| r].conds[39] = 0;
				}
			
				global.enemy[| r].conds[0] = 1;
				global.enemy[| r].conds[16] = 0;
				global.enemy[| r].conds[32] = 0;
				global.enemy[| r].conds[33] = 0;
			}
		}

		global.top = global.order[| 0];
		if(!is_undefined(global.top.name)){
			//overdrive ability
			if(checkAbBatt(global.top, 429)){
				deltaStatus(global.top, 3, 4);
			}
		
			//twincast ability
			global.multicast = checkAbBatt(global.top, 216);
	
			if(global.top.conds[35] > 0) global.top.conds[35]--;
			if(global.top.conds[36] > 0) global.top.conds[36]--;
			if(global.top.conds[37] > 0) global.top.conds[37]--;
	
			global.top.hasActed = true;
	

			if(global.top.player)
			{
				ds_list_copy(global.powers, global.top.num.powers);
	
				ds_list_clear(global.powerN);
				for(w = 0; w < ds_list_size(global.powers); w++)
				{
					ds_list_add(global.powerN, powerName(global.powers[| w]));
				}
			}
			else
			{
				ds_list_copy(global.powers, global.top.powers);
				ds_list_clear(global.powerN);
				for(w = 0; w < ds_list_size(global.powers); w++)
				{
					ds_list_add(global.powerN, powerName(global.powers[| w]));
				}
			}
		}


		defeat = true;
		for(s = 0; s < ds_list_size(global.ally); s++)
		{
			if(global.ally[| s].conds[0] == 0)
			{
				defeat = false;
			}
		}
		if(defeat){
			battleReport = true;
			global.gameOver = true;
		}else{
			eWin = true

			for(s = 0; s < ds_list_size(global.enemy); s++)
			{
				if(global.enemy[| s].conds[0] == 0)
				{
					eWin = false;
				}
			}
			if(eWin)
			{
				if(global.eventEnc > -1)
				{
					global.events[global.eventEnc] = true;
					global.eventEnc = -1;
				}
				if(!global.battleOver)battleResolve();
				battleReport = true;
			}
			else
			{
				pWin = true

				for(t = 0; t < ds_list_size(global.ally); t++)
				{
					if(global.ally[| t].conds[0] == 0)
					{
						pWin = false;
					}
				}
				if(pWin)
				{
					if(!global.battleOver)battleResolve();
					battleReport = true;
				}
			}
		}
	}
}
