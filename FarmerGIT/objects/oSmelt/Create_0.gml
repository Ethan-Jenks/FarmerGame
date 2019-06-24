event_inherited();

// Other Variables
inputItem = "";
progressItem = "";

// Name And Skills
name = "Smelt";
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.smeltingSkill);
	
// Progress Bars
progressBar = Bar(0,100, BC_GradientRedGreen);
ds_list_add(barList, progressBar);
	
inputBar = Bar(0,100, BC_ConstantYellow);
inputBar.heatLevel = 0;
ds_list_add(barList, inputBar);
	
heatBar = Bar(0, 100, BC_GradientRedGreen);
heatBar.label = "Heat";
heatSpd = -0.01;
heatBar.goal = 1;
ds_list_add(barList, heatBar);
	
// Buttons
addOre = ObjectiveButton(OP_AddOre, "A", "Put selected item in furnace");
ds_list_add(buttonList, addOre);
addFuel = ObjectiveButton(OP_AddFuel, "F", "Add selected fuel");
ds_list_add(buttonList, addFuel);
emptyFurnace = ObjectiveButton(OP_EmptyFurnace, "E", "Empty the furnace");
ds_list_add(buttonList, emptyFurnace);