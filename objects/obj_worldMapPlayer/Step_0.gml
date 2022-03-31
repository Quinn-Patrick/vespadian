/// @description gameplay

if(!global.control)exit; //this contains only things that can happen when the plyer is in control of the game
//overworld movement



if(key(4))
{
	stillTimer = 0;
    if(global.stopped)
    {
        dir = 0;
        
		if(obj_system.roomTime > 2)
		{
			global.stopped = false;
			global.worldy--;
			obj_worldMapReader.tileOffsetY = -32;
			
	        if(worldMapCol())
	        {
				obj_worldMapReader.tileOffsetY = 0;
	            global.worldy++;
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
        
		if(obj_system.roomTime > 2)
		{
			global.stopped = false;
			obj_worldMapReader.tileOffsetY = 32;
			global.worldy++;
	        if(worldMapCol())
	        {
				obj_worldMapReader.tileOffsetY = 0;
	            global.worldy--;
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
        
		if(obj_system.roomTime > 2)
		{
			global.stopped = false;
			obj_worldMapReader.tileOffsetX = 32;
			global.worldx++;
	        if(worldMapCol())
	        {
				obj_worldMapReader.tileOffsetX = 0;
	            global.worldx--;
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
        
		if(obj_system.roomTime > 2)
		{
			global.stopped = false;
			obj_worldMapReader.tileOffsetX = -32;
			global.worldx--;
	        if(worldMapCol())
	        {
				obj_worldMapReader.tileOffsetX = 0;
	            global.worldx++;
	        }
		}
    }
}

if(obj_worldMapReader.tileOffsetX > 0){
	obj_worldMapReader.tileOffsetX -= velo;
}
else if(obj_worldMapReader.tileOffsetX < 0){
	obj_worldMapReader.tileOffsetX += velo;
}
else if(obj_worldMapReader.tileOffsetY < 0){
	obj_worldMapReader.tileOffsetY += velo;
}
else if(obj_worldMapReader.tileOffsetY > 0){
	obj_worldMapReader.tileOffsetY -= velo;
}


/*if(x < global.ovx*global.grSize)
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
}*/

//This is the encounter stuff, so we'll have to reimplement it.

if(obj_worldMapReader.tileOffsetX == 0 && obj_worldMapReader.tileOffsetY == 0)
{
	if(!global.stopped)
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




depth = -1002;
