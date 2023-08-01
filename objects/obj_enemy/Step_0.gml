i = 0;

enemy1_attack_type = irandom(1);
enemy3_attack_type = irandom(1);
if(enemyhp <= 0)
{
	enemyhp = 0;
}

if(enemyhp <= 0 && image_index == 0)
{
	enemy_dead = true;
	}
	if(enemy_dead == true)
	{
	if(enemy_type == 0)
	{
		sprite_index = spr_enemy2_die;
	}
	if(enemy_type == 1)
	{
		sprite_index = spr_enemy1_die;
	}
	if(enemy_type == 2)
	{
		sprite_index = spr_enemy3_die;
	}
}

if(enemyhp > enemyhp_max)
{
	enemyhp = enemyhp_max;
}