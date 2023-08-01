if(scr_pause())
{
	return;
}
if(player.field_select > 0)
{
	return;
}
if(player.discard_phase > 0)
{
	return;
}

with(player)
{
	scr_draw(1);
}