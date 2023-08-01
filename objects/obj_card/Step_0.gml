if(instance_exists(obj_player))
{
	if(send_to_deck)
	{ 
		if(point_distance(x,y,player.deck_x,player.deck_y) > 10)
		{ 
			move_towards_point(player.deck_x,player.deck_y, 10);
			depth = MAX_DEPTH; 
			} 
			else
			{ 
				player.deck[player.deckCount++] = cardNum; 
				x = player.deck_x; y = player.deck_y;
				speed = 0;
				instance_destroy();
			} 
		return; 
	}
	if(send_to_deck2)
	{ 
		if(point_distance(x,y,player.deck_x,player.deck_y) > 10)
		{ 
			/*move_towards_point(player.deck_x,player.deck_y, 10);
			depth = MAX_DEPTH; 
			} 
			else
			{ */
				player.deck[player.deckCount++] = cardNum; 
				x = player.deck_x; y = player.deck_y;
				speed = 0;
				instance_destroy();
			}
			scr_shuffle_deck();
		return; 
	}
	if(card_drawn == true)
	{
		if(alarm[0] == -1)
		{
			alarm[0] = 1;
		}
	}
	if(alarm[2] > -1)
	{
		if(point_distance(x,y,player.discard_x,player.discard_y) > 10)
		{
			move_towards_point(player.discard_x,player.discard_y, 10);
		}
		else
		{
		x = player.discard_x;
		y = player.discard_y;
		speed = 0;
		}
	}
	else if(card_in_hand == true)
	{
		var
		radius = room_height/2,
		//arc angle = arc lenght*360/2*pi*radius
		delta = (card_width*2/3)*360/(2*pi*radius);

		draw_circle(room_width/2, room_height/2, radius, true);

		//j multiplicado pelo angulo que calculamos será o angulo da carta que estamos casando
		if(player.handCount <= 10) // onde começa a posição da primeira carta
		{
			var j = -(hand_position - (player.handCount-1)/2);
		}
		else //previne a mão de sacar mais de 10 cartas
		{
			var j = -(-4.5 + hand_position*9.5/player.handCount);
		}
	
		if(alarm[1] > -1 || selected)
		{
			image_angle = 0;
		}
		else
		{
			image_angle = j*delta;
		}
	
		xPos = room_width/2 + radius*sin(degtorad(180 + j*delta));
		yPos = room_height/2 + radius*cos(degtorad(180 + j*delta)) + 0.91*radius*2;
		if(point_distance(x, y, xPos, yPos) > 10)
		{
			move_towards_point(xPos, yPos, 10);
		}
		else
		{
			x = xPos;
			y = yPos;
			speed = 0;
		}
	}
	else
	{
		if(point_distance(x,y,xPos,yPos)> 10)
		{
			move_towards_point(xPos,yPos, 10)
		}
		else
		{
			x = xPos;
			y = yPos;
			speed = 0;
		}
	}
	if(mouse_check_button_released(mb_left) && selected)
	{
		if(player.discard_phase > 0)
		{
			if(player.discard_phase == 0)
			{
				if(player.field_select == 71)//computer search
				{
					player.deck_card_select = 1;
					player.field_select = 0;
				}
			}
		}
		if(player.card_trade && scr_in_center())
		{
			card_in_hand = false;
			xPos = room_width/2 - card_width/2 - 5;
			yPos = room_height/2;
			player.deck_card_select = 1;
			player.temp2 = hand_position;
			player.pause = true;
		}
		selected = false;
	}
}