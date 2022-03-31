/// @description Insert description here
// You can write your code in this editor
x = obj_camera.x;
y = obj_camera.y;

if(fadeRate > 0){
	if(image_alpha < 1){
		image_alpha += 1/fadeRate;
	}
}
else{
	if(image_alpha > 0){
		image_alpha += 1/fadeRate;
	}
}

if(image_alpha == 1){
	fadeRate *= -1;
}

if(image_alpha <= 0){
	global.control = true;
	instance_destroy(self);
}

if(image_alpha > 1) image_alpha = 1;
else if(image_alpha < 0) image_alpha = 0;