event_inherited();

var buffer = 8;
var xx = x + buffer/2;
var yy = y + buffer/4;
size = ds_list_size(buttons);
if(pageSize > 0) {
	leftButton.x = xx;
	leftButton.y = yy;
	if(page > 0) {
		leftButton.dir = 2;
		xx += leftButton.width + buffer;
	} else {
		leftButton.dir = 6;
		xx += leftButton.width + buffer;
	}
	var pageStart = page*pageSize;
	var pageEnd = (page+1)*pageSize;
} else {
	leftButton.x = -100;
	leftButton.y = -100;
	var pageStart = 0;
	var pageEnd = size;
	xx += buffer;
}

var done = false;
for(var i = 0; i < max(size, pageEnd); i++) {
	var thisButton = ds_list_find_value(buttons, i);
	if(is_undefined(thisButton)) {
		done = true;
		xx += leftButton.width + buffer;
	} else {
		if(i >= pageStart && i < pageEnd) {
			thisButton.x = xx;
			thisButton.y = yy;
			thisButton.visible = true;
			xx += thisButton.width + buffer;
		} else {
			thisButton.x = -100;
			thisButton.y = -100;
			thisButton.visible = false;
		}
	}
}

if(pageSize > 0) {
	rightButton.x = xx;
	rightButton.y = yy;
	if(done == false && pageEnd < size) {
		rightButton.dir = 0;
		xx += rightButton.width;
	} else {
		rightButton.dir = 4;
		xx += rightButton.width;
	}
} else {
	xx -= buffer;
	rightButton.x = -100;
	rightButton.y = -100;
}

width = xx - x;
height = leftButton.height + buffer/2;