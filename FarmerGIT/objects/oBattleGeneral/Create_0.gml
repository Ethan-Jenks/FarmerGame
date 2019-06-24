event_inherited();

general_setup(enemyToBattle);

// Name And Skills
name = "Battle: " + enemyToBattle;
ds_list_clear(activeSkills);
ds_list_add(activeSkills, Manager.farmingSkill);

// Progress Bars
enemyHealthBar = Bar(0,enemyHealth,BC_GradientRedGreen);
enemyHealthBar.current = enemyHealthBar.maximum;
enemyHealthBar.label = "Enemy Health";
ds_list_add(barList, enemyHealthBar);
	
// Buttons
attackButton = ObjectiveButton(OP_AttackEnemy, "A", "Attack");
ds_list_add(buttonList, attackButton);