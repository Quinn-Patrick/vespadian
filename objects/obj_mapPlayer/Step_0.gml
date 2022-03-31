/// @description gameplay
if(teleporting){
	teleportOffset -= floor(teleportSpeed/4);
	teleportSpeed++;
	if(teleportSpeed > 100){
		global.worldx = global.teleX;
		global.worldy = global.teleY;
		room_goto(global.teleTarget);
	}
}

if(room == rm_titleDrop) instance_destroy();
timer++;
if(!global.control){
	if(timer == 1 && global.event == -1) global.control = true;
	exit;
}//this contains only things that can happen when the plyer is in control of the game
//overworld movement

if(global.worldx < 0){
	if(room == rm_worldMap1 || room == rm_worldMap2 || room == rm_worldMap3 || room == rm_worldMap4){
		global.worldx = 127;
	}else if(room == rm_worldMap5){
		global.worldx = global.worldy;
		global.worldy = 0;
	}else if(room == rm_worldMap6){
		global.worldx = global.worldy;
		global.worldy = 127;
	}
	room_goto(westRoom);
}
if(global.worldx > 127){
	if(room == rm_worldMap1 || room == rm_worldMap2 || room == rm_worldMap3 || room == rm_worldMap4){
		global.worldx = 0;
	}else if(room == rm_worldMap5){
		global.worldx = global.worldy;
		global.worldy = 0;
	}else if(room == rm_worldMap6){
		global.worldx = global.worldy;
		global.worldy = 127;
	}
	room_goto(eastRoom);
}
if(global.worldy < 0){
	if(room == rm_worldMap1){
		global.worldy = 127;
	}else if(room == rm_worldMap2){
		global.worldy = global.worldx;
		global.worldx = 0;
	}else if(room == rm_worldMap3){
		global.worldy = 0;
	}else if(room == rm_worldMap4){
		global.worldy = global.worldx;
		global.worldx = 127;
	}
	else if(room == rm_worldMap5){
		global.worldy = 0;
	}else if(room == rm_worldMap6){
		global.worldy = 127;
	}
	room_goto(northRoom);
}
if(global.worldy > 127){
	if(room == rm_worldMap1){
		global.worldy = 0;
	}else if(room == rm_worldMap2){
		global.worldy = global.worldx;
		global.worldx = 0;
	}else if(room == rm_worldMap3){
		global.worldy = 127;
	}else if(room == rm_worldMap4){
		global.worldy = global.worldx;
		global.worldx = 127;
	}
	else if(room == rm_worldMap5){
		global.worldy = 0;
	}else if(room == rm_worldMap6){
		global.worldy = 127;
	}
	room_goto(southRoom);
}

if(global.airshipOffset <= global.airshipOffsetTarget){
	if(key(4))
	{
		stillTimer = 0;
		if(global.stopped)
		{
		    dir = 0;
		    if(!inMotion) animFrame = 1;
		    inMotion = true;
			if(obj_system.roomTime > 2)
			{
				global.worldy--;
			    if((global.worldy >= 0)&&(worldMapCol() || (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 5676702 && global.vehicle != 2)))
			    {
			        global.worldy++;
					if(global.vehicle == 1){
						if(onCoast() 
						&& isWalkableTerrain(global.worldx, global.worldy-1)){
							global.shipx = global.worldx;
							global.shipy = global.worldy;
							global.vehicle = 0;
							global.worldy--;
							sprites = getCharacterSprites(global.leader);
							sideSpr = sprites[2];
							frontSpr = sprites[0];
							backSpr = sprites[1];
						}
					}
			    }
			}
		}
	}
	else if(key(6))
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
				global.worldy++;
			    if((global. worldy <= 127) && (worldMapCol() || (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 16711900 && global.vehicle != 2)))
			    {
			        global.worldy--;
					if(global.vehicle == 1){
						if(onCoast()
						&& isWalkableTerrain(global.worldx, global.worldy+1)){
							global.shipx = global.worldx;
							global.shipy = global.worldy;
							global.vehicle = 0;
							global.worldy++;
							sprites = getCharacterSprites(global.leader);
							sideSpr = sprites[2];
							frontSpr = sprites[0];
							backSpr = sprites[1];
						}
					}
			    }
			}
		}
	}
	else if(key(0))
	{
		stillTimer = 0;
		if(global.stopped)
		{
		    dir = 1;
		    if(!inMotion) animFrame = 1;
		    inMotion = true;
			if(obj_system.roomTime > 2)
			{
				global.worldx++;
			    if((global.worldx <= 127)&&(worldMapCol() || (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 16711680 && global.vehicle != 2)))
			    {
			        global.worldx--;
					if(global.vehicle == 1){
						if(onCoast()
						&& isWalkableTerrain(global.worldx+1, global.worldy)){
							global.shipx = global.worldx;
							global.shipy = global.worldy;
							global.vehicle = 0;
							global.worldx++;
							sprites = getCharacterSprites(global.leader);
							sideSpr = sprites[2];
							frontSpr = sprites[0];
							backSpr = sprites[1];
						}
					}
			    }
			}
		}
	}
	else if(key(2))
	{
		stillTimer = 0;
		if(global.stopped)
		{
		    dir = 3;
			if(!inMotion) animFrame = 1;
		    inMotion = true;
			if(obj_system.roomTime > 2)
			{
				global.worldx--;
			    if((global.worldx >= 0) && (worldMapCol() || (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 32582 && global.vehicle != 2)))
			    {
			        global.worldx++;
					if(global.vehicle == 1){
						if(onCoast()
						&& isWalkableTerrain(global.worldx-1, global.worldy)){
							global.shipx = global.worldx;
							global.shipy = global.worldy;
							global.vehicle = 0;
							global.worldx--;
							sprites = getCharacterSprites(global.leader);
							sideSpr = sprites[2];
							frontSpr = sprites[0];
							backSpr = sprites[1];
						}
					}
			    }
			}
		}
	}else inMotion = false;
}

