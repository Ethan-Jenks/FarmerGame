var index = argument0
var thisItem = ds_list_find_value(items, index);
thisItem.quantity -= 1;
if(thisItem.quantity <= 0) {
	if(selected > 0) selected --;
	ds_list_delete(items, index);
}
return thisItem;