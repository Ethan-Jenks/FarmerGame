for(var i = 0; i < 99; i++) {
	exponentialCurve[i] = power(2,i);
}

farmingSkill = Skill("Farming",exponentialCurve);
bakingSkill = Skill("Cooking",exponentialCurve);
miningSkill = Skill("Mining",exponentialCurve);
smeltingSkill = Skill("Smelting",exponentialCurve);
craftingSkill = Skill("Crafting",exponentialCurve);