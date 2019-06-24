draw_set_default();
draw_set_font(fTitle);
draw_set_halign(1);

var yy = room_height/3
var title = "Farmer\nBy Ethan Jenks";
draw_text(room_width/2,yy, title);
var titleEnd = yy + string_height(title)/2;
draw_set_font(fButton);

if(debug) {
	draw_set_color(c_purple)
	draw_text(room_width/2,titleEnd,"DEBUG");
	draw_set_color(c_white)	
}

var yy = room_height*2/3;
textStart = yy;
draw_set_valign(0);
for(var i = 0; i < array_length_1d(options); i++) {
	if(i = selected) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_black);
	}
	
	draw_text(room_width/2,yy,options[i]);
	if(mouse_y > yy && mouse_y < yy + string_height(options[i])) {
		selected  = i;	
	}
	yy += 20;
}
textEnd = yy;