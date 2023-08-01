draw_self();

gpu_set_tex_filter(true);


//image_xscale=-1
draw_self();

draw_sprite_stretched(spr_hpbar,0,health_bar_x-3,health_bar_y-7,(playerhp/playerhp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_border,0,health_bar_x,health_bar_y);

draw_set_color(c_red);
draw_text(213, 694, string(playerhp) + "/ " + string(playerhp_max));

//Efeitos de ataque:
if(sprite_index == spr_player_attack && steel == true)
{
	draw_sprite(spr_steel_effect, -1, 1091, 500);
}
else if(sprite_index == spr_player_cast_fire && fire == true)
{
	draw_sprite(spr_fire_effect, -1, 1130, 556);
}
else if(sprite_index == spr_player_cast_earth && earth == true)
{
	draw_sprite(spr_earth_effect, -1, 1130, 556);
}
else if(sprite_index == spr_player_cast_water && water == true)
{
	draw_sprite(spr_water_effect, -1, 1130, 556);
}

draw_text(200, 200, "Poder do jogador: " + string(playerPower));

