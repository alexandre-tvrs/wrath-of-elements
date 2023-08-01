function scr_deck_all_cards() {
	var

	i = 0,
	j = 1;

	for(i = 0; i< 102; i++)	//i < O número de cartas no jogo
	{
		deck[i] = j++;
	}

	deckCount = i;

	return;


}
