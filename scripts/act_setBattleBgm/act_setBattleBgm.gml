function act_setBattleBgm(song) {
	songIndex = asset_get_index(cleanString(song));
	global.battleBgm = songIndex;
	return true;
}