if(global.vehicle == 0 && global.stopped && global.worldx == global.shipx && global.worldy == global.shipy && global.shipRoom == room){
	global.vehicle = 1;
}


if(key(9)){
	if(global.vehicle == 0 && global.stopped){
		if(global.worldx == global.airshipx && global.worldy == global.airshipy){
			global.vehicle = 2;
			
			global.airshipOffsetTarget = 128;
		}
	}else if(global.vehicle == 2 && global.stopped
	&& ((obj_worldMapReader.worldMap[global.worldx, global.worldy] == 65280)
	|| (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 13199872)
	|| (obj_worldMapReader.worldMap[global.worldx, global.worldy] == 16777215))
	&& global.airshipOffset == global.airshipOffsetTarget
	&& !isLandmarkTile(global.worldx, global.worldy)){
		
		global.airshipOffsetTarget = 0;
	}
}

if(global.airshipOffset < global.airshipOffsetTarget) global.airshipOffset += 4;
else if(global.airshipOffset > global.airshipOffsetTarget) global.airshipOffset -= 4;

if(abs(global.airshipOffset) < 5 && global.airshipOffsetTarget == 0)global.airshipOffset = 0;

if(global.vehicle == 2){
	global.events[403] = true;
	velo = 64/global.ovSp;
	global.airshipx = global.worldx;
	global.airshipy = global.worldy;
}else velo = 32/global.ovSp;

if(global.airshipOffset == 0 && global.vehicle == 2){
	sprites = getCharacterSprites(global.leader);
	sideSpr = sprites[2];
	frontSpr = sprites[0];
	backSpr = sprites[1];
	
	global.vehicle = 0;
}


if(x < global.worldx*global.grSize)
{
    global.stopped = false;
    x += velo;
}
else if(x > global.worldx*global.grSize)
{
    global.stopped = false;
    x -= velo;
}
else if(y > global.worldy*global.grSize)
{
    global.stopped = false;
    y -= velo;
}
else if(y < global.worldy*global.grSize)
{
    global.stopped = false;
    y += velo;
}

if(y == global.worldy*global.grSize && x = global.worldx*global.grSize)
{
	if(!global.stopped && global.vehicle != 2)
	{
		encResolve();
	}
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
	if(global.vehicle == 0){
		sprites = getCharacterSprites(global.leader);
		sideSpr = sprites[2];
		frontSpr = sprites[0];
		backSpr = sprites[1];
	}
}

if(global.vehicle == 1){
	global.events[402] = true;
	sideSpr = spr_shipSide;
	frontSpr = spr_shipFront;
	backSpr = spr_shipBack;
	
	global.shipRoom = room;
}

if(global.vehicle == 2){
	sideSpr = spr_airshipSide;
	frontSpr = spr_airshipFront;
	backSpr = spr_airshipBack;
	
	global.airshipRoom = room;
}

if(global.stopped)stillTimer++;
if(stillTimer > 1)
{
	still = true;
}
else still = false;

gridX = global.worldx;
gridY = global.worldy;



depth = (-1000*((worldLayer)))-global.worldy;
global.dirStore = dir;
