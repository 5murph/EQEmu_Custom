sub EVENT_KILLED_MERIT
{
	if($client->IsTaskActivityActive(301, 2))
	{
				$client->UpdateTaskActivity(301, 2, 1);
				quest::assigntask(302);
				$key1 = $name . "_Progression";
				$key2 = $name . "-CharMaxLevel";
				quest::summonitem(76501);
				if(quest::get_data($key1) == 0)
				{
					quest::set_data($key1, 1);
				}
				if(quest::get_data($key2) == 50)
				{
					quest::set_data($key2, 60);
				}
				quest::set_data($key, 60);
				$client->Message(4,"You are a Classic adventurer!  You can be level " . quest::get_data($key) . " !  The ruined continent of Kunark is in need of a hero!");
				quest::rain(1);
				quest::set_zone_flag(int 39); #thehole
				quest::set_zone_flag(int 78);
				quest::set_zone_flag(int 79);
				quest::set_zone_flag(int 81);
				quest::set_zone_flag(int 83);
				quest::set_zone_flag(int 84);
				quest::set_zone_flag(int 85);
				quest::set_zone_flag(int 86);
				quest::set_zone_flag(int 87);
				quest::set_zone_flag(int 88);
				quest::set_zone_flag(int 89);
				quest::set_zone_flag(int 90);
				quest::set_zone_flag(int 91);
				quest::set_zone_flag(int 92);
				quest::set_zone_flag(int 93);
				quest::set_zone_flag(int 94);
				quest::set_zone_flag(int 95);
				quest::set_zone_flag(int 96);
				quest::set_zone_flag(int 97);
				quest::set_zone_flag(int 102);
				quest::set_zone_flag(int 103);
				quest::set_zone_flag(int 104);
				quest::set_zone_flag(int 105);
				quest::set_zone_flag(int 106);
				quest::set_zone_flag(int 107);
				quest::set_zone_flag(int 108);
				quest::ding;
			}
}
