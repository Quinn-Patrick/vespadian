function act_setMainBgm(song) {
	songIndex = asset_get_index(cleanString(song));
	global.mainBgm = songIndex;
	return true;
}
