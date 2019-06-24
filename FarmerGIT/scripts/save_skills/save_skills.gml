ini_open(argument0);

ini_write_real("FarmingSkill","Level",Manager.farmingSkill.level);
ini_write_real("FarmingSkill","Experience",Manager.farmingSkill.experience);

ini_write_real("MiningSkill","Level",Manager.miningSkill.level);
ini_write_real("MiningSkill","Experience",Manager.miningSkill.experience);

ini_write_real("CookingSkill","Level",Manager.bakingSkill.level);
ini_write_real("CookingSkill","Experience",Manager.bakingSkill.experience);

ini_write_real("SmeltingSkill","Level",Manager.smeltingSkill.level);
ini_write_real("SmeltingSkill","Experience",Manager.smeltingSkill.experience);

ini_write_real("CraftingSkill","Level",Manager.craftingSkill.level);
ini_write_real("CraftingSkill","Experience",Manager.craftingSkill.experience);

ini_close();