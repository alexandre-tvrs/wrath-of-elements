enemy_name = "";
gpu_set_tex_filter(true);

enemy_dead = false;

enemyhp = 100;


//persistent = true;
randomize();

depth = 10000;
discard= obj_discard;
player = obj_player;
card = obj_card;


//enemy_type é o tipo de inimigo
//Se enemy_type = 0 então é água
//Se enemy_type = 1 então é fogo
//Se enemy_type = 2 então é terra

enemy_type = 0;

if(enemy_type = 0)
{
	sprite_index = spr_enemy2_still;
	enemy_name = "Elemental de Agua";
}
else if(enemy_type = 1)
{
	sprite_index = spr_enemy1_still;
	image_xscale=-1;
	enemy_name = "Mago de Fogo";
}
else if(enemy_type = 2)
{
	sprite_index = spr_enemy3_still;
	image_xscale=-1;
	enemy_name = "Cogumelo Zumbi";
}

enemyhp_max = enemyhp;

healthbar_width = 211;
healthbar_height = 42;
health_bar_x = 980;
health_bar_y = 707;

//Atributos do inimigo: 

Def = 0; //Defesa
Atk = 10; //Ataque
Dex = 10; //Destreza

