/// STRIKE BAR
var proficiency = ((Manager.miningSkill.level) * (1 - baseSpd) / (levelCap)) + baseSpd;
if(proficiency < 1) proficiency = 1;
strikeBar.current = (cos((t * proficiency) + pi) + 1) * 50 ;

/// TIMER
t += spd;

/// COMPLETE CHECK
if(durabilityBar.current >= durabilityBar.maximum) {
	complete = true;	
}

/// ON COMPLETE
event_inherited();