function scr_remove_from_hand() {
	player.handCount--;
	player.hand[hand_position] = 0;
	for(i = hand_position; i < player.handCount; i++)
	{
		player.hand[i] = player.hand[i+1];
		if(i < player.handCount)
		{
			player.handCard[i] = player.handCard[i+1];
			player.handCard[i].hand_position--;
			player.handCard[i].depth--;
		}
	}

	return;


}
