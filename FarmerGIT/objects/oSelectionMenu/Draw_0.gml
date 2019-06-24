draw_set_default();
event_inherited();
draw_set_default();

var xx = x;
var yy = y;
var buffer = 8;
width = 0;




yy += string_height(name);

for(var i = 0; i < ds_list_size(buttons); i++) {
	var thisButton = ds_list_find_value(buttons, i);
	thisButton.x = xx;
	thisButton.y = yy;
	var textToDraw = string(thisButton.name);
	draw_text(xx + thisButton.sprite_width + buffer, yy + (thisButton.sprite_height/2), textToDraw);
	
	width = max(width, string_width(name) + 2 * buffer, thisButton.sprite_width + buffer + string_width(textToDraw));
	yy += thisButton.sprite_height + buffer/2
}
height = yy - y;

if(name != "null") {
	draw_set_valign(0);
	draw_set_halign(1);
	draw_text(xx + (width/2) + buffer,y,name);
}


