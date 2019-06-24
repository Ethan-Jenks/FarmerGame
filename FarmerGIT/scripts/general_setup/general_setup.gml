switch(argument0) {
	// Farming
	case "Potato":
		maxProgress = 10;
		break;
	case "Carrot":
		maxProgress = 20;
		break;
		
	// Cooking
	case "Baked Potato":
		ds_map_add(ingredientMap, "Potato", 1);
		ds_map_copy(originalIngredients, ingredientMap);
		break;
		
	// Mining
	case "Coal":
		name = "Coal";
		durability = 297;
		baseSpd = 1.75;
		levelCap = 4;
		break;
	case "Iron Ore":
		name = "Iron Ore";
		durability = 495;
		baseSpd = 4;
		levelCap = 6;
		break;
	case "Copper Ore":
		name = "Copper Ore";
		durability = 297;
		baseSpd = 4;
		levelCap = 6;
		break;
		
	// Crafting
	case "Iron Pickaxe":
		ds_map_add(ingredientMap,"Iron Bar" , 3);
		ds_map_add(originalIngredients,"Iron Bar" , 3);
		maxProgress = 110;
		maxDurability = 100;
		maxQuality = 12;
		break;
	case "Copper Pickaxe":
		ds_map_add(ingredientMap,"Copper Bar" , 3);
		ds_map_add(originalIngredients,"Copper Bar" , 3);
		maxProgress = 80;
		maxDurability = 100;
		maxQuality = 9;
		break;
	case "Copper Knuckles":
		ds_map_add(ingredientMap,"Copper Bar" , 2);
		ds_map_add(originalIngredients,"Copper Bar" , 2);
		maxProgress = 40;
		maxDurability = 50;
		maxQuality = 6;
		break;
		
	// Battle
	case "Log Dummy":
		enemySprite = iLogDummy;
		enemyHealth = 3;
		enemyAttack = 0;
		break;
	case "Chicken":
		enemySprite = iChicken;
		enemyHealth = 10;
		enemyAttack = 2;
		break;
		
	default:
		maxProgress = 1;
		break;
}