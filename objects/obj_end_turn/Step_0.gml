if(player.player_dead == false)
{
	if(mouse_check_button_released(mb_left))
	{
		if(mouse_x > 1184 && mouse_x < 1357)
		{
			if(mouse_y > 686 && mouse_y < 739)
			{
				randomize();
				enemy_attack = irandom(9);
			}
		}
	}


	if(enemy_attack = 0)
	{
		enemy_damage = 10;
	}

	if(enemy_attack = 1)
	{
		enemy_damage = 11;
	}

	if(enemy_attack = 2)
	{
		enemy_damage = 12;
	}

	if(enemy_attack = 3)
	{
		enemy_damage = 13;
	}

	if(enemy_attack = 4)
	{
		enemy_damage = 14;
	}

	if(enemy_attack = 5)
	{
		enemy_damage = 15;
	}

	if(enemy_attack = 6)
	{
		enemy_damage = 20;
	}

	if(enemy_attack = 7)
	{
		enemy_damage = 21;
	}

	if(enemy_attack = 8)
	{
		enemy_damage = 22;
	}

	if(enemy_attack = 9)
	{
		enemy_damage = 23;
	}
}
