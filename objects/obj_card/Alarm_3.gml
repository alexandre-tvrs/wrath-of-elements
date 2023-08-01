if(point_distance(x,y,player.deck_x,player.deck_y) == 0)
{
	scr_remove_from_hand();
	player.deck[player.deckCount++] = cardNum;
	with(player)
	{
		scr_shuffle_deck();	
	}
	//player.deck_card_select = 1;
	player.pause = false;
	instance_destroy();
}
else
{
	alarm[3] = 1;
}