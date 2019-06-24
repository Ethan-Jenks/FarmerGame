var ratio = percent;
if(ratio > goal) {
	ratio -= 2.5 * (ratio - goal);	
}
if(ratio < 0) {
	ratio = 0;	
}
ratio = (ratio/goal);
var hue = relative_distance(0,80,ratio);
draw_set_color(make_color_hsv(hue,255,255));

draw_bar();

draw_set_color(c_yellow);
draw_rectangle(relative_distance(x1,x2,goal) - inacc, y1 - 1, relative_distance(x1,x2,goal) + inacc, y2 + 2,false);