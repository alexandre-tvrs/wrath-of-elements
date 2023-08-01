draw_set_color(c_black);
//draw_text(100,200, string(mouse_x) + " " + string(mouse_y));
with(player){
	if(!face_up && !(deck_card_select > 0))
	{
		for (i = 0; i < deckCount; i++)
		{
			card_sprite = spr_cardback;
			if(face_up)
			{
				card_sprite = sprite_array[deck[i]];
			}
			if(deck[i] > 0)
			{
				draw_sprite(card_sprite, -1, deck_x+deck_buffer_x*i, deck_y-deck_buffer_y*i);
			}
		}
	}
	else
	{
		for(i = 0; i < deckCount; i++)
		{
			if(deck[i] > 0 && !(deck_x_2 < (deck_x - (deckCount - 1 -i)*(card_width+10) + i*deck_buffer_x)))
			{
				draw_sprite(spr_cardback, -1, deck_x + i*deck_buffer_x, deck_y - i*deck_buffer_y);
			}
		}
		for(i = deckCount-1; i >= 0; i--)
		{
			if(deck[i] > 0 && deck_x_2 < (deck_x - (deckCount - 1 - i)*(card_width + 10) + i*deck_buffer_x))
			{
				card_sprite = sprite_array[deck[i]];
				draw_sprite(card_sprite, -1, deck_x_2+(deckCount - 1 - i)*(card_width+10) + i*deck_buffer_x, yView-i*deck_buffer_y);
			}
		}
	}
}