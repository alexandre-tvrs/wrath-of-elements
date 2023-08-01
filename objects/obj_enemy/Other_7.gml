if(sprite_index = spr_enemy1_still)
{
	image_index = 0;
}
if (sprite_index == spr_enemy1_attack_1) 
{
	player.depth = 10000;
    sprite_index = spr_enemy1_still;
    image_index = 0;
}
if (sprite_index == spr_enemy1_attack_2) 
{
	player.depth = 10000;
    sprite_index = spr_enemy1_still;
    image_index = 0;
}
if (sprite_index == spr_enemy1_hit && enemyhp > 0) 
{
    sprite_index = spr_enemy1_still;
    image_index = 0;
}

if(sprite_index = spr_enemy2_still)
{
	image_index = 0;
}
if (sprite_index == spr_enemy2_attack) 
{
	player.depth = 10000;
    sprite_index = spr_enemy2_still;
    image_index = 0;
}
if (sprite_index == spr_enemy2_hit) 
{
    sprite_index = spr_enemy2_still;
    image_index = 0;
}
if(sprite_index == spr_enemy2_die)
{
	enemy_dead = false;
	card.send_to_deck2 = true;
	instance_destroy(obj_enemy);
	player.poison = 0;
	player.forest_fire_value = 0;
	player.fire_attack_buff = 0;
}

if(sprite_index = spr_enemy3_still)
{
	image_index = 0;
}
if (sprite_index == spr_enemy3_attack_1) 
{
	player.depth = 10000;
    sprite_index = spr_enemy3_still;
    image_index = 0;
}
if (sprite_index == spr_enemy3_attack_2)
{
	player.depth = 10000;
    sprite_index = spr_enemy3_still;
    image_index = 0;
}
if (sprite_index == spr_enemy3_hit) {
    sprite_index = spr_enemy3_still;
    image_index = 0;
}
if(sprite_index == spr_enemy3_die)
{
	enemy_dead = false;
	card.send_to_deck2 = true;
	instance_destroy(obj_enemy);
	player.poison = 0;
	player.forest_fire_value = 0;
	player.fire_attack_buff = 0;
}