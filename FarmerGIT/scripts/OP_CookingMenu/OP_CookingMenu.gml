if(activeMenu != noone) {
	instance_destroy(activeMenu);	
}
activeMenu = SelectionMenu("Cooking");
ds_list_add(activeMenu.buttons, SelectionButton("Baked Potato", iBakedPotato, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Exit", iExit, activeMenu));