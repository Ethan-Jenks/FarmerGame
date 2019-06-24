var x0 = argument0;
var y0 = argument1;
var text = argument2;
var col = argument3;
var len = string_width(text);
var height = string_height(text);

var buffer = 10;
/// Find Other Corner
var y1;
if(y0 - height - 2 > buffer) {
	draw_set_valign(2);
	y1 = y0 - height - 2;
} else {
	draw_set_valign(0);
	y1 = y0 + height + 1;
}
var x1;
if(x0 + len + 14 < room_width - buffer) {
	draw_set_halign(0);
	x1 = x0 + len + 14;
} else {
	draw_set_halign(2);
	x1 = x0 - len - 14;
}
//Alignment
draw_set_halign(0);
//Draw
draw_set_color(c_black);
draw_roundrect(x0,y0,x1,y1, false);
draw_set_color(col);
draw_roundrect(x0,y0,x1,y1, true);
draw_text(min(x0,x1) + 8, y0 + 1, text);