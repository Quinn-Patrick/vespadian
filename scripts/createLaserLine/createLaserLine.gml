// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createLaserLine(initialx, angle, thickness, velocity, rot, shrink){
	newLine = instance_create_depth(initialx, 0, 100, obj_backgroundLine);
	
	newLine.angle = angle;
	newLine.thickness = thickness;
	newLine.velocity = velocity;
	newLine.rot = rot;
	newLine.shrink = shrink;
}