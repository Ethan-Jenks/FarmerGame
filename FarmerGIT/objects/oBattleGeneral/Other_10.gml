/// @description On Complete
//

var reward = general_reward(enemyToBattle);

with(Manager.playerItems)add_to_collection(reward);

enemyHealthBar.current = enemyHealthBar.maximum;
complete = false;