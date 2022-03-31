///Battle Logic
global.top = global.turns[0,0];

battleGlobalTimer++;
battleSwitcher *= -1;

if(global.top.conds[0] == 1)
{
	endTurn();
}

depth = -1;

if(battleGlobalTimer > introTime && global.turnPhase == -1) global.turnPhase = 0;

if(battleOn)
{
	if(global.top.conds[0] != 1)
	{
		if(global.turnPhase == 0)
		{
			if(global.top.conds[19] > 0){
				global.top.conds[19]--;
				endTurn();
			}
			else if(global.top.conds[17] > 0){
				endTurn();
			}
			else if(global.top.conds[32] > 0){
				wakeupSave = random_range(0,100);
				wakeupDC = 100-(((global.top.wis/2)/(global.top.conds[32]*2))*100);
				if(wakeupSave > wakeupDC) applyStatus(global.top, 32, 0);
				else endTurn();
			}
			else if(global.top.player)
			{
				action = actSelectS();
				if(action != -1 && action != -2)
				{
					global.turnPhase = 1;
				}
			}	
			else
			{
				action = aiSwitch(global.top.ai);
				global.turnPhase = 1;
			}
		}

		if(global.turnPhase == 1)
		{
			if(action == -2)
			{
				global.turnPhase = 2;
				global.animTime = 1;
			
			}
			else if(action == -3)
			{
				global.anim = -1;
				global.top.conds[35]++;
				//global.holding = true;
				global.turnPhase = 2;
			}
			else if(action == -4)
			{
				global.anim = -1;
				if(flee(global.top))
				{
					if(global.eventEnc == -1){
						global.xpTot = 0;
						endBattle();
					}
					else 
					{
						global.animTime = 60;
						global.turnPhase = 2;
					}
				}
				else
				{
					global.animTime = 60;
					paceBufferTimer = 0;
					global.turnPhase = 2;
				}
			}
			else if(action == 0)
			{
				global.selPowCost = 0;
				dam = cmd_fight(global.top);
				if(dam != -1)
				{
					global.turnPhase = 2;
				}
			}
			else if(action > 0)
			{
				powerChoose(action, global.top);
				
			}
			else if(action < -4)
			{
				battleItemSwitch(getItemDat(action*-1, 25), global.top.num, global.actSelection+global.scrollLevel);
			}
		}
		

		if(global.turnPhase == 2)
		{
			if(global.animTime == global.animTimeMax){
				if(action > 1 && action < 1000){
					sendMessage(global.top.name, powerName(action));
				}
			}
			global.atkPowMod = 0;
			if(global.animTime < 1)
			{
				
				global.animTime = 60;
				if(ds_stack_empty(global.actionBuffer))
				{
					global.turnPhase = 3;
				}
				else
				{
					global.turnPhase = 1;
					action = ds_stack_pop(global.actionBuffer);
				}
			}
		}
		
		if(global.turnPhase == 3){
			if(paceBufferTimer > paceBufferLimit){
				paceBufferTimer = 0;
				endTurn();
			}
			paceBufferTimer++;
		}
	}
}

if(keyboard_check(vk_shift)){
	
}