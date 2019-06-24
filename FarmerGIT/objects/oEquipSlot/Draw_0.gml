image_index = equipSlot;
var equippedItem = ds_list_find_value(equippedItems,equipSlot);
depth = handler.depth - 1;
if(!ItemIsEmpty(equippedItem) ) {
	equippedItem.x = x+4;
	equippedItem.y = y+4;
	equippedItem.handler = id;
} else {
	equippedItem.x = -100;
	equippedItem.y = -100;
}
draw_self();
