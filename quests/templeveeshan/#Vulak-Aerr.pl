sub EVENT_AGGRO {
  my $guards = $entity_list->GetMobByNpcTypeID(124157);

  if ($guards) {
  my $guards = $guards->CastToNPC();
  $guards->AddToHateList($client, 1);
}
 }

 
 sub EVENT_KILLED_MERIT
{
	if($client->IsTaskActivityActive(303, 0))
	{
		$client->UpdateTaskActivity(303, 0, 1);
		quest::assigntask(304);
		quest::summonitem(76504);
		$key1 = $name . "_Progression";
		if(quest::get_data($key1) == 2)
		{
			quest::set_data($key1, 3);
		}		quest::snow(1);
		$client->Message(4, "You have conquered the lands of Velious and overcome the wrath of the giants and dragons.  Take your newly earned coin and visit the moon!");
		quest::set_zone_flag(int 154);#Acrylia
		quest::set_zone_flag(int 179);#Akheva
		quest::set_zone_flag(int 174);#Dawnshroud
		quest::set_zone_flag(int 116);#Echo
		quest::set_zone_flag(int 157);#FungusGrove
		quest::set_zone_flag(int 163);#GriegsEnd
		quest::set_zone_flag(int 167);#GrimlingForest
		quest::set_zone_flag(int 166);#Hollowshade
		quest::set_zone_flag(int 160);#Katta
		quest::set_zone_flag(int 168);#MSeru
		quest::set_zone_flag(int 169);#MonsLetalis
		quest::set_zone_flag(int 161);#Netherbian
		quest::set_zone_flag(int 156);#Paludal
		quest::set_zone_flag(int 159);#SSeru
		quest::set_zone_flag(int 165);#Shadeweaver
		quest::set_zone_flag(int 150);#ShadowHaven
		quest::set_zone_flag(int 162);#Ssra
		quest::set_zone_flag(int 151);#Bazaar
		quest::set_zone_flag(int 164);#Deep
		quest::set_zone_flag(int 171);#Grey
		quest::set_zone_flag(int 173);#MaidensEye
		quest::set_zone_flag(int 152);#Nexus
		quest::set_zone_flag(int 165);#ScarletDesert
		quest::set_zone_flag(int 181);#Jaggedpine
	}
}