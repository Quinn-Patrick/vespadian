function gainXp(argument0, argument1) {
	identity = argument0;
	experience = argument1;

	if(identity > 3) return false;

	identity.xp += round(experience);

	leveledUp = false;
	
	if(identity.xp > global.xpThresholds[global.levelCap]){
		identity.xp = global.xpThresholds[global.levelCap];
	}
	
	while(identity.xp >= global.xpThresholds[identity.level+1])
	{
		levelUp(identity, undefined);
		leveledUp = true;
	}

	return leveledUp;


}
