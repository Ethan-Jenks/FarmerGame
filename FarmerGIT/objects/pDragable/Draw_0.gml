if(backdrop) {
	draw_set_default();
	draw_set_alpha(0.7);
	draw_set_color(c_gray);
	draw_roundrect(x-4,y-4,x+width+4,y+height+4,false);
	draw_set_color(c_black);
	draw_roundrect(x-4,y-4,x+width+4,y+height+4,true);
}
draw_self();

