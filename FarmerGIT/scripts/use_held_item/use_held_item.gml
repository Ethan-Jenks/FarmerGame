heldItem.quantity --;
if(heldItem.quantity == 0) {
	heldItem = EmptyItem();
	heldItem.handler = Manager;
}