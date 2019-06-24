/// @description On Complete
var reward = general_reward(taskName);
with(Manager.playerItems)add_to_collection(reward);

progressBar.current = 0;
complete = false;