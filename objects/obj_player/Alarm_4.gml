//Código para descartar cartas
if(temp2 < temp3)
{
	with(handCard[0])
	{
		if(alarm[2] == -1)
		{
			alarm[2] = 10;
		}
		scr_remove_from_hand();
	}
	temp2++;
	alarm[4] = 10;
}
else
{
	if(alarm[3] == -1)
	{
		alarm[3] = 5;
	}
}