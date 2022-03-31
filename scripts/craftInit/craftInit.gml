function craftInit(argument0) {
	par = argument0;

	craftObject = instance_create_depth(0,0,-100000,obj_crafting);

	craftObject.parent = par;


}
