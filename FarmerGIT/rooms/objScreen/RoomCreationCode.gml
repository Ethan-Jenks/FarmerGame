// Create Manager
globalvar Manager;
Manager = instance_create_depth(0,0,0,PlayerManager);

// Create Mouse Collision
instance_create_depth(0,0,0,oMouseCollision);


// Main Creation
var buffer = 8;
Manager.taskTray = ButtonTray(buffer, room_height - buffer - 32, 5, false);
with(Manager.taskTray) {
	ds_list_add(buttons, ObjectiveButton(OP_FarmingMenu, "F", "Farming Menu\n(Higher Level = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_BattleMenu, "B", "Battle Menu\n(Higher Level = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_CookingMenu, "C", "Cooking Menu\n(Higher Accuracy = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_MiningMenu, "M", "Mining Menu\n(Higher Accuracy = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_CreateTaskSmelt, "S", "Smelting\n(Higher Level = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_CraftingMenu, "R", "Crafting Menu\n(Better % Quality = Better Quality)"));
	ds_list_add(buttons, ObjectiveButton(OP_Overworld, "O", "Overworld"));
	if(debug) {
		ds_list_add(buttons, ObjectiveButton(OP_GiveDebug, "G", "Give Debug Items"));
	}
}

Manager.otherTray = ButtonTray(room_width - 3 * buffer - 88, room_height - buffer - 32, -1, false);
with(Manager.otherTray) {
	depth = -10;
	ds_list_add(buttons, instance_create_depth(-100, -100, -11, oTrashSlot));
	ds_list_add(buttons, ObjectiveButton(OP_ExitTask, "X", "Exit Task"));
	ds_list_add(buttons, instance_create_depth(-100, -100, -11, oSaveButton));
	ds_list_add(buttons, ObjectiveButton(OP_ToggleTooltips, "T", "Toggle Tooltips\n(You can hold right click anywhere\nto temporarily enable/disable)"));
}

var xx = room_width*7/9;
var yy = room_height*2/5;

xx -= (24 * 3/2) + buffer;
yy -= (24 * 3/2) + buffer;
instance_create_depth(xx,yy,-6,oPlayerStatus);


globalvar inOverworld;
inOverworld = false;