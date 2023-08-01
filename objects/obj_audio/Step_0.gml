audio_master_gain(volume/10);

if(play)
{
	sprite_index = spr_audio;
	volume = 5;
}
else
{
	sprite_index = spr_mute;
	volume = 0;
}

