function powerChoose(argument0, argument1) {
	powerId = argument0;
	commandUser = argument1;
	
	global.currentPower = powerId;

	switch(powerId)
	{
		case 1:
		cmd_defStance(commandUser);
		global.turnPhase = 2;
		break;
	
		case 2:
		ret = cmd_mercSwing(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 3:
		ret = cmd_bullCharge(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 4:
		cmd_fGuard(commandUser);
		global.turnPhase = 2;
		break;
	
		case 5:
		ret = cmd_empMight(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 7:
		ret = cmd_infalStrike(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 8:
		ret = cmd_elemAtk(commandUser, 0);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 9:
		ret = cmd_elemAtk(commandUser, 1);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 10:
		ret = cmd_elemAtk(commandUser, 2);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 11:
		ret = cmd_cleave(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 12:
		cmd_attStance(commandUser);
		global.turnPhase = 2;
		break;
		
		case 13:
		ret = cmd_xfight(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 101:
		cmd_hide(commandUser);
		global.turnPhase = 2;
		break;
	
		case 102:
		ret = cmd_steal(commandUser, 0);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 103:
		ret = cmd_mug(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 104:
		ret = cmd_steal(commandUser, 1);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 105:
		ret = cmd_multishot(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 201:
		cmd_radiantBurst(commandUser, 0);
		global.turnPhase = 2;
		break;
	
		case 202:
		ret = cmd_cur1(commandUser, 1000);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 203:
		ret = cmd_prayer(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 204:
		ret = cmd_lif1(commandUser, 1);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 205:
		ret = cmd_death(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 206:
		ret = cmd_poison(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 207:
		ret = cmd_necro(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 208:
		ret = cmd_lif1(commandUser, 4);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 209:
		ret = cmd_divBolt(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 210:
		cmd_radiantBurst(commandUser, 1);
		global.turnPhase = 2;
		break;
	
		case 211:
		cmd_curWind(commandUser, 3000, 0);
		global.turnPhase = 2;
		break;
	
		case 212:
		ret = cmd_cur1(commandUser, 2000);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 213:
		cmd_curWind(commandUser, 6000, 2);
		global.turnPhase = 2;
		break;
	
		case 214:
		ret = cmd_restore1(commandUser, 16);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 215:
		ret = cmd_restore1(commandUser, 21);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 216:
		ret = cmd_restore1(commandUser, 17);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 217:
		cmd_radiantBurst(commandUser, 2);
		global.turnPhase = 2;
		break;
	
		case 218:
		ret = cmd_sleep(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 219:
		ret = cmd_mindBlast(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 220:
		ret = cmd_goodStatus(commandUser, 36, 5);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 221:
		ret = cmd_lif1(commandUser, 6);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 222:
		ret = cmd_goodStatus(commandUser, 39, 1);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 223:
		ret = cmd_esuna1(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 224:
		ret = cmd_esuna2(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 225:
		cmd_bulwarkOfFaith(commandUser);
		global.turnPhase = 2;
		break;
		
		case 226:
		cmd_citadelOfFaith(commandUser);
		global.turnPhase = 2;
		break;
	
		case 301:
		ret = cmd_fire1(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 302:
		ret = cmd_earthTremor(commandUser, 100, 500, 0);
		global.turnPhase = 2;
		break;
	
		case 303:
		ret = cmd_riptide(commandUser, 50, 600);
		global.turnPhase = 2;
		break;
	
		case 304:
		ret = cmd_stormsong(commandUser);
		global.turnPhase = 2;
		break;
	
		case 305:
		ret = cmd_sundance(commandUser);
		global.turnPhase = 2;
		break;
	
		case 306:
		ret = cmd_heatwave(commandUser);
		global.turnPhase = 2;
		break;
	
		case 307:
		ret = cmd_coldsnap(commandUser);
		global.turnPhase = 2;
		break;
	
		case 313:
		ret = cmd_statBoost(commandUser, 7, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 314:
		ret = cmd_statBoost(commandUser, 8, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 315:
		ret = cmd_statBoost(commandUser, 9, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 319:
		ret = cmd_statBoost(commandUser, 13, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 320:
		ret = cmd_statBoost(commandUser, 12, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 321:
		ret = cmd_statBoost(commandUser, 11, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 322:
		ret = cmd_statBoost(commandUser, 1, 5);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 323:
		ret = cmd_statBoost(commandUser, 2, 3);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 324:
		ret = cmd_goodStatus(commandUser, 22, -0.5);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 325:
		cmd_fireStorm(commandUser);
		global.turnPhase = 2;
		break;
	
		case 326:
		cmd_blizzard(commandUser);
		global.turnPhase = 2;
		break;
	
		case 327:
		cmd_lightningCrash(commandUser);
		global.turnPhase = 2;
		break;
		
		case 329:
		ret = cmd_sleep(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 333:
		ret = cmd_slow(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 334:
		ret = cmd_lit1(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 335:
		ret = cmd_ice1(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 336:
		ret = cmd_atkMinus(commandUser,2);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 337:
		ret = cmd_defMinus(commandUser,2);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 338:
		ret = cmd_inferno(commandUser);
		global.turnPhase = 2;
		break;
	
		case 339:
		ret = cmd_deepfreeze(commandUser);
		global.turnPhase = 2;
		break;
	
		case 340:
		ret = cmd_thunderstorm(commandUser);
		global.turnPhase = 2;
		break;
	
		case 341:
		ret = cmd_coldMist(commandUser);
		global.turnPhase = 2;
		break;
		
		case 342:
		ret = cmd_paralyze(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
		
		case 343:
		ret = cmd_massParalysis(commandUser);
		global.turnPhase = 2;
		break;
		
		case 344:
		ret = cmd_toxicCloud(commandUser);
		global.turnPhase = 2;
		break;
		
		case 345:
		ret = cmd_earthTremor(commandUser, 2000, 20000, 1);
		global.turnPhase = 2;
		break;
		
		case 346:
		ret = cmd_forceArrow(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
		
		case 347:
		ret = cmd_disaster(commandUser);
		global.turnPhase = 2;
		break;
		
		case 348:
		ret = cmd_massTeleport(commandUser);
		global.turnPhase = 2;
		break;
		
		case 349:
		ret = cmd_teleport(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
		
		case 350:
		ret = cmd_dispel(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
		
		case 351:
		ret = cmd_massExtinction(commandUser);
		global.turnPhase = 2;
		break;
	
		case 401:
		ret = cmd_hatchetToss(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 402:
		ret = cmd_webShot(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 403:
		ret = cmd_shadow(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 404:
		ret = cmd_slime(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 405:
		ret = cmd_roots(commandUser);
		global.turnPhase = 2;
		break;
	
		case 406:
		ret = cmd_shriek(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 407:
		ret = cmd_bombardment(commandUser);
		if(ret != -1) global.turnPhase = 2;
		break;
	
		case 408:
		ret = cmd_massSleep(commandUser);
		global.turnPhase = 2;
		break;
	
		case 409:
		ret = cmd_massStun(commandUser);
		global.turnPhase = 2;
		break;
	
		case 410:
		ret = cmd_spores(commandUser);
		global.turnPhase = 2;
		break;
	
		case 411:
		ret = cmd_dig(commandUser);
		global.turnPhase = 2;
		break;
	
		case 412:
		ret = cmd_earthTremor(commandUser, 50, 100, 0);
		global.turnPhase = 2;
		break;
		
		case 413:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 414:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 415:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 416:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 417:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 418:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 419:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 420:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 421:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 422:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 423:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 424:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 425:
		ret = cmd_statBoostSelf(commandUser, powerId-412, 4);
		global.turnPhase = 2;
		break;
		
		case 426:
		ret = cmd_raiseTheDead(commandUser, 5);
		global.turnPhase = 2;
		break;
		
		case 427:
		ret = cmd_gravity(commandUser);
		global.turnPhase = 2;
		break;
		
		case 428:
		ret = cmd_meteor(commandUser);
		global.turnPhase = 2;
		break;
		
		case 429:
		ret = cmd_blackHole(commandUser);
		global.turnPhase = 2;
		break;
		
		case 430:
		ret = cmd_savageBite(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 431:
		ret = cmd_necroticBreath(commandUser);
		global.turnPhase = 2;
		break;
		
		case 432:
		ret = cmd_slimeSwallow(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 433:
		ret = cmd_featherStorm(commandUser);
		global.turnPhase = 2;
		break;
		
		case 434:
		ret = cmd_lightningBreath(commandUser);
		global.turnPhase = 2;
		break;
		
		case 435:
		ret = cmd_sandstorm(commandUser);
		global.turnPhase = 2;
		break;
		
		case 436:
		ret = cmd_curse(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 437:
		ret = cmd_armorPierce(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 438:
		ret = cmd_coldBreath(commandUser);
		global.turnPhase = 2;
		break;
		
		case 439:
		ret = cmd_eyeBeam(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 440:
		ret = cmd_fireBreath(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 441:
		ret = cmd_immolate(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 442:
		ret = cmd_ink(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 443:
		ret = cmd_earthTremor(commandUser, 500, 3000, 1);
		global.turnPhase = 2;
		break;
		
		case 444:
		ret = cmd_venomBreath(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 445:
		ret = cmd_superSpores(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 446:
		ret = cmd_psychoticBreath(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 447:
		ret = cmd_vampirism(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
		
		case 448:
		ret = cmd_riptide(commandUser, 800, 4000);
		global.turnPhase = 2;
		break;
		
		case 449:
		ret = cmd_aetherialBreath(commandUser);
		global.turnPhase = 2;
		break;
		
		case 450:
		ret = cmd_poisonShock(commandUser);
		global.turnPhase = 2;
		break;
		
		case 451:
		ret = cmd_perfectHypnosis(commandUser);
		global.turnPhase = 2;
		break;
		
		case 452:
		ret = cmd_arcticWind(commandUser);
		global.turnPhase = 2;
		break;
		
		case 453:
		ret = cmd_markForDeath(commandUser);
		if(ret != -1)global.turnPhase = 2;
		break;
	
		case 1000:
		cmd_offHand(commandUser);
		global.turnPhase = 2;
		break;
	
		case 1001:
		cmd_fire0(commandUser);
		global.turnPhase = 2;
		break;
	
		case 1002:
		cmd_lit0(commandUser);
		global.turnPhase = 2;
		break;
	
		case 1003:
		cmd_ice0(commandUser);
		global.turnPhase = 2;
		break;
	
		case 1004:
		cmd_absorb0(commandUser);
		global.turnPhase = 2;
		break;
	
		case 1005:
		cmd_sap0(commandUser);
		global.turnPhase = 2;
		break;
		
		case 1006:
		cmd_poison0(commandUser);
		global.turnPhase = 2;
		break;
		
		case 1007:
		cmd_extraAttack(commandUser);
		global.turnPhase = 2;
		break;
		
		case 1008:
		cmd_light0(commandUser);
		global.turnPhase = 2;
		break;
	}

	if(global.turnPhase == 2)
	{
		spCost = global.selPowCost;
		spCost /= (checkAbBatt(global.top, 215)+1);
		spCost -= (checkAbBatt(global.top, 220)*10);
		if(spCost < 0) spCost = 0;
		spCost = round(spCost);
		if(global.freeCast <= 2)global.top.curMp -= spCost;
		if(global.freeCast == 1) global.freeCast++;
		global.selPowCost = 0;
	}


}
