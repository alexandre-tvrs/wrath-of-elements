draw_self();

if (selected = true)
{
	x = mouse_x;
	y = mouse_y;
	//scr_draw_card_info(cardNum);
	if(mouse_y > preview)
	{
		draw_sprite(big_sprite_array[cardNum], -1, room_width/2, room_height/2);
	}
	depth = -200;
}
else
{
	depth = -100-hand_position;
}