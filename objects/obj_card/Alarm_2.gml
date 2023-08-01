if(point_distance(x,y,player.discard_x, player.discard_y) == 0)
{
	audio_play_sound(snd_set, 1, false);
	player.discard[player.discardCount++] = cardNum;
	instance_destroy();
}
else
{
	alarm[2] = 1;
}
