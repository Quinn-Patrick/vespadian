function initialize() {
	randomize();
	//initialize global variables
	
	global.uniClock = 0;

	global.gameTime = 0;
	global.hours = 0;
	global.minutes = 0;
	global.seconds = 0;

	global.dirStore = 2;
	global.layerStore = 1;

	global.levelCap = 99;

	#macro SCREENW 1024
	#macro SCREENH 768

	readAudioLevels();


	#macro defaultTextColor make_color_rgb(255,255,255)
	#macro upColor make_color_rgb(113,196,113)
	#macro downColor make_color_rgb(239,105,105)

	draw_set_font(fnt_amaranth);
	draw_set_color(defaultTextColor);
	
	weaponMapping();


	//view_camera[0] = global.cam;
	//view_xport[0] = 0;
	//view_yport[0] = 0;

	//view_wport[0] = 1024;
	//view_hport[0] = 768;

	//window_set_size(1024,768);
	
	global.numberOfClasses = 6;

	global.roomType = 0; //0 = dungeon, 1 = rest, 2 = town
	global.threatGrowth = 0.2;
	global.defTile = spr_cavWall;
	global.roomSave = overworld;
	global.textC[0] = c_white;
	global.textC[1] = c_gray;

	global.money = 0;

	//dialogueRelated
	global.textSpeed = 2; //letters/frame
	global.dialPos = 0;

	//keys
	global.right = vk_right;
	global.left = vk_left;
	global.up = vk_up;
	global.down = vk_down;
	global.conf = vk_enter;
	global.back = vk_escape;
	global.confRef = 0;
	global.backRef = 0;

	global.rTick = 0;
	global.lTick = 0;
	global.uTick = 0;
	global.dTick = 0;

	global.keyWait = 30;

	global.testIncrement = 0;
	//global.testValue = 0;

	//overworld
	global.ovx = 16; //x position in the overworld
	global.ovy = 12; //y position in the overworld
	global.ovSp = 8; //The number of frames that it takes to move 1 tile
	global.control = true; //whether or not the player can make inputs in the overworld
	global.grSize = 32; //the size of 1 grid square

	global.sysMes = 0;

	//pause
	global.paused = 0;
	global.pauseScreen = 0;

	//camera
	//__view_set( e__VW.WView, 0, 1024 );
	//__view_set( e__VW.HView, 0, 768 );


	window_set_size(1024,768);

	//dialogue
	global.inDial = false;
	global.line = -2;
	global.textTime = 0;
	global.sysMes = false;

	global.party = [new character(), undefined, undefined, undefined];
	
	global.characterBench = ds_list_create();

	
	global.xpThresholds[0] = 0;
	global.xpThresholds[1] = 0;
	
	global.specialString = ""; //This string will replace $special$ in dialogue.
	global.specialNum = 0; //This number will replace $num$ in dialogue.


	for(ak = 2; ak <= 99; ak++)
	{
		global.xpThresholds[ak] = power(ak+1, 3);
	}

	

	global.leaderIndex = 0;
	global.leader = 0;

	//initialize inventory
	for(i = 1999; i>-1; i--)
	{
		global.stock[i,0] = -1;
		global.stock[i,1] = -1;
		global.stock[i,2] = 0;
		global.stockN[i] = "";
	}
	
	
	//initialize treasure chests
	for(i = 3000; i > -1; i--)
	{
		global.chests[i] = false;
	}

	//initialize the feat tree
	for(bc = 399; bc > -1; bc--)
	{
		global.feats[bc] = false;
	}

	//initialize settings
	ini_open("settings.ini");
	global.sfxGain = ini_read_real("volume", "sfx", 0.5);
	global.musicGain = ini_read_real("volume", "music", 0.5);
	global.identifierIncrement = ini_read_real("universal", "increment", 0);
	ini_close();
	
	for(i = 0; i < 256; i++)
	{
		checkFile = file_text_open_read("file" + string(i) + ".txt");
		if(checkFile == -1){
			newFile = file_text_open_write("file" + string(i) + ".txt");
			file_text_write_real(newFile, 0);
			file_text_close(newFile);
		}
		else file_text_close(checkFile);
	}

	//load power and ability data
	global.powerNames = loadPowerNames();
	global.powerData = loadPowerData();
	global.abilityData = loadAbilityData();
	global.divineMagicLevels = loadDivineMagicLevels();
	global.clericSpellList = loadClericSpellList();
	global.classNames = loadClassNames();
	global.arcaneSpellLevels = loadArcaneSpellLevels();
	global.creatureTypes = loadCreatureTypes();
	global.classDescriptions = loadClassDescriptions();
	
	loadTeleportLocations();
	
	//global.itemNames = ds_map_create();
	global.itemData = ds_map_create();
	
	personalityArray = loadPersonalities();
	global.personalityNames = personalityArray[0];
	global.personalityData = personalityArray[1];
	
	global.numberOfPersonalities = ds_list_size(personalityArray[0]);


	//battle related globals
	global.selPowCost = 0;
	global.selPowDes = "";

	global.turnSize = 0;
	global.actSelection = 0;
	global.turnPhase = 0;
	global.testFlag = false;
	global.testVal = 0;

	global.lookAhead = 1;
	global.holding = false;

	global.atkPowMod = 0;

	global.postBattleEvent = -1;

	global.battleOver = false;

	global.battleBackground = bg_grassyField

	//weather
	global.temp = 1;
	global.precip = 0;
	global.field = 0;

	//encounters
	global.encs = ds_list_create();
	global.encP = ds_list_create();
	
	global.maxThreat = 10;
	global.eventEnc = -1;
	global.runnable = true;

	//initialize event state
	global.event = -1;

	//initialize event tracking
	for(i = 3000; i > -1; i--)
	{
		global.events[i] = false;
	}

	global.inGameRoomName = "";

	for(i = 20; i > -1; i--)
	{
		global.roomFlags[i] = false;
	}

	//intialize the prompt selection global
	global.promptSelection = 0;

	//initialize the world map stuff
	global.worldx = 0;
	global.worldy = 0;
	global.exitEvent = -1;
	
	//Initialize the array of load game preview data
	global.loadPreview[15] = 0;
	
	global.mainBgm = mus_mainTheme;
	global.battleBgm = mus_battle1;
	global.musicCategory = 0; //0 for field, 1 for battle
	global.lastBgm = global.mainBgm;
	
	global.previewCharacter = -1;
	
	global.vehicle = 0;
	
	global.shipx = 35;
	global.shipy = 71;
	
	global.shipRoom = rm_worldMap1;
	
	global.shipx = 0;
	global.shipy = 0;
	
	global.shipRoom = rm_worldMap1;
	
	global.airshipx = 70;
	global.airshipy = 82;
	
	global.airshipOffset = 0;
	global.airshipOffsetTarget = 0;
	
	global.airshipRoom = rm_worldMap3;
	
	global.forceReady = false; //ignore this nothing to see here (it has to do with the damage numbers that pop up)
	
	global.saveFileNumber = 0; //used to automatically set the cursor to the most recently accessed save file
	
	/*global.teleportRoom = undefined;
	global.teleportX = 0;
	global.teleportY = 0;*/
	
	global.landmarkList = ds_list_create();
	
	global.soundLog = ds_list_create(); //a list of sounds played in the last couple frames which prevents sounds from overlapping too much
	
	global.expMultiplier = 1.2; //all exp yields are multiplied by this
	
	global.prompt = undefined;
	
	global.teleTarget = rm_worldMap1;
	global.teleX = 0;
	global.teleY = 0;
	global.canTeleport = false;
	
	global.gameOver = false;
	
	global.noBattleMusic = false;
	
	global.fieldAbilities = ds_list_create(); //A list of abilities that are used on the field


}
