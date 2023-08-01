i = 0;

for(i = 0; i < mana; i++)
	{
		if(i >= 0)
		{
			draw_sprite(spr_mana, -1,16+30*i, 20);
		}
	}

draw_set_color(c_black);
//draw_text(124,24, string(mana));