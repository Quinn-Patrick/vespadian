function displayStatPreview(argument0, argument1, argument2) {
	baseX = argument0;
	baseY = argument1;
	baseChar = argument2;

	gap = 48;
	sep = 52;



	draw_text(baseX, baseY, "PA: " + string(baseChar.pAtk));
	if(global.previewCharacter.pAtk == baseChar.pAtk) draw_text(baseX+sep, baseY, "->" + string(global.previewCharacter.pAtk));
	else if(global.previewCharacter.pAtk > baseChar.pAtk) draw_text_color(baseX+sep, baseY, "->" + string(global.previewCharacter.pAtk), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY, "->" + string(global.previewCharacter.pAtk), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+16, "PD: " + string(baseChar.pDef));
	if(global.previewCharacter.pDef == baseChar.pDef) draw_text(baseX+sep, baseY+16, "->" + string(global.previewCharacter.pDef));
	else if(global.previewCharacter.pDef > baseChar.pDef) draw_text_color(baseX+sep, baseY+16, "->" + string(global.previewCharacter.pDef), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+16, "->" + string(global.previewCharacter.pDef), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+32, "Sd: " + string(baseChar.spd));
	if(global.previewCharacter.spd == baseChar.spd) draw_text(baseX+sep, baseY+32, "->" + string(global.previewCharacter.spd));
	else if(global.previewCharacter.spd > baseChar.spd) draw_text_color(baseX+sep, baseY+32, "->" + string(global.previewCharacter.spd), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+32, "->" + string(global.previewCharacter.spd), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+48, "Ac: " + string(baseChar.acc));
	if(global.previewCharacter.acc == baseChar.acc) draw_text(baseX+sep, baseY+48, "->" + string(global.previewCharacter.acc));
	else if(global.previewCharacter.acc > baseChar.acc) draw_text_color(baseX+sep, baseY+48, "->" + string(global.previewCharacter.acc), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+48, "->" + string(global.previewCharacter.acc), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+64, "Ev: " + string(baseChar.eva));
	if(global.previewCharacter.eva == baseChar.eva) draw_text(baseX+sep, baseY+64, "->" + string(global.previewCharacter.eva));
	else if(global.previewCharacter.eva > baseChar.eva) draw_text_color(baseX+sep, baseY+64, "->" + string(global.previewCharacter.eva), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+64, "->" + string(global.previewCharacter.eva), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+80, "OM: " + string(baseChar.amAtk));
	if(global.previewCharacter.amAtk == baseChar.amAtk) draw_text(baseX+sep, baseY+80, "->" + string(global.previewCharacter.amAtk));
	else if(global.previewCharacter.amAtk > baseChar.amAtk) draw_text_color(baseX+sep, baseY+80, "->" + string(global.previewCharacter.amAtk), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+80, "->" + string(global.previewCharacter.amAtk), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+96, "DM: " + string(baseChar.dmAtk));
	if(global.previewCharacter.dmAtk == baseChar.dmAtk) draw_text(baseX+sep, baseY+96, "->" + string(global.previewCharacter.dmAtk));
	else if(global.previewCharacter.dmAtk > baseChar.dmAtk) draw_text_color(baseX+sep, baseY+96, "->" + string(global.previewCharacter.dmAtk), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+sep, baseY+96, "->" + string(global.previewCharacter.dmAtk), downColor, downColor, downColor, downColor, 1);



	draw_text(baseX+sep+gap, baseY, "hR: " + string(baseChar.hRes));
	if(global.previewCharacter.hRes == baseChar.hRes) draw_text(baseX+2*sep+gap, baseY, "->" + string(global.previewCharacter.hRes));
	else if(global.previewCharacter.hRes > baseChar.hRes) draw_text_color(baseX+2*sep+gap, baseY, "->" + string(global.previewCharacter.hRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY, "->" + string(global.previewCharacter.hRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+16, "cR: " + string(baseChar.cRes));
	if(global.previewCharacter.cRes == baseChar.cRes) draw_text(baseX+2*sep+gap, baseY+16, "->" + string(global.previewCharacter.cRes));
	else if(global.previewCharacter.cRes > baseChar.cRes) draw_text_color(baseX+2*sep+gap, baseY+16, "->" + string(global.previewCharacter.cRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+16, "->" + string(global.previewCharacter.cRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+32, "eR: " + string(baseChar.eRes));
	if(global.previewCharacter.eRes == baseChar.eRes) draw_text(baseX+2*sep+gap, baseY+32, "->" + string(global.previewCharacter.eRes));
	else if(global.previewCharacter.eRes > baseChar.eRes) draw_text_color(baseX+2*sep+gap, baseY+32, "->" + string(global.previewCharacter.eRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+32, "->" + string(global.previewCharacter.eRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+48, "pR: " + string(baseChar.pRes));
	if(global.previewCharacter.pRes == baseChar.pRes) draw_text(baseX+2*sep+gap, baseY+48, "->" + string(global.previewCharacter.pRes));
	else if(global.previewCharacter.pRes > baseChar.pRes) draw_text_color(baseX+2*sep+gap, baseY+48, "->" + string(global.previewCharacter.pRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+48, "->" + string(global.previewCharacter.pRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+64, "aR: " + string(baseChar.aRes));
	if(global.previewCharacter.aRes == baseChar.aRes) draw_text(baseX+2*sep+gap, baseY+64, "->" + string(global.previewCharacter.aRes));
	else if(global.previewCharacter.aRes > baseChar.aRes) draw_text_color(baseX+2*sep+gap, baseY+64, "->" + string(global.previewCharacter.aRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+64, "->" + string(global.previewCharacter.aRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+80, "vR: " + string(baseChar.vRes));
	if(global.previewCharacter.vRes == baseChar.vRes) draw_text(baseX+2*sep+gap, baseY+80, "->" + string(global.previewCharacter.vRes));
	else if(global.previewCharacter.vRes > baseChar.vRes) draw_text_color(baseX+2*sep+gap, baseY+80, "->" + string(global.previewCharacter.vRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+80, "->" + string(global.previewCharacter.vRes), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX+sep+gap, baseY+96, "mR: " + string(baseChar.mRes));
	if(global.previewCharacter.mRes == baseChar.mRes) draw_text(baseX+2*sep+gap, baseY+96, "->" + string(global.previewCharacter.mRes));
	else if(global.previewCharacter.mRes > baseChar.mRes) draw_text_color(baseX+2*sep+gap, baseY+96, "->" + string(global.previewCharacter.mRes), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+2*sep+gap, baseY+96, "->" + string(global.previewCharacter.mRes), downColor, downColor, downColor, downColor, 1);


	draw_text(baseX, baseY+112, "HP: " + string(baseChar.maxHp));
	if(global.previewCharacter.maxHp == baseChar.maxHp) draw_text(baseX+1.5*sep, baseY+112, "->  " + string(global.previewCharacter.maxHp));
	else if(global.previewCharacter.maxHp > baseChar.maxHp) draw_text_color(baseX+1.5*sep, baseY+112, "->  " + string(global.previewCharacter.maxHp), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+1.5*sep, baseY+112, "->  " + string(global.previewCharacter.maxHp), downColor, downColor, downColor, downColor, 1);

	draw_text(baseX, baseY+128, "SP: " + string(baseChar.maxSp));
	if(global.previewCharacter.maxSp == baseChar.maxSp) draw_text(baseX+1.5*sep, baseY+128, "->  " + string(global.previewCharacter.maxSp));
	else if(global.previewCharacter.maxSp > baseChar.maxSp) draw_text_color(baseX+1.5*sep, baseY+128, "->  " + string(global.previewCharacter.maxSp), upColor, upColor, upColor, upColor, 1);
	else draw_text_color(baseX+1.5*sep, baseY+128, "->  " + string(global.previewCharacter.maxSp), downColor, downColor, downColor, downColor, 1);


}
