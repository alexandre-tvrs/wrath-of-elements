gpu_set_tex_filter(true);
/*if(room == room0)
{
	if(enemy_type == 0 || enemy_type == 1)
	{
		for(i = 0; i < enemyhp; i++)
		{
			if(i >= 0)
			{
				draw_sprite(spr_d_counter, -1,x-enemy_width/2+2+8*i+150, y-enemy_height/2+150);
			}
		}
	}
	else
	{
		for(i = 0; i < enemyhp; i++)
		{
			if(i >= 0)
			{
				draw_sprite(spr_d_counter, -1,x-enemy_width/2+2+8*i+150, y-enemy_height/2+120);
			}
		}
	}

	
}*/
//Vida do inimigo e ataque
draw_self();
draw_sprite_stretched(spr_hpbarenemy,0,health_bar_x-3,health_bar_y-7,(enemyhp/enemyhp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_enemy,0,health_bar_x,health_bar_y);
draw_set_color(c_green);
draw_text(1049, 694, string(enemyhp) + "/ " + string(enemyhp_max));

if(enemy_type == 0)
{
	fontColor = make_color_rgb(30,144,255);
	draw_set_color(fontColor);
	draw_text(1000,672, string(enemy_name));
}
if(enemy_type == 1)
{
	draw_set_color(c_red);
	draw_text(1018,672, string(enemy_name));
}
if(enemy_type == 2)
{
	draw_set_color(c_green);
	draw_text(1015,672, string(enemy_name));
}


//Animações de ataque
if(obj_end_turn.enemy_damage > 0)
{
	if(sprite_index == spr_enemy2_attack)
	{
		draw_sprite(spr_water_effect, -1, 225, 576);
	}
	if(sprite_index == spr_enemy1_attack_1 || sprite_index == spr_enemy1_attack_2)
	{
		draw_sprite(spr_fire_effect, -1, 225, 576);
	}
	if(sprite_index == spr_enemy3_attack_1 || sprite_index == spr_enemy3_attack_2)
	{
		draw_sprite(spr_earth_enemy_effect, -1, 225, 576);
	}
}