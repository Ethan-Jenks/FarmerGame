var equippedItem = ds_list_find_value(equippedItems,equipSlot);
var temp = equippedItem;
ds_list_replace(equippedItems, equipSlot, heldItem);
equippedItem = heldItem;
equippedItem.handler = id;
heldItem = temp;
heldItem.handler = Manager;