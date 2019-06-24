// Find Matching
with(argument0)update_item_tip();

if(argument0.stackable) {
	for (var i = 0; i < size; i++){
		var thisItem = ds_list_find_value(items, i);
		if(item_equals(thisItem, argument0)) {
				thisItem.quantity += argument0.quantity;
				instance_destroy(argument0);
				return;
		}
	}
}
// ELSE

// Find Empty Space
for (var i = 0; i < size; i++){
	var thisItem = ds_list_find_value(items, i);
	if(thisItem.name == "empty"){
		var temp = thisItem;
		ds_list_replace(items,i,argument0);
		argument0.handler = id;
		instance_destroy(temp);
		return;
	}
}
// ELSE

// Trash
instance_destroy(argument0);