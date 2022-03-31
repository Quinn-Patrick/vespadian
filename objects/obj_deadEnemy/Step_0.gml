/// @description Insert description here
// You can write your code in this editor
timer++;
if(timer < phase1Threshold){
	if(timer % 1 == 0){
		x = rootX + random_range(-trembleRange,trembleRange);
		y = rootY + random_range(-trembleRange,trembleRange);
	}
}else if(timer < phase2Threshold){
	xVelo = baseVelo*cos(angle);
	yVelo = baseVelo*sin(angle);
	x += xVelo;
	y += yVelo
}else if(timer > phase3Threshold) instance_destroy();


sprite_index = sprite;