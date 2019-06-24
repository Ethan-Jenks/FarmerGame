for(var i = 0; i < ds_list_size(buttons); i++) {
	var thisButton = ds_list_find_value(buttons,i);
	instance_destroy(thisButton);
}

ds_list_destroy(buttons);