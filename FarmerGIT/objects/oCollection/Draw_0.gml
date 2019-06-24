event_inherited();
draw_set_default();

var xx = x;
var yy = y;
var buffer = 8;
draw_set_default();
width = 0;


draw_set_valign(0);

yy += string_height(name) + 4;

var pageStart = page*pageSize;
var pageEnd = (page+1)*pageSize;

for(var i = 0; i < size; i++) {
	var thisItem = ds_list_find_value(items, i);
	
	if(i = selected) {
		adjust = 4;
	} else {
		adjust = 0
	}
	
	switch(ds_map_size(thisItem.attributes)) {
		case 0:
			draw_set_color(c_white);
			break;
		case 1:
			draw_set_color(c_aqua);
			break;
		case 2:
			draw_set_color(c_yellow);
			break;
		case 3:
			draw_set_color(c_purple);
			break;
		default:
			draw_set_color(c_white);
			break;
	}	
	if(thisItem.quality >= 10 && thisItem.applicableSlot != -1) {
		draw_set_color(c_red);
	}
	
	if(i >= pageStart && i < pageEnd && show) {
		
		thisItem.x = xx;
		thisItem.y = yy;
		var textToDraw = "-";
		if(ItemIsEmpty(thisItem)){
			draw_text(xx + 20 + adjust, yy, textToDraw);
		} else {
			textToDraw = string(thisItem.quality) + "*";
			if(thisItem.stackable) {
				textToDraw += " - " + string(thisItem.quantity);
			}
			draw_text(xx + 20 + adjust, yy, textToDraw);
		}
		width = max(width, string_width(name) + 16, 20 + 4 + string_width(textToDraw));
		yy += 16;
	} else {
		thisItem.x = -100;
		thisItem.y = -100;
	}
}

if(show) {
	leftButton.x = relative_distance(x, x+width, 0.20) - leftButton.sprite_width/2;
	leftButton.y = yy;
	if(pageStart > 0) {
		leftButton.dir = 2;	
	} else {
		leftButton.dir = 6;	
	}

	rightButton.x = relative_distance(x, x+width, 0.8) - rightButton.sprite_width/2;
	rightButton.y = yy;
	if(pageEnd < size) {
		rightButton.dir = 0;
	} else {
		rightButton.dir = 4;	
	}

	draw_set_valign(0);
	draw_set_halign(1);
	draw_text(relative_distance(x, x+width, 0.5), yy, string(page + 1) + "\n(" + string(ceil(size/pageSize)) + ")");

	yy += leftButton.sprite_height;
} else {
	leftButton.x = -100;
	leftButton.y = -100;
	rightButton.x = -100;
	rightButton.y = -100;
}

height = yy - y;

if(name != "null") {
	draw_set_color(c_white);
	draw_set_valign(0);
	draw_set_halign(1);
	width = max(width, string_width(name) + buffer * 2);
	draw_text(xx + (width/2) + 8,y,name);
}