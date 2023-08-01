function scr_player_attack(argument0) {
	
		//Código para os ataques do jogador
		var 
		cardNum = argument0;

		player = obj_player;
		if(instance_exists(obj_enemy))
		{
			enemy = obj_enemy;
		}
		manaObj = obj_mana;

		player_damage = 0;

		attack_type_card = false;
		support_type_card = false;
		//Começo do código de combate com cartas
		if(instance_exists(obj_enemy))
		{
			{
				//Esse scrpit é onde a gente programa os códigos das cartas
				if(cardNum = 1 && manaObj.mana >=2) //The Blade Itself - Aço
				{
					manaObj.mana -= 2; //Mana necessaria
					remove_from_hand = 1; //Código para remover da mão do jogador
					player_damage = obj_player.playerPower;//Dano da carta
					attack_type_card = true;//Tipo de carta(ataque)
					support_type_card = false;//Tipo de carta(suporte)
					with (player)
					{
						//Elemento da carta
						steel = true;
						fire = false;
						water = false;
						earth = false;
					}
				}
				if(cardNum = 2 && manaObj.mana >=1) 
				{
					manaObj.mana -= 1; //Mana necessaria
					remove_from_hand = 1; //Código para remover da mão do jogador
					player_damage = 0;//Dano da carta
					attack_type_card = false;//Tipo de carta(ataque)
					support_type_card = true;//Tipo de carta(suporte)
					scr_prepare_attack();//rodar o script
					//A gente cria uma variavel de buff no jogador
					with (player)
					{
						//Elemento da carta
						steel = true;
						fire = false;
						water = false;
						earth = false;
					}
				}
			}
			//Código para dar o dano
			player_damage -= enemy.Def;
			enemy.enemyhp -= player_damage; //calculo do dano contra a vida do inimigo.
			
			player_damage = 0;
			scr_attack_animation();
			//Fim do código de combate com cartas
	}	
}