/// @description Insert description here
// You can write your code in this editor
if(!initialized){
	initialized = true;
	if(!is_undefined(actCharacter)){
		sprites = getCharacterSprites(actCharacter);
		sideSpr = sprites[2];
		frontSpr = sprites[0];
		backSpr = sprites[1];

	
		anims[0] = frontSpr;
		anims[1] = sideSpr;
		anims[2] = backSpr;
		anims[3] = frontSpr;
		anims[4] = sideSpr;
		anims[5] = backSpr;
		anims[6] = sprites[3];
	}
}

if(x > gridX*32+16)x -= velo;
else if(x < gridX*32+16) x+= velo;
else if(y > gridY*32+16) y-= velo;
else if(y < gridY*32+16) y+= velo;

if(abs(x-(gridX*32+16))<velo) x = gridX*32+16;
if(abs(y-(gridY*32+16))<velo) y = gridY*32+16;