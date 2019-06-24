buttons = ds_list_create();
leftButton = instance_create_depth(x,y,0,oDirectionButton);
leftButton.dir = 2;
leftButton.handler = id;
rightButton = instance_create_depth(x,y,0,oDirectionButton);
rightButton.dir = 0;
rightButton.handler = id;