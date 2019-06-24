if(file_exists(argument0)) {
	file_delete(argument0);
}

//Held Item
save_item(argument0,"ItemHELD",heldItem);

//Equipped Items
save_item(argument0,"ItemHEAD", ds_list_find_value(equippedItems, HEAD));
save_item(argument0,"ItemOFFHAND", ds_list_find_value(equippedItems, OFFHAND));
save_item(argument0,"ItemCHEST", ds_list_find_value(equippedItems, CHEST));
save_item(argument0,"ItemMAINHAND", ds_list_find_value(equippedItems, MAINHAND));
save_item(argument0,"ItemLEGS", ds_list_find_value(equippedItems, LEGS));
save_item(argument0,"ItemCONSUMABLE", ds_list_find_value(equippedItems, CONSUMABLE));

//Inventory Items
var inventorySize = Manager.playerItems.size;
for(var i = 0; i < inventorySize; i++) {
	var thisItem = ds_list_find_value(Manager.playerItems.items, i);
	save_item(argument0,"Item" + string(i),thisItem);
}

save_skills(argument0);