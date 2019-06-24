/// @description On Complete


var reward = smelting_reward(outputItem);
with(Manager.playerItems)add_to_collection(reward);

ds_map_clear(potentialAttributes);
progressBar.current = 0;
progressItem = "";
complete = false;