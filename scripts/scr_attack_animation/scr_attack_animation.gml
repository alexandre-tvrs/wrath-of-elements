// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_animation(){
	with(player)
	{
		if(steel == true)
		{
			audio_play_sound(snd_sword_slash,1,0);
			sprite_index = spr_player_attack;
			image_index = 0;
		}
		else if(fire == true)
		{
			audio_play_sound(snd_fire_attack,1,0);
			sprite_index = spr_player_cast_fire;
			image_index = 0;
		}
		else if(water == true)
		{
			audio_play_sound(snd_water_attack,1,0);
			sprite_index = spr_player_cast_water;
			image_index = 0;
		}
		else if(earth == true)
		{
			audio_play_sound(snd_earth_attack,1,0);
			sprite_index = spr_player_cast_earth;
			image_index = 0;
		}
	}
	if(player.steel == true || player.fire == true || player.water == true || player.earth == true)
	{
		with(enemy)
		{
			if (alarm[1] == -1)
			{
				alarm[1] = room_speed*0.7;
			}
		}
	}
}