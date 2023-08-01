function scr_shuffle_deck() {
	with(obj_player)
	{

	var numShuffle = 100;

	//Condição para não embaralhar o deck
	if(deckCount == 0)
	{
		return;
	}


	for(j = 0; j < numShuffle; j++)
	{
		//Ação de embaralhar
		for(i = 0; i < deckCount; i++)
		{
			var temp_1 = irandom_range(0, deckCount-1);
			if(deck[i] > 0 && deck[temp_1] > 0)
			{
				var temp_2 = deck[i];
				deck[i] = deck[temp_1];
				deck[temp_1] = temp_2;
			}
		}
	}

	return;

	}


}
