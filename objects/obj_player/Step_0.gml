/// @description gameplay
if(room == rm_titleDrop) instance_destroy();
timer++;

if(teleporting){
	y -= floor(teleportSpeed/4);
	teleportSpeed++;
	if(teleportSpeed > 100){
		global.worldx = global.teleX;
		global.worldy = global.teleY;
		room_goto(global.teleTarget);
	}
}

if(!global.control){
	if(timer == 1 && global.event == -1) global.control = true;
	exit;
}//this contains only things that can happen when the plyer is in control of the game
//overworld movement



if((key(4) && forceMove == 0) || forceMove == 3)
{
	stillTimer = 0;
    if(global.stopped)
    {
        dir = 0;
        if(!inMotion) animFrame = 1;
        inMotion = true;
		if(obj_system.roomTime > 2)
		{
			global.ovy--;
			if(abs(layerChanging) == 4){
				worldLayer += sign(layerChanging);
				layerChanging = 0;
			}
	        if(global.map[global.ovx, global.ovy]==0 || global.solids[global.ovx, global.ovy]==worldLayer
			|| global.map[global.ovx, global.ovy]==worldLayer || global.map[global.ovx, global.ovy]==10)
	        {
	            global.ovy++;
	        }
			else if(global.map[global.ovx, global.ovy] == 256){
				obj_player.layerChanging = 4;
			}
			else{
				layerChanging = 0;
			}
		}
    }
}
else if((key(6) && forceMove == 0) || forceMove == 4)
{
	stillTimer = 0;
    if(global.stopped)
    {
        dir = 2;
		if(!inMotion) animFrame = 1;
        inMotion = true;
		if(obj_system.roomTime > 2)
		{
			if(abs(layerChanging) == 6){
				worldLayer += sign(layerChanging);
				layerChanging = 0;
			}
			global.ovy++;
	        if(global.map[global.ovx, global.ovy]==0 || global.solids[global.ovx, global.ovy]==worldLayer
			|| global.map[global.ovx, global.ovy]==worldLayer)
	        {
	            global.ovy--;
	        }
			else if(global.map[global.ovx, global.ovy] == 256){
				obj_player.layerChanging = -6;
			}
			else{
				layerChanging = 0;
			}
		}
    }
}
else if((key(0) && forceMove == 0) || forceMove == 1)
{
	stillTimer = 0;
    if(global.stopped)
    {
        dir = 1;
        if(!inMotion) animFrame = 1;
        inMotion = true;
		if(obj_system.roomTime > 2)
		{
			global.ovx++;
	        if(global.map[global.ovx, global.ovy]==0 || global.solids[global.ovx, global.ovy]==worldLayer
			|| global.map[global.ovx, global.ovy]==worldLayer)
	        {
	            global.ovx--;
	        }
		}
    }
}
else if((key(2) && forceMove == 0) || forceMove == 2)
{
	stillTimer = 0;
    if(global.stopped)
    {
        dir = 3;
		if(!inMotion) animFrame = 1;
        inMotion = true;
		if(obj_system.roomTime > 2)
		{
			global.ovx--;
	        if(global.map[global.ovx, global.ovy]==0 || global.solids[global.ovx, global.ovy]==worldLayer
			|| global.map[global.ovx, global.ovy]==worldLayer)
	        {
	            global.ovx++;
	        }
		}
    }
}else inMotion = false;

if(x < global.ovx*global.grSize)
{
    global.stopped = false;
    x += velo;
}
else if(x > global.ovx*global.grSize)
{
    global.stopped = false;
    x -= velo;
}
else if(y > global.ovy*global.grSize)
{
    global.stopped = false;
    y -= velo;
}
else if(y < global.ovy*global.grSize)
{
    global.stopped = false;
    y += velo;
}

if(y == global.ovy*global.grSize && x = global.ovx*global.grSize)
{
	if(!global.stopped && forceMove == 0)
	{
		encResolve();
	}
	forceMove = 0;
    global.stopped = true;
}

if(!global.stopped)
{
	global.hasMoved = true;
}

animCounter++;
if(!inMotion && global.stopped && !petting) animCounter = 0;
if(animCounter > animRate)
{
	animCounter = 0;
	animFrame++;
	if(animFrame > 3)
	{
		animFrame = 0;
	}
}
if(keyboard_check_pressed(vk_space))
{
	global.leaderIndex++;
	if(global.leaderIndex > 3) global.leaderIndex = 0;
	
	while(is_undefined(global.party[global.leaderIndex])){
		global.leaderIndex++;
		if(global.leaderIndex > 3) global.leaderIndex = 0;
	}
	global.leader = global.party[global.leaderIndex];
	sprites = getCharacterSprites(global.leader);
	sideSpr = sprites[2];
	frontSpr = sprites[0];
	backSpr = sprites[1];

}

if(global.stopped)stillTimer++;
if(stillTimer > 1)
{
	still = true;
}
else still = false;




/*switch(global.leader)
{
	case 0:
	sideSpr = spr_ericSide;
	frontSpr = spr_ericFront;
	backSpr = spr_ericBack;
	break;
	case 1:
	sideSpr = spr_fridaSide;
	frontSpr = spr_fridaFront;
	backSpr = spr_fridaBack;
	break;
	case 2:
	sideSpr = spr_alSide;
	frontSpr = spr_alFront;
	backSpr = spr_alBack;
	break;
	case 3:
	sideSpr = spr_marySide;
	frontSpr = spr_maryFront;
	backSpr = spr_maryBack;
	break;
	case 4:
	sideSpr = spr_cloakedFigureSide;
	frontSpr = spr_cloakedFigureFront;
	backSpr = spr_cloakedFigureBack;
	break;
	case 5:
	sideSpr = spr_hectorSide;
	frontSpr = spr_hectorFront;
	backSpr = spr_hectorBack;
	break;
}*/
depth = (-1000*((worldLayer)))-global.ovy;
global.dirStore = dir;