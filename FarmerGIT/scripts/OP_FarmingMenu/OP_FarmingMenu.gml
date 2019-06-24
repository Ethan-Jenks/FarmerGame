if(activeMenu != noone) {
	instance_destroy(activeMenu);	
}
activeMenu = SelectionMenu("Farming");
ds_list_add(activeMenu.buttons, SelectionButton("Potato", iPotato, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Carrot", iCarrot, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Exit", iExit, activeMenu));