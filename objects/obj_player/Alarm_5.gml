if(temp < handCount)
{
	if(scr_is_card(hand[temp]))
	{
		with(handCard[temp])
		{
			if(alarm[2] == -1)
			{
				alarm[2] = 10;
			}
			scr_remove_from_hand();
		}
	}
	else
	{
		temp++;
	}
	alarm[5] = 5;
}