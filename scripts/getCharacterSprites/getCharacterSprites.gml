function getCharacterSprites(char) {
	if(!is_undefined(char)){
		return(characterSpriteSwitch(char.class, char.gender, char.costume));
	}
	return[spr_fighterM1Front, spr_fighterM1Back, spr_fighterM1Side, spr_fighterM1Dead, spr_fighterM1Defend, spr_fighterM1Low, spr_fighterM1Ouch];;
}
