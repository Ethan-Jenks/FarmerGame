if(handler = Manager.playerItems) {
	Manager.playerItems.selected = ds_list_find_index(Manager.playerItems.items,id);
	with(Manager.playerItems){
		event_perform(ev_keypress, vk_enter);
	}
} else if(id == heldItem && keyboard_check(vk_shift)){
	var temp = heldItem;
	heldItem = EmptyItem();
	instance_destroy(temp);
}