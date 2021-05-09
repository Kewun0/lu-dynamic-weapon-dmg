function onClientShot( player, weapon, bodypart )
{
	if ( weapon != 2 && weapon != 3 && weapon != 4 && weapon != 5 && weapon != 6 && weapon != 7 )
	{
		return 1;
	}

	local total_damage = 0;
	local health = FindLocalPlayer().Health;
	local armour = FindLocalPlayer().Armour;

	switch ( weapon )
	{
		case 2:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 20;
				break;
				case BODYPART_BODY:
					total_damage = 9;
				break;
				case BODYPART_LEFTARM:
					total_damage = 6;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 6;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 8;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 8;
				break;
				default: // BODYPART_HIP
					total_damage = 12;
				break;
			}
		break;
		case 3:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 30;
				break;
				case BODYPART_BODY:
					total_damage = 13;
				break;
				case BODYPART_LEFTARM:
					total_damage = 7;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 7;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 4;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 4;
				break;
				default: // BODYPART_HIP
					total_damage = 15;
				break;
			}
		break;
		case 4:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 100;
				break;
				case BODYPART_BODY:
					total_damage = 40;
				break;
				case BODYPART_LEFTARM:
					total_damage = 25;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 25;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 20;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 20;
				break;
				default: // BODYPART_HIP
					total_damage = 30;
				break;
			}
		break;
		case 5:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 35;
				break;
				case BODYPART_BODY:
					total_damage = 12;
				break;
				case BODYPART_LEFTARM:
					total_damage = 8;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 8;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 5;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 5;
				break;
				default: // BODYPART_HIP
					total_damage = 18;
				break;
			}
		break;
		case 6:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 4;
				break;
				case BODYPART_BODY:
					total_damage = 3;
				break;
				case BODYPART_LEFTARM:
					total_damage = 2;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 2;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 2;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 2;
				break;
				default: // BODYPART_HIP
					total_damage = 3;
				break;
			}
		break;
		case 7:
			switch ( bodypart )
			{
				case BODYPART_HEAD:
					total_damage = 100;
				break;
				case BODYPART_BODY:
					total_damage = 60;
				break;
				case BODYPART_LEFTARM:
					total_damage = 40;
				break;
				case BODYPART_RIGHTARM:
					total_damage = 40;
				break;
				case BODYPART_LEFTLEG:
					total_damage = 30;
				break;
				case BODYPART_RIGHTLEG:
					total_damage = 30;
				break;
				default: // BODYPART_HIP
					total_damage = 83;
				break;
			}
		break;

	}

	if ( armour != 0 )
	{
		local remaining_arm = armour-total_damage;
		if ( remaining_arm <= 0 )
		{
			local hor = health-remaining_arm;
			local remaining_hpp = health-hor;
			if ( remaining_hpp <= 0 ) { FindLocalPlayer().Health = -1; }  else{FindLocalPlayer().Health  =remaining_hpp;}
		}
	}
	else
	{
		local remaining_hp = health-total_damage;
		if ( remaining_hp <= 0 )
		{
			 FindLocalPlayer().Health = 1; 
		}
		else
		{
			FindLocalPlayer().Health -= total_damage;
		}
	}

	return 0;
}
