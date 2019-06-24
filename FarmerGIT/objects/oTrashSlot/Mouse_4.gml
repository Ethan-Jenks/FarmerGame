var temp = heldItem;
heldItem = EmptyItem();
heldItem.handler = Manager;
instance_destroy(temp);