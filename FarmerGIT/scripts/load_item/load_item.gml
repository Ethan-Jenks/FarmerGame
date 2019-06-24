var thisID = instance_create_depth(-100,-100,-1,oItem);

with(thisID) {
	ini_open(argument0);
	var section = argument1;
	name = ini_read_string(section,"Name",EMPTY);
	quality = ini_read_real(section,"Quality",0);
	quantity = ini_read_real(section,"Quantity",1);
	sprite = ini_read_real(section,"Sprite",iCoal);
	
	innates = ds_map_create();
	var readIns = ini_read_string(section,"Innates","null");
	if(readIns != "null") {
		ds_map_read(innates, readIns);
	}
	
	attributes = ds_map_create();
	var readAtts = ini_read_string(section,"Attributes","null");
	if(readAtts != "null") {
		ds_map_read(attributes, readAtts);
	}
	
	stackable = ini_read_real(section,"Stackable",false);
	applicableSlot = ini_read_real(section,"Equip Slot",-1);
	
	ini_close();
}
thisID.handler = id;
return thisID;