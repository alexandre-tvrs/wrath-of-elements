if(instance_exists(obj_player))
{
	if(keyboard_check_released(vk_escape))
	{
		game_restart();
	}
	if(player.face_up || player.deck_card_select > 0)
	{
		with(player)
		{
			if(mouse_y < yView + card_height/2 && mouse_y > yView - card_height/2)
			{
				if(mouse_check_button_pressed(mb_left))
				{
					xView = deck_x_2 - mouse_x;
				}
				if(mouse_check_button(mb_left))
				{
					deck_x_2 = xView + mouse_x;
				}
				else if(deck_x_2 >= deck_x)
				{
					deck_x_2 = deck_x - 1;
				}
				else if(deck_x_2 <= (deck_x - (deckCount - 1)*(card_width+10) - deckCount*deck_buffer_x)-5)
				{
					deck_x_2 = (deck_x - (deckCount)*(card_width+10) - deckCount*deck_buffer_x) + 14 + card_width;
				}
			}
		}
		depth = -300;
	}
	else
	{
		depth = 0;
	}
	if(player.deck_card_select > 0)
	{
		if(mouse_check_button_pressed(mb_right)/* && alarm[0] > -1*/)
		{
			//Adicionar carta para o deck
			with(player)
			{
				var card_selected = deckCount+floor((deck_x_2 - (mouse_x - card_width/2))/(card_width+10)) -1;
				if(card_selected >= 0 && card_selected < deckCount)
				{
					temp = deck[card_selected];
					deck[card_selected] = deck[deckCount-1];
					deck[deckCount-1] = temp;
					if(card_trade)
					{
						card_trade = false;
					}
					else
					{
					scr_draw(1);
					}
					deck_card_select--;
					deck_x_2 = deck_x;
					scr_shuffle_deck();
				}
			}
		}
		/*if(mouse_check_button_pressed(mb_left) && mouse_y > deck_y - card_height/2 && mouse_y < deck_y + card_height/2)
		{
			if(alarm[0] == -1)
			{
				alarm[0] = 7;
			}
		}
		*/
	}
}