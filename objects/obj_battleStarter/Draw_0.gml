/// @description Insert description here
// You can write your code in this editor
x1box = (1-((startTimer*1.1)/startTime))*512;
y1box = (1-((startTimer*1.1)/startTime))*384;
x2box = (((startTimer*1.1)/startTime)*512)+512;
y2box = (((startTimer*1.1)/startTime)*384)+384;

draw_rectangle_colour(__view_get( e__VW.XView, 0 ) + x1box, __view_get( e__VW.YView, 0 ) + y1box, __view_get( e__VW.XView, 0 ) + x2box, __view_get( e__VW.YView, 0 ) + y2box, c_black, c_black, c_black, c_black, false);