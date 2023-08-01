//Coordenada X do Deck
deck_x = 589;
//Coordenada Y do deck
deck_y = 612;

// se face_up é igual a zero, as cartas no deck vão ficar com a cara pra cima
face_up = 0;
deck_buffer_x = .4;
deck_buffer_y = .4;

if(instance_exists(obj_player))
{
	player = obj_player;
}
else
{
	room_goto(room0);
}