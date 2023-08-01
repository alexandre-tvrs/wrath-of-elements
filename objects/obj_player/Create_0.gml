gpu_set_tex_filter(true);

randomize();




card = obj_card;

enemy = obj_enemy;




healthbar_width = 211;
healthbar_height = 42;
health_bar_x = 148;
health_bar_y = 707;

xPos = 180;
yPos = 750;


handCount = 0;
for (i = 0; i < 8; i++)
{
	hand[i] = 0;
	handCard[i] = noone;
}

i = 0;


//Coordenada X do Deck
deck_x = 64;
//Coordenada Y do deck
deck_y = 608;

// se face_up é igual a 1, as cartas no deck vão ficar com a cara pra cima
face_up = 0;
deck_buffer_x = .2;
deck_buffer_y = .2;

deckCount = 0;


field_select = 0;

//scr_deck_init();
//scr_deck_all_cards();
scr_deck1_init();
scr_shuffle_deck();
audio_stop_sound(snd_shuffle);

i = 0;





//Expansão de deck

xView = 0;
yView = deck_y;
deck_x_2 = deck_x;

//Fases de jogo
game_start_phase = true;
mullingan_phase = false;
draw_phase = true;

//Variaveis de descarte
for(i = 0; i < deckCount; i++)
{
	discard[i] = 0;
}
discardCount = 0;
discard_x = deck_x;
discard_y = deck_y-card_height-90;

instance_create_layer(discard_x, discard_y,"Instances",obj_discard);

discard_x = deck_x;
discard_y = deck_y-card_height-90;
discard_x_2 = discard_x;

player_dead = false;



discard_phase = 0;
deck_card_select = 0;
card_trade = false;
temp2 = 0;
pause = false;

prize_select = false;


if(!instance_exists(obj_player))
{
	room_goto(room0);
}

//Elementos
steel = false;
fire = false;
water = false;
earth = false;

//Atributos:
playerhp = 100; //Vida
playerhp_max = playerhp;
playerDef = 10; //Defesa
playerPower = 10; //Poder
playerDex = 2;//Destreza
playerAgi = 4;//Agilidade
playerLuck = 1;//Sorte

player_dying = false;

//buffs e efeitos especiais:
buffPrepareAttack = 0;
buffPrepareAttack2 = 0;
buffPrepareAttack3 = 0;
buffPrepareAttack4 = 0;
buffPrepareAttack5 = 0;
buffPrepareAttack6 = 0;
buffPrepareAttack7 = 0;
buffPrepareAttack8 = 0;
buffPrepareAttack9 = 0;
buffPrepareAttack10 = 0;

//debuffs