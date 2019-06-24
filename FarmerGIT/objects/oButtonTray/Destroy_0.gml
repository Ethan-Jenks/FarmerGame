for(var i = 0; i < ds_list_size(buttons); i++) {
	instance_destroy(ds_list_find_value(buttons, i));
}
instance_destroy(leftButton);
instance_destroy(rightButton);

ds_list_destroy(buttons);