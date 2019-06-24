var reward = noone;

switch(argument0) {
	// Farming
	case "Potato":
		var qual = irandom(1);
		if(irandom(Manager.farmingSkill.level) > 1) {
			qual += 1;
		}
		var reward = Item("Potato",qual,1,iPotato);
		reward.summary = "\n - A Tasty Tuber";
		reward.applicableSlot = CONSUMABLE;
		ds_map_add(reward.innates, "Heal", 1*qual);
		Manager.farmingSkill.experience += 1;
		break;
	case "Carrot":
		var qual = irandom(1);
		if(irandom(Manager.farmingSkill.level) > 3) {
			qual += 1;
		}
		var reward = Item("Carrot",qual,1,iCarrot);
		reward.applicableSlot = CONSUMABLE;
		ds_map_add(reward.innates, "Heal", 1.5*qual);
		Manager.farmingSkill.experience += 2;
		break;
	
	// Cooking
	case "Baked Potato":
		var error = abs(bakeTime.current - bakeTime.goal*100);
		var qual;
		if(error < 0.2) {
			qual = 3;
		} else if(error < 1) {
			qual = 2;
		} else if(error < 3) {
			qual = 1;	
		} else {
			qual = 0;
		}
		var reward = Item("Baked Potato",qual,1,iBakedPotato);
		reward.applicableSlot = CONSUMABLE;
		ds_map_add(reward.innates, "Heal", 5*qual);
		Manager.bakingSkill.experience += max(qual,1);
		break;
	
	// Mining
	case "Coal":
		var qual = 0;
		if(averageStrike > 90) qual = 1;
		if(averageStrike > 96) qual = 2;
		if(averageStrike > 99) qual = 3;
		qual += Manager.miningSkill.level div 3;
		var reward = Item("Coal", qual, 1, iCoal);
		expMod = 1;
		Manager.miningSkill.experience += max(expMod * qual,1);
		break;
	case "Iron Ore":
		var qual = 0;
		if(averageStrike > 90) qual = 1;
		if(averageStrike > 96) qual = 2;
		if(averageStrike > 99) qual = 3;
		qual += Manager.miningSkill.level div 6;
		var reward = Item("Iron Ore", qual, 1,iIronOre);
		expMod = 2;
		Manager.miningSkill.experience += max(expMod * qual,1);
		break;
	case "Copper Ore":
		var qual = 0;
		if(averageStrike > 90) qual = 1;
		if(averageStrike > 96) qual = 2;
		if(averageStrike > 99) qual = 3;
		qual += Manager.miningSkill.level div 6;
		var reward = Item("Copper Ore", qual, 1,iCopperOre);
		expMod = 2;
		Manager.miningSkill.experience += max(expMod * qual,1);
		break;
	
	// Battle
	case "Log Dummy":
		reward = Item("Splinter",0,1,iSplinter);
		break;
	case "Chicken":
		reward = Item("Chicken Egg",irandom(1),1,iChickenEgg);
		break;
	
	// Crafting
	case "Iron Pickaxe":
		var rating = qualityBar.fauxPercent;
		var qual = 0;
		while(true) {
			if(random(1) < rating) {
				qual += 1;
				rating -= 0.1;
			} else {
				break;
			}
		}
		if(qual > 10) {
			qual = 10;	
		}
		reward = Item("Iron Pickaxe",qual,1,iIronPick);
		ds_map_add(reward.innates, "Mining Efficiency", qual/10);
		reward.applicableSlot = MAINHAND;
		reward.stackable = false;
		Manager.craftingSkill.experience += reward.quality;
		break;
	case "Copper Pickaxe":
		var rating = qualityBar.fauxPercent;
		var qual = 0;
		while(true) {
			if(random(1) < rating) {
				qual += 1;
				rating -= 0.1;
			} else {
				break;
			}
		}
		if(qual > 10) {
			qual = 10;	
		}
		reward = Item("Copper Pickaxe",qual,1,iCopperPick);
		ds_map_add(reward.innates, "Mining Efficiency", qual/20);
		reward.applicableSlot = MAINHAND;
		reward.stackable = false;
		Manager.craftingSkill.experience += reward.quality;
		break;
	case "Copper Knuckles":
		var rating = qualityBar.fauxPercent;
		var qual = 0;
		while(true) {
			if(random(1) < rating) {
				qual += 1;
				rating -= 0.1;
			} else {
				break;
			}
		}
		if(qual > 10) {
			qual = 10;	
		}
		reward = Item("Copper Knuckles",qual,1,iCopperKnuckles);
		ds_map_add(reward.innates, "Damage", qual*0.5);
		reward.applicableSlot = MAINHAND;
		reward.stackable = false;
		Manager.craftingSkill.experience += reward.quality;
		break;
	default:
		reward = Item("Junk",0,1,iAsh);
		break;
}

var key = ds_map_find_first(currentObjective.potentialAttributes);
for(var i = 0; i < ds_map_size(currentObjective.potentialAttributes); i++) {
	var thisAttribute = ds_map_find_value(currentObjective.potentialAttributes, key);

	add_attribute(reward, key, thisAttribute);
		
	key = ds_map_find_next(currentObjective.potentialAttributes, key);
}

return reward;