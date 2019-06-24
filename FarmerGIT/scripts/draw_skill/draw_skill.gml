var xx = argument0;
var yy = argument1;
var drawnSkill = argument2;
if(drawnSkill.curve[drawnSkill.level] != -1) {
	draw_text(xx,yy,drawnSkill.name + " (" + string(drawnSkill.level) + "): " 
	+ string(drawnSkill.experience) + "/"
	+ string(drawnSkill.curve[drawnSkill.level]));
} else {
	draw_text(xx,yy,drawnSkill.name + " (" + string(drawnSkill.level) + "): MAX");
}