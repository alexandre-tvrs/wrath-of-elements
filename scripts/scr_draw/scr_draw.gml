function scr_draw(argument0) {
	var num = argument0;

	//Condições para não sacar uma carta
	if(deckCount - num < 0 || draw_phase == false)
	{
		return;
	}

	audio_play_sound(snd_fnap, 1, false);

if(draw_phase == true)
{
		for(i = 0; i < num; i++)
		{
			deckCount--;
			hand[handCount] = deck[deckCount];
			handCount++;
			deck[deckCount] = 0;
	
			handCard[handCount - 1] = instance_create_depth(deck_x, deck_y, -100-handCount - 2, obj_card);
			with(handCard[handCount - 1])
			{
				card_drawn = true;
				hand_position = player.handCount - 1;
				cardNum = player.hand[hand_position];
			}
		}

		return;
	}
}
