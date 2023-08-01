var
temp_1 = hand_position,
temp_2 = 0,
temp_3 = noone;

with(player)
{
	with(handCard[temp2])
	{
		temp_2 = hand_position;
		hand_position = temp_1;
		xPos = room_width/2 + card_width/2 + 5;
	}
}
player.hand[hand_position] = player.hand[temp_2];
hand_position = temp_2;
xPos = room_width/2 - card_width/2 - 5;

temp_3 = player.handCard[player.temp2];
player.handCard[player.temp2] = player.handCard[temp_1];
player.handCard[temp_1] = temp_3;
player.hand[player.temp2] = player.handCard[player.temp2].cardNum;

if(alarm[5] == -1)
{
	alarm[5] = 10;
}
