sub EVENT_KILLED_MERIT
{
	if($client->IsTaskActivityActive(302, 2))
	{
		$client->UpdateTaskActivity(302, 2, 1);
		quest::assigntask(303);
		$key1 = $name . "_Progression";
		if(quest::get_data($key1) == 1)
		{
			quest::set_data($key1, 2);
		}
		quest::snow(1);		
		quest::summonitem(76503);
		$client->Message(4, "You have overcome the dragons that brought destruction to these lands!  You can now travel to the frozen lands of Velious!");
		quest::set_zone_flag(int 117);#CobaltScar
		quest::set_zone_flag(int 121);#CrystalCaverns
		quest::set_zone_flag(int 123);#DragonNecropolis
		quest::set_zone_flag(int 116);#EasternWastes
		quest::set_zone_flag(int 118);#GreatDivide
		quest::set_zone_flag(int 110);#Iceclad
		quest::set_zone_flag(int 129);#IcewellKeep
		quest::set_zone_flag(int 113);#Kael
		quest::set_zone_flag(int 127);#PoGrowth
		quest::set_zone_flag(int 126);#PoMischief
		quest::set_zone_flag(int 125);#Sirens
		quest::set_zone_flag(int 124);#TempleofVeeshan
		quest::set_zone_flag(int 119);#WakeningLands
		quest::set_zone_flag(int 115);#Thurgadin
		quest::set_zone_flag(int 111);#TowerofFrozenShadow
		quest::set_zone_flag(int 112);#Velketor
		quest::set_zone_flag(int 120);#WesternWastes
	}
}