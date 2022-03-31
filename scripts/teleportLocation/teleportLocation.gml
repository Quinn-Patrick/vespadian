// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function teleportLocation(inflag, inname, inzone, inxlocation, inylocation) constructor{
	flag = inflag;
	nam = inname;
	zone = asset_get_index("rm_worldMap"+string(inzone));
	xLocation = inxlocation;
	yLocation = inylocation;

}