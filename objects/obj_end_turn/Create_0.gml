randomize();
card = obj_card;
player = obj_player;
if(instance_exists(obj_enemy))
{
	enemy = obj_enemy;
}

enemy = obj_enemy;

xPos = 0;
yPos = 0;

manaObj = obj_mana;

turn = 1;

enemy_damage = 0;

enemy_attack = irandom(9);
if(instance_exists(enemy))
{
	sprite_index = spr_end_turn_water;
}
