function act_playSound(soundName) {
	soundIndex = asset_get_index(cleanString(soundName));
	
	sound(soundIndex);
	return true;
}