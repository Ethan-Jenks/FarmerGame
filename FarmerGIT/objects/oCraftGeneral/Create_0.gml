///@param itemToCraft
event_inherited();

maxProgress = 1;
maxDurability = 1;
maxQuality = 1;
general_setup(taskName);


// Name And Skills
name = "Craft: " + taskName;
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.craftingSkill);
	
// Progress Bars
progressBar = Bar(0,maxProgress, BC_ConstantYellow);
ds_list_add(barList, progressBar);
	
qualityBar = Bar(0,maxQuality, BC_GradientRedGreen);
qualityBar.current = 0;
ds_list_add(barList, qualityBar);
	
healthBar = Bar(0,maxDurability, BC_GradientRedGreen);
healthBar.current = 100;
ds_list_add(barList, healthBar);
	
// Buttons
addIngredient = ObjectiveButton(OP_AddIngredient, "I", "Add selected ingredient");
ds_list_add(buttonList, addIngredient);
carefulCraft = ObjectiveButton(OP_CarefulCraft, "C", "Careful Craft:\n + 10 Progress (95%)\n - 10 Item Health");
ds_list_add(buttonList, carefulCraft);
normalCraft = ObjectiveButton(OP_NormalCraft, "N", "Normal Craft:\n + 20 Progress (60%)\n - 10 Item Health");
ds_list_add(buttonList, normalCraft);
desprateCraft = ObjectiveButton(OP_DesprateCraft, "D", "Desprate Craft:\n + 30 Progress (30%)\n - 10 Item Health");
ds_list_add(buttonList, desprateCraft);
	