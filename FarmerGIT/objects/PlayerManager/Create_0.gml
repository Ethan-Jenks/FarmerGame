globalvar heldItem;

if(loading) {
		load_game("FarmerSave.ini");
	} else {
		heldItem = EmptyItem();

		globalvar equippedItems;
		equippedItems = ds_list_create();
		ds_list_insert(equippedItems, HEAD, EmptyItem());
		ds_list_insert(equippedItems, OFFHAND, EmptyItem());
		ds_list_insert(equippedItems, CHEST, EmptyItem());
		ds_list_insert(equippedItems, MAINHAND, EmptyItem());
		ds_list_insert(equippedItems, LEGS, EmptyItem());
		ds_list_insert(equippedItems, CONSUMABLE, EmptyItem());

		playerItems = Collection(8 ,64 ,100);
		playerItems.name = "Player Items";
		initialize_skills();
}

hp = 100;
maxHp = 100;
