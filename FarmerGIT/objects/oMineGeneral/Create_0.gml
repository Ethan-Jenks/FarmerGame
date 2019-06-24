event_inherited();

general_setup(taskName);

// Additional Variables
averageStrike = 0;
numStrikes = 0;
t = 0;
	
// Name And Skills
name = "Mine: " + taskName;
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.miningSkill);
	
// Progress Bar
durabilityBar = Bar(0,durability,BC_GradientRedGreen);
durabilityBar.label = "Progress";
ds_list_add(barList, durabilityBar);
	
// Timing Bar
strikeBar = Bar(0,100,BC_ConstantYellow);
strikeBar.label = "Power";
spd = 0.1;
ds_list_add(barList, strikeBar);
	
// Buttons
strikeButton = ObjectiveButton(OP_Strike, "S", "Strike pickaxe when bar is full");
ds_list_add(buttonList, strikeButton);