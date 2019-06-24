event_inherited();

general_setup(taskName);

// Name And Skills
name = "Farm: " + taskName;
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.farmingSkill);

// Progress Bars
progressBar = Bar(0,maxProgress,BC_GradientRedGreen);
progressBar.label = "Progress";
ds_list_add(barList, progressBar);
	
// Buttons
waitButton = ObjectiveButton(OP_Wait, "W", "Wait:");
ds_list_add(buttonList, waitButton);