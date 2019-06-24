with(Manager.playerItems)add_to_collection(Item("Iron Bar",4,99,iIronBar));
with(Manager.playerItems)add_to_collection(Item("Coal",4,99,iCoal));
with(Manager.playerItems)add_to_collection(Item("Iron Ore",4,99,iIronOre));
/*
var reward = Item("Iron Pick",5,1,iIronPick);
reward.summary += "\n - Mining Efficiency x2";
reward.applicableSlot = 3;
reward.miningEfficiency = 1;
reward.stackable = false;
with(Manager.playerItems)add_to_collection(reward);