gpu_set_tex_filter(true);

scr_init_sprite_array();
scr_init_big_sprite_array();
card_drawn = false;
card_in_hand = false;

player = obj_player;
cardNum = 0;
hand_position = 0;

send_to_deck = false;
send_to_deck2 = false;

xPos = 0;
yPos = 750;

preview = 606;

selected = false;

remove_from_hand = 0;

enemy = obj_enemy;