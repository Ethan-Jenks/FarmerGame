/*
if(id != heldItem) {
	draw_self();
} else {
	draw_sprite(iHeldItem, 0, x, y + 2);	
}
*/
draw_self();
if(name != "empty") {
	draw_sprite(sprite,0,x,y);
}