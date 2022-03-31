/// @description Insert description here
// You can write your code in this editor
for(k=0; k < ds_list_size(global.ally); k++)
{
	depth = -101;
	draw_text(800 + (8*k), 32+(52*k), global.ally[| k].name)
	draw_text(800 + (8*k), 48+(52*k), "HP   " + string(global.ally[| k].curHp) + " / " + string(global.ally[| k].maxHp))
	draw_text(800 + (8*k), 64+(52*k), "SP   " +string(global.ally[| k].curMp) + " / " + string(global.ally[| k].maxMp));
}



/*for(i=0; i<ds_list_size(global.order); i++)
{
	if(!is_undefined(global.order[| i]))
		draw_text(320, 64+(i*16), global.order[| i].name);
	
}*/
k = 0;
draw_set_halign(fa_right);
draw_text(752, 32, "Until Next Turn:");
draw_set_halign(fa_left);
for(i = 0; i < global.turnSize; i++)
{
	if(k > 12){
		draw_text(608, 48+(k*16), "...");
		break;
	}
	if(global.turns[i,0].conds[0] != 1){
		draw_text(608, 48+(k*16),global.turns[i,0].abName);
		if(global.turns[i,0] != global.top){
			draw_set_halign(fa_right);
			if(global.turns[i,1] > 0)draw_text(752, 48+(k*16), global.turns[i,1]);
			else draw_text(752, 48+(k*16), "1");
			draw_set_halign(fa_left);
		}
		k++;
		
	}
}

if(global.turnPhase == 0)
{
	battleMes = false;
	msg = "";
	if(global.top.player == true)
	{
		actSelectD();
	}
}

if(global.turnPhase == 2)
{
	battleMessage(msg);
	depth = -100;
	animSwitch(global.anim);
	global.animTime--;
}

if(battleReport && eWin){
	if(!victorySoundPlayed){
		if(!global.noBattleMusic)audio_pause_sound(global.battleBgm);
		sound(snd_victory);
		victorySoundPlayed = true;
	}
	reportBattle();
}
else if(battleReport && defeat)
{
	gameOver();
}

if(global.turnPhase == -1){
	draw_rectangle_colour(0,0,(1-(battleGlobalTimer/introTime))*512, 384,c_black,c_black,c_black,c_black, false);
	draw_rectangle_colour(512,0,1024,(1-(battleGlobalTimer/introTime))*384,c_black,c_black,c_black,c_black, false);
	draw_rectangle_colour(0,((battleGlobalTimer/introTime)*384)+384,512, 768, c_black,c_black,c_black,c_black, false);
	draw_rectangle_colour(((battleGlobalTimer/introTime)*512)+512, 384, 1024,768, c_black,c_black,c_black,c_black, false);
}