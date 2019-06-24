if(bakeTime.current < 80) {
	var reward = general_reward(taskName);
	with(Manager.playerItems)add_to_collection(reward);
} else {
	with(Manager.playerItems)add_to_collection(Item("Ash",0,1,iAsh));
	Manager.bakingSkill.experience += 1;
}

ds_map_copy(ingredientMap, originalIngredients);
bakeTime.current = 0;
complete = false;
