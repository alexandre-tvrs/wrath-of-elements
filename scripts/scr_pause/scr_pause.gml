function scr_pause() {
	if(player.alarm[0] > -1 || player.alarm[1] > -1)
	{
		return 1;
	}
	if(player.alarm[2] > -1 || player.alarm[3] > -1)
	{
		return 1;
	}
	if(player.alarm[4] > -1)
	{
		return 1;
	}
	if(player.alarm[5] > -1)
	{
		return 1;
	}
	if(player.deck_card_select > 0)
	{
		return 1;
	}
	if(player.pause)
	{
		return 1;
	}
	if(player.prize_select)
	{
		return 1;
	}
}
