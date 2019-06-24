draw_set_default();
draw_set_valign(0);

draw_set_color(c_white);
heldItem.x = 8;
heldItem.y = 8;

if(heldItem.name == "empty"){ 
	draw_text(8 + 20, 8, "(Selected Item)");
} else {
	draw_text(8 + 20, 8, string(heldItem.quality) + "* " + heldItem.name + " #" + string(heldItem.quantity));
}