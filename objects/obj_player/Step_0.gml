scr_init_sprite_array();
scr_init_big_sprite_array();
if(game_start_phase == true)
{
	if(alarm[1] == -1)
	{
		alarm[1] = 1;
	}
}
if(mullingan_phase == true)
{
	if(alarm[2] == -1)
	{
		alarm[2] = 50;
	}
}

//Código de sacar cartas no inicio do turno
if(player_dead == false)
{
	if(mouse_check_button_released(mb_left))
	{
		if(mouse_x > 1184 && mouse_x < 1357)
		{
			if(mouse_y > 686 && mouse_y < 739)
			{
			temp3 = handCount;
			temp2 = 0;
			temp = 5;
		
			if(alarm[4] == -1)
			{
				alarm[4] = 10;
			}
			remove_from_hand = 1;
			}
		}
	}
}

if(playerhp > playerhp_max)
{
	playerhp = playerhp_max;
}

if(playerhp <= 0 && image_index == 0)
{
	player_dead = true;
	if(player_dead == true && sprite_index != spr_player_die)
	{
		sprite_index = spr_player_die;
		alarm[7] = 50;
	}
}


