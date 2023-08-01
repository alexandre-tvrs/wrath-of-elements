function scr_hand_card_select() {
	for(var i = player.handCount-1; i >= 0; i--)
	{
		if(mouse_x > player.handCard[i].x - card_width/2 && mouse_x < player.handCard[i].x + card_width/2)
		{
			return i;
		}
	}

	return -1;


}
