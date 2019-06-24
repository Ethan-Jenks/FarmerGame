/// @description On Complete
var reward = general_reward(taskName);
with(Manager.playerItems)add_to_collection(reward);

averageStrike = 0;
numStrikes = 0;
t = 0;
durabilityBar.current = 0;
complete = false;