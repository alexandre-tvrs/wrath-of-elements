with(enemy)
{
	if(player.player_dead == false)
	{
		if(mouse_check_button_released(mb_left))
		{
			if(mouse_x > 1184 && mouse_x < 1357)
			{
				if(mouse_y > 686 && mouse_y < 739)
				{
					if(enemy_type = 0)
					{
						player.depth = 10001;
						sprite_index = spr_enemy2_attack;
						image_index = 0;
					}
					else if(enemy_type = 1)
					{
						if(enemy1_attack_type = 0)
						{
							player.depth = 10001;
							sprite_index = spr_enemy1_attack_1;
							image_index = 0;
							image_xscale = -1;
						}
						if(enemy1_attack_type = 1)
						{
							player.depth = 10001;
							sprite_index = spr_enemy1_attack_2;
							image_index = 0;
							image_xscale = -1;
						}
					}
					else if(enemy_type = 2)
					{
						if(enemy3_attack_type = 0)
						{
							player.depth = 10001;
							sprite_index = spr_enemy3_attack_1;
							image_index = 0;
						}
						if(enemy3_attack_type = 1)
						{
							player.depth = 10001;
							sprite_index = spr_enemy3_attack_2;
							image_index = 0;
						}
					}
				}
			}
		}
	}
}
if(player.player_dead == false)
{
	if(instance_exists(obj_enemy))
	{
			if(mouse_x > 1184 && mouse_x < 1357)
			{
				if(mouse_y > 686 && mouse_y < 739)
				{
					if(enemy_damage > 0)
					{
						if(enemy.enemy_type == 0)
						{
							audio_play_sound(snd_water_attack,0,0);
						}
						if(enemy.enemy_type == 1)
						{
							audio_play_sound(snd_fire_attack,0,0);
						}
						if(enemy.enemy_type == 2)
						{
							audio_play_sound(snd_earth_enemy_attack,0,0);
						}
					}
				
					audio_play_sound(snd_fnap,1,0);
					//Código de dano do inimigo
					if(enemy.enemyhp >0)
					{
						with(player)
						{
							playerhp -= obj_end_turn.enemy_damage;
						}
					}

					player.draw_phase = true;
					turn++;
					
					obj_mana.mana = turn+1;
					
					if(obj_mana.mana >= 15)
					{
						obj_mana.mana = 15;
					}
					
				}	
		}
	}
}

//Buff Prepare_Attack----------------------------------------------------------
if(obj_player.buffPrepareAttack >= 1)
{
	obj_player.buffPrepareAttack ++;
}
if(obj_player.buffPrepareAttack >= 3)
{
	if(obj_player.buffPrepareAttack == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack = 0;
}

if(obj_player.buffPrepareAttack2 >= 1)
{
	obj_player.buffPrepareAttack2 ++;
}
if(obj_player.buffPrepareAttack2 >= 3)
{
	if(obj_player.buffPrepareAttack2 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack2 = 0;
}

if(obj_player.buffPrepareAttack3 >= 1)
{
	obj_player.buffPrepareAttack3 ++;
}
if(obj_player.buffPrepareAttack3 >= 3)
{
	if(obj_player.buffPrepareAttack3 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack3 = 0;
}

if(obj_player.buffPrepareAttack4 >= 1)
{
	obj_player.buffPrepareAttack4 ++;
}
if(obj_player.buffPrepareAttack4 >= 3)
{
	if(obj_player.buffPrepareAttack4 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack4 = 0;
}

if(obj_player.buffPrepareAttack5 >= 1)
{
	obj_player.buffPrepareAttack5 ++;
}
if(obj_player.buffPrepareAttack5 >= 3)
{
	if(obj_player.buffPrepareAttack5 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack5 = 0;
}

if(obj_player.buffPrepareAttack6 >= 1)
{
	obj_player.buffPrepareAttack6 ++;
}
if(obj_player.buffPrepareAttack6 >= 3)
{
	if(obj_player.buffPrepareAttack6 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack6 = 0;
}

if(obj_player.buffPrepareAttack7 >= 1)
{
	obj_player.buffPrepareAttack7 ++;
}
if(obj_player.buffPrepareAttack7 >= 3)
{
	if(obj_player.buffPrepareAttack7 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack7 = 0;
}

if(obj_player.buffPrepareAttack8 >= 1)
{
	obj_player.buffPrepareAttack8 ++;
}
if(obj_player.buffPrepareAttack8 >= 3)
{
	if(obj_player.buffPrepareAttack8 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack8 = 0;
}

if(obj_player.buffPrepareAttack9 >= 1)
{
	obj_player.buffPrepareAttack9 ++;
}
if(obj_player.buffPrepareAttack9 >= 3)
{
	if(obj_player.buffPrepareAttack9 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack9 = 0;
}

if(obj_player.buffPrepareAttack10 >= 1)
{
	obj_player.buffPrepareAttack10 ++;
}
if(obj_player.buffPrepareAttack10 >= 3)
{
	if(obj_player.buffPrepareAttack10 == 3)
	{
		obj_player.playerPower -= 5;
	}
	obj_player.buffPrepareAttack10 = 0;
}
//----------------------------------------------------------------------------