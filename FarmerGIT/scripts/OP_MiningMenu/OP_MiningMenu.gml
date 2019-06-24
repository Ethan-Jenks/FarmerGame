if(activeMenu != noone) {
	instance_destroy(activeMenu);	
}
activeMenu = SelectionMenu("Mining");
ds_list_add(activeMenu.buttons, SelectionButton("Coal", iCoal, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Copper Ore", iCopperOre, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Iron Ore", iIronOre, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Exit", iExit, activeMenu));