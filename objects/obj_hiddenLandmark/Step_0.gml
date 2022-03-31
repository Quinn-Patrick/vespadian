/// @description Insert description here
// You can write your code in this editor
visible = false;
if(abs(ovx-global.worldx) < 2 && abs(ovy-global.worldy) < 2){
	if(!revealed) sound(snd_reveal);
	revealed = true;
	if(getItemCount(1430)){
		visible = true;
		event_user(0);
	}
}else revealed = false;