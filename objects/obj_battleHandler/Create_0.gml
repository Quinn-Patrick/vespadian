/// @description Insert description here
// You can write your code in this editor
battleOn = true;
battleMes = false;
battleReport = false;
global.xpTot = 0;
reportLevel = 0;
reportSublevel = -1;
reportItem = 0;
global.turnPhase = -1;
battleGlobalTimer = 0;
paceBufferTimer = 0;
paceBufferLimit = 30;
battleSwitcher = 1;
introTime = 60;

eWin = false;
pWin = false;

victorySoundPlayed = false;
for(am = 15; am > -1; am--)
	reportLevelUp[am] = false;
	
global.timeKeep = 0;
global.battleOver = false;
global.actionBuffer = ds_stack_create();
global.damageTokenStorage = ds_list_create();
global.storeTargetX = 0;
global.storeTargetY = 0;

global.playerTargetSelect = 0;
global.playerTargets = ds_list_create();

global.targStore = -1;

layer_background_sprite(layer_background_get_id(layer_get_id("Background")), global.battleBackground);

runVal = 0;

msg = "";

depth = -1;