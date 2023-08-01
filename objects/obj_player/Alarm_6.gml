for(var i = 0; i < discardCount; i++)
{ 
	discardCard[i] = instance_create_layer(discard_x, discard_y,"Instances",obj_card);
	with(discardCard[i])
	{ 
		player = obj_player; 
		cardNum = player.discard[i];
		sprite_index = sprite_array[cardNum]; 
		send_to_deck = true; 
	}
		discard[i] = 0; 
} 
discardCount = 0;
