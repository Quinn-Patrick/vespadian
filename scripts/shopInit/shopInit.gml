function shopInit(argument0, argument1) {
	fileNum = argument0;
	par = argument1;


	shop = instance_create_depth(0,0,-100000,obj_shop);

	shop.shopfileName = "files/shops/shop"+string(fileNum)+".txt";
	shop.parent = par;


}
