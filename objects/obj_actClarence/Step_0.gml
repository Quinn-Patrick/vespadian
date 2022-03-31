/// @description Insert description here
// You can write your code in this editor
if(x > gridX*32+16)x -= velo;
else if(x < gridX*32+16) x+= velo;
else if(y > gridY*32+16) y-= velo;
else if(y < gridY*32+16) y+= velo;

if(abs(x-(gridX*32+16))<velo) x = gridX*32+16;
if(abs(y-(gridY*32+16))<velo) y = gridY*32+16;