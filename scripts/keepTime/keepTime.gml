function keepTime() {
	global.gameTime += delta_time;

	tempTime = global.gameTime;

	global.hours = floor(global.gameTime / (3600000000));

	tempTime = tempTime % 3600000000;

	global.minutes = floor(tempTime / (60000000));

	tempTime = tempTime % 60000000;

	global.seconds = floor(tempTime / (1000000));


}
