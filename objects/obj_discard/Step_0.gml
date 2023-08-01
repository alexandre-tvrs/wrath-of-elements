with(player)
{
	if(deckCount == 0 && alarm[6] == -1)
	{ 
		scr_shuffle_deck();
		alarm[6] = room_speed*1.4;
	}
}
if(keyboard_check_released(vk_left))
{
	face_up = 1;
}
if(keyboard_check_released(vk_right))
{
	face_up = 0;
	player.discard_x_2 = player.discard_x;
}

if(face_up)
{
	depth = -300;
	with(player)
	{
		if(mouse_y < discard_y + card_height/2 && mouse_y > discard_y - card_height/2 && mouse_x > discard_x_2 - card_width/2)
		{
			if(mouse_check_button_pressed(mb_left))
			{
				obj_discard.selected = true;
			}
			if(obj_discard.selected = true)
			{
				if(mouse_check_button_pressed(mb_left))
				{
					xView = discard_x_2 - mouse_x;
				}
				if(mouse_check_button(mb_left))
				{
					discard_x_2 = xView + mouse_x;
				}
				else if(discard_x_2 >= discard_x)
				{
					discard_x_2 = discard_x -1;
				}
				else if(discard_x_2 <= (discard_x - (discardCount -1)*(card_width+10) - discardCount*deck_buffer_x)-5)
				{
					discard_x_2 = (discard_x - (discardCount)*(card_width+10) - discardCount*deck_buffer_x) + 14 + card_width;
				}
			}
		}
		else
		{
			obj_discard.selected = false;
		}
	}
}
else
{
	depth = 0;
}

	/*if(mouse_check_button_released(mb_left))
	{
		if(mouse_x > 446 && mouse_x < 548)
		{
			if(mouse_y > 476 && mouse_y < 562)
			{
				if(deckCount == 0)
				{ 
					for(var i = 0; i < discardCount; i++)
					{ 
						discardCard[i] = instance_create_layer(discard_x, discard_y,"Instances",obj_card);
						with(discardCard[i])
						{ 
							player = obj_player; 
							cardNum = player.discard[i];
							sprite_index = sprite_array[cardNum]; 
							send_to_deck = true; 
						}
							discard[i] = 0; 
					} 
						discardCount = 0; 
				}
				/*if(deckCount == 0)
				{
				     for(var i = 0; i < discardCount; i++)
					 {
				          deck[deckCount++] = discard[i];
				          discard[i] = 0;
				     }
			        discardCount = 0;
				}*/
				/*if(deckCount == 0)
				{
					scr_deck1_init();
					discardCount = 0;
					discardCount = 0;
				}
			}
		}
	}
}