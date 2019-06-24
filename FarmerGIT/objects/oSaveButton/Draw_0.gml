draw_self();

if(saving) {
	draw_set_default();
	draw_set_halign(1);
	draw_set_valign(1);
	draw_set_font(fTitle);
	draw_text(room_width/2,room_height/2,"SAVING");
}
if(activelySaving) {
	save_game("FarmerSave.ini");
	saving = false;
	activelySaving = false;
}
if(saving) {
	activelySaving = true;	
}
