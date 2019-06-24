if(show) {
	var selectedItem = ds_list_find_value(items, selected);
	if(heldItem.stackable && item_equals(heldItem, selectedItem)) {
		selectedItem.quantity += heldItem.quantity;
		instance_destroy(heldItem);
		heldItem = EmptyItem();
		heldItem.handler = Manager;
	} else {
		var temp = selectedItem;
		ds_list_replace(items, selected, heldItem);
		selectedItem = heldItem;
		selectedItem.handler = id;
		heldItem = temp;
		heldItem.handler = Manager;
	}
}