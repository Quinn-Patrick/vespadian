/// @description Insert description here
// You can write your code in this editor
initialize();

mode = 0;

select = 0;
fileSelect = 0;

fileScroll = 0;

maxSelect = 1;
fileMax = 255;

introTime = 0;
creditOpacity = 0;
loadOpacity = 0;

fadeOutTimer = 0;
fadeOutTimeLimit = 120;

fadeInTimer = 0;
fadeInTimeLimit = 60;

depth = -1000;
audio_play_sound(mus_mainTheme, 10, true);