///@function ProgressBar(min,max,barDraw)
///@param min
///@param max
///@param barDraw

var thisID = instance_create_depth(-1000,-1000,0,oBar);

with(thisID) {
	x1 = x;
	y1 = y;
	
	minimum = argument0;
	maximum = argument1;
	current = minimum;
	barDraw = argument2;
}

return thisID;