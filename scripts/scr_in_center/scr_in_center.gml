function scr_in_center() {
	if(obj_player.player_dead == false)
	{
		if(x > 0 && x < 1365)
		{
			if(y > 0 - 105 && y < 632)
			{
				return 1;
			}
		}
		return 0;
	}


}