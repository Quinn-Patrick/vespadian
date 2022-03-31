function boostScoreAll(argument0, argument1) {
	charId = argument0;

	boost = argument1

	global.scores[charId, 0] += boost;
	global.scores[charId, 1] += boost;
	global.scores[charId, 2] += boost;
	global.scores[charId, 3] += boost;
	global.scores[charId, 4] += boost;
	global.scores[charId, 5] += boost;
	global.scores[charId, 6] += boost;
	global.scores[charId, 7] += boost;

	calcParty();


}
