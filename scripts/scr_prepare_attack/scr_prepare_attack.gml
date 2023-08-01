function scr_prepare_attack(){
	
	if(obj_player.buffPrepareAttack == 0)
	{		
		obj_player.buffPrepareAttack = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack > 0)
	{
		obj_player.buffPrepareAttack2 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack2 > 0)
	{
		obj_player.buffPrepareAttack3 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack3 > 0)
	{
		obj_player.buffPrepareAttack4 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack4 > 0)
	{
		obj_player.buffPrepareAttack5 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack5 > 0)
	{
		obj_player.buffPrepareAttack6 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack6 > 0)
	{
		obj_player.buffPrepareAttack7 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack7 > 0)
	{
		obj_player.buffPrepareAttack8 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack8 > 0)
	{
		obj_player.buffPrepareAttack9 = 1;
		obj_player.playerPower +=5;
	}
	else if(obj_player.buffPrepareAttack9 > 0)
	{
		obj_player.buffPrepareAttack10 = 1;
		obj_player.playerPower +=5;
	}
}