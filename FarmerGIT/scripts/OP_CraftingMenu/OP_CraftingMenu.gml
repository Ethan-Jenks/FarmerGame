if(activeMenu != noone) {
	instance_destroy(activeMenu);	
}
activeMenu = SelectionMenu("Crafting");
ds_list_add(activeMenu.buttons, SelectionButton("Iron Pickaxe", iIronPick, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Copper Pickaxe", iCopperPick, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Copper Knuckles", iCopperKnuckles, activeMenu));
ds_list_add(activeMenu.buttons, SelectionButton("Exit", iExit, activeMenu));