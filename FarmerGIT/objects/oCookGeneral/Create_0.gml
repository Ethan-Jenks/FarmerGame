event_inherited();

general_setup(taskName);

// Name And Skills
name = "Cook: " + taskName;
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.bakingSkill);
	
// Progress Bars
bakeTime = Bar(0, 100, BC_GradientGoal);
bakeTime.goal = 0.60;
bakeTime.inacc = 0;
bakeTime.label = "Cook Timing";
ds_list_add(barList, bakeTime);
	
// Buttons
addIngredient = ObjectiveButton(OP_AddFood, "I", "Add selected ingredient");
ds_list_add(buttonList, addIngredient);
removeMeal = ObjectiveButton(OP_RemoveFood, "R", "Remove at the center of the yellow bar");
ds_list_add(buttonList, removeMeal);