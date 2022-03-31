/// @description Insert description here
// You can write your code in this editor

musicUpdate();
updateSoundLog();

if(keyboard_check_pressed(vk_f3))
{
	if(!global.sysMes)
		global.sysMes = true;
	else
		global.sysMes = false;
}

if(keyboard_check_pressed(vk_f10))
{
	global.lootAttempts = 0;
	global.loot = ds_list_create();
	for(i = 11; i < 1015; i++)
	{
		for(k = 0; k < 2; k++)
		{
			inst = charSwitch(i);
			if(is_undefined(inst)) break;
			fileName = "files/enemies/"+object_get_name(inst.object_index)+string(k)+".txt"
			enemyFile = file_text_open_write(fileName);
		
			file_text_write_string(enemyFile, inst.name);
			file_text_writeln(enemyFile);
			file_text_write_string(enemyFile, sprite_get_name(inst.sprite_index));
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.ai);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.str);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.frt);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.dex);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.agi);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.int);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.wis);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.cha);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.spr);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.lvl);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.xp);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.maxHp);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.pDef);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.creatureType[0]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.creatureType[1]);
			file_text_writeln(enemyFile);
			
			file_text_write_real(enemyFile, inst.eq[0]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.eq[1]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.eq[2]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.eq[3]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.eq[4]);
			file_text_writeln(enemyFile);
			file_text_write_real(enemyFile, inst.eq[5]);
			file_text_writeln(enemyFile);
		
			file_text_write_string(enemyFile, "abilities");
			file_text_writeln(enemyFile);
		
			for(j = 0; j < ds_list_size(inst.abis); j++)
			{
				file_text_write_real(enemyFile, inst.abis[| j]);
				file_text_writeln(enemyFile);
			}
		
			file_text_write_string(enemyFile, "powers");
			file_text_writeln(enemyFile);
		
			for(j = 0; j < ds_list_size(inst.powers); j++)
			{
				file_text_write_real(enemyFile, inst.powers[| j]);
				file_text_writeln(enemyFile);
			}
		
			instance_destroy(inst);
		
			file_text_close(enemyFile);
		}
	}
	ds_list_destroy(global.loot);
}

/*if(keyboard_check_pressed(vk_f4))
{
	room_goto(rm_debug);
}*/

/*if(keyboard_check_pressed(vk_f1))
{
	testTroupe();
	gotoBattle();
}*/

global.confRef--;
global.backRef--;

if(global.backRef < 0)
{
	global.backRef = 0;
}

global.uniClock++;

keepTime();

roomTime++;