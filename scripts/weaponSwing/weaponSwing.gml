// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weaponSwing(user, itemNum){
	newWeapon = instance_create_depth(user.x, user.y, user.depth-1, obj_weaponGraphic);
	newWeapon.spriteNumber = itemNum;
	

}