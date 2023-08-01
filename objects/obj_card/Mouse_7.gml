if(player.field_select > 0)
{
	return;
}
if(player.discard_phase > 0)
{
	return;
}
if(player.deck_card_select > 0)
{
	return;
}
if(scr_is_card(self.cardNum) && scr_in_center())
{
	player.draw_phase = false;
	scr_player_attack(self.cardNum);
	if(remove_from_hand)
	{
		audio_play_sound(snd_set, 1, false);
		if(alarm[2] == -1)
		{
			alarm[2] = 10;
		}
		scr_remove_from_hand();
	}
	remove_from_hand = 0;
}