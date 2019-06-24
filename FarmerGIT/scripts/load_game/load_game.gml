heldItem = load_item(argument0,"ItemHELD");

globalvar equippedItems;
equippedItems = ds_list_create();
ds_list_insert(equippedItems, HEAD, load_item(argument0,"ItemHEAD"));
ds_list_insert(equippedItems, OFFHAND, load_item(argument0,"ItemOFFHAND"));
ds_list_insert(equippedItems, CHEST, load_item(argument0,"ItemCHEST"));
ds_list_insert(equippedItems, MAINHAND, load_item(argument0,"ItemMAINHAND"));
ds_list_insert(equippedItems, LEGS, load_item(argument0,"ItemLEGS"));
ds_list_insert(equippedItems, CONSUMABLE, load_item(argument0,"ItemCONSUMABLE"));


playerItems = load_collection(8,64,argument0);
playerItems.name = "Player Items";

initialize_skills();
load_skills(argument0);