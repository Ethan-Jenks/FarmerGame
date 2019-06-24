if(activeMenu != noone) {
	instance_destroy(activeMenu);	
}
activeMenu = SelectionMenu("Battle");
ds_list_add(activeMenu.buttons, SelectionButton("Log Dummy", iSplinter, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Chicken", iChickenEgg, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Exit", iExit, activeMenu));;