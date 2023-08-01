if (sprite_index == spr_player_attack) {
    sprite_index = spr_player_still;
    image_index = 0;
	steel = false;
	fire = false;
	water = false;
	earth = false;
}
if (sprite_index == spr_player_cast_fire || spr_player_cast_earth) {
    sprite_index = spr_player_still;
    image_index = 0;
	steel = false;
	fire = false;
	water = false;
	earth = false;
}