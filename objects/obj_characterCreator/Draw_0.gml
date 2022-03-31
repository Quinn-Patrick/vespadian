/// @description Insert description here
// You can write your code in this editor
genderNum = 0;
if(newCharacterGender == "F") genderNum = 1;

spriteArray = characterSpriteSwitch(newCharacterClass, genderNum, newCharacterColor)
draw_sprite(spriteArray[0], animFrame, x + 128, y + 192);

draw_text(x+256, y+42, "Name: " + newCharacterName);
draw_text(x+256, y+84, "Class: " + "<" + getClassName(newCharacterClass) + ">");
draw_text(x+256, y+126, "Style: " + "<" + newCharacterGender + ">");
draw_text(x+256, y+168, "Color: " + "<" + string(newCharacterColor+1) + ">");
draw_text(x+256, y+210, "Personality: " + "<" + getPersonalityName(newCharacterPersonality) + ">");

if(focus) draw_sprite(spr_cursor, 0, x + 224, y + 42 + (42*select))