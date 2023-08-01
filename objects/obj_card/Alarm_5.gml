card_in_hand = true;
yPos = 750;

with(player)
{
	with(handCard[handCount-1])
	{
		xPos = player.deck_x;
		yPos = player.deck_y;
		if(alarm[3] == -1)
		{
			alarm[3] = 1;
		}
	}
}

player.field_select = 0;