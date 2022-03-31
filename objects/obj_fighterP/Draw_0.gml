/// @description Insert description here
// You can write your code in this editor

hpPercent = curHp/maxHp;

if(conds[36] > 0 || conds[37] > 0)
{
	draw_sprite(spr_aura, 0, x, y-16);

}

currentSprite = mainSprite;

if(conds[0] == 0){
	if(conds[33] == 0){
		if(curHp < maxHp * 0.2) currentSprite = lowSprite;
		if(conds[35]) currentSprite = defendSprite;
		
	}
}
else if(conds[40] == 1) currentSprite = mainSprite;

if(global.top == id) currentSprite = mainSprite;
if(gettingHit > 0) currentSprite = ouchSprite;
if(conds[0]) currentSprite = deadSprite;

sprite_index = currentSprite;



draw_self();

if(global.top == id)
{
	image_speed = 0.15*(hpPercent+0.02);
	if(!friend) 
	{
		if(global.uniClock % 2 == 0)
		{
			if(image_alpha == 1) image_alpha = 0;
			else image_alpha = 1;
		}
	}
}
else 
{
	image_alpha = 1;
	image_speed = 0;
}
	
if(!friend)
{
	image_xscale = -1;
}

if(global.top != id)
{
	image_index = 0;
}

if(conds[0] == 0){
	if(conds[22] > 0)
	{
		draw_sprite(spr_slow, 0, x + (2*(global.uniClock%2)), y);
	}
	if(conds[19] > 0)
	{
		draw_sprite(spr_stunned, 0, x + (2*(global.uniClock%2)), y);
	}
	if(conds[17] > 0)
	{
		draw_sprite(spr_para, 0, x + (2*(global.uniClock%2)), y);
	}

	if(conds[32] > 0)
	{
		draw_sprite(spr_asleep, global.uniClock % 8, x, y);
	}

	if(conds[16] > 0)
	{
		if(irandom_range(0,10) == 10) instance_create_depth(x + irandom_range(-16,16), y + irandom_range(-16,16), -1, obj_poisonBubble);
	}
	
	if(player){
		if(conds[39] > 0)
		{
			draw_sprite(spr_angelWing, 0, x, y-16);
		}
	}
	if(conds[43] > 0)
	{
		if(irandom_range(0,10) == 10) instance_create_depth(x + irandom_range(-16,16), y + irandom_range(-16,16), -1, obj_blaze);
		//statModNumber++;
	}
	
	
}

if(friend){
	statModNumber = 0;
	if(conds[38] > 0)
	{
		draw_sprite(spr_cursed, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[41] > 0)
	{
		draw_sprite(spr_heartbreak, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[42] > 0)
	{
		draw_sprite(spr_bleeding, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[1] < 0)
	{
		draw_sprite(spr_atkDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[1] > 0)
	{
		draw_sprite(spr_atkUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[2] < 0)
	{
		draw_sprite(spr_defDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[2] > 0)
	{
		draw_sprite(spr_defUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[3] < 0 || conds[22] > 0)
	{
		draw_sprite(spr_spdDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[3] > 0 || conds[22] < 0)
	{
		draw_sprite(spr_spdUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[4] < 0)
	{
		draw_sprite(spr_accDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[4] > 0)
	{
		draw_sprite(spr_accUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[5] < 0)
	{
		draw_sprite(spr_evaDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[5] > 0)
	{
		draw_sprite(spr_evaUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[6] < 0)
	{
		draw_sprite(spr_magDown, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[6] > 0)
	{
		draw_sprite(spr_magUp, 0, x+16+(16*floor(statModNumber/4)), y-48+(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[7] < 0)
	{
		draw_sprite(spr_hResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[7] > 0)
	{
		draw_sprite(spr_hResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[8] < 0)
	{
		draw_sprite(spr_cResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[8] > 0)
	{
		draw_sprite(spr_cResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[9] < 0)
	{
		draw_sprite(spr_eResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[9] > 0)
	{
		draw_sprite(spr_eResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[10] < 0)
	{
		draw_sprite(spr_pResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[10] > 0)
	{
		draw_sprite(spr_pResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[11] < 0)
	{
		draw_sprite(spr_aResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[11] > 0)
	{
		draw_sprite(spr_aResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[12] < 0)
	{
		draw_sprite(spr_vResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[12] > 0)
	{
		draw_sprite(spr_vResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[13] < 0)
	{
		draw_sprite(spr_mResDown, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	if(conds[13] > 0)
	{
		draw_sprite(spr_mResUp, 0, x+24+(16*floor(statModNumber/4)), y-48-(16*(statModNumber%4)));
		statModNumber++;
	}
	
}

if(conds[22] < 0) image_speed *= 2;

