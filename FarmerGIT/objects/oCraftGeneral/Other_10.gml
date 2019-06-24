/// @description On Complete
if(progressBar.current >= progressBar.maximum) {
	
	var reward = general_reward(taskName);
	with(Manager.playerItems)add_to_collection(reward);
	
}

ds_map_copy(ingredientMap, originalIngredients);

needsIngredients = true;
progressBar.current = 0;
healthBar.current = 100;
qualityBar.current = 0;

complete = false;