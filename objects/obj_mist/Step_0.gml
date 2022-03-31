/// @description Insert description here
// You can write your code in this editor
if(obj_worldMapReader.currentZone != 8011110 && obj_worldMapReader.currentZone != 8142405){
	targetOpacity = 0;
}
else{
	d = sqrt(sqr(global.worldy-targetY)+sqr(global.worldx-targetX));
	targetOpacity = 1-(d/100);
}
if(targetOpacity > image_alpha){
	image_alpha += 0.01;
}
else if(targetOpacity < image_alpha){
	image_alpha -= 0.01;
}
depth = -1003;