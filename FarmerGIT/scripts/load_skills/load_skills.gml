ini_open(argument0);

farmingSkill.level = ini_read_real("FarmingSkill","Level", 0);
farmingSkill.experience = ini_read_real("FarmingSkill","Experience",0);

miningSkill.level = ini_read_real("MiningSkill","Level",0);
miningSkill.experience = ini_read_real("MiningSkill","Experience",0);

bakingSkill.level = ini_read_real("CookingSkill","Level",0);
bakingSkill.experience = ini_read_real("CookingSkill","Experience",0);

smeltingSkill.level = ini_read_real("SmeltingSkill","Level",0);
smeltingSkill.experience = ini_read_real("SmeltingSkill","Experience",0);

craftingSkill.level = ini_read_real("CraftingSkill","Level",0);
craftingSkill.experience = ini_read_real("CraftingSkill","Experience",0);

ini_close();