// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inspiration(user, target){
	inspirationPower = floor(user.cha/10);
	if(inspirationPower > 8) inspirationPower = 8;
	if(inspirationPower < 3) inspirationPower = 3;
	if(checkAbBatt(user, 217)) deltaStatus(target, 1, inspirationPower);
	if(checkAbBatt(user, 218)) deltaStatus(target, 2, inspirationPower);
}