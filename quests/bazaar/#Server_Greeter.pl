sub EVENT_SAY {    
		$key1 = quest::get_data($client->AccountID() . "_Progression");
		$y1 = 0;
    if ($text=~/Hail/i) {
		if($key1 == $y1){
			quest::assigntask(300);}
		plugin::Whisper("The avatar of the faceless turns to you as if staring.");
		plugin::Whisper("Hail, " . $name . "!  Welcome to our realm. Our group has taken this space as a headquarters.  From here we and can offer " . quest::saylink("buffs", 1) . ", " . quest::saylink("teleports", 1) . ", and powerful " . quest::saylink("idols", 1) . ".  If you require being assigned back to your " . quest::saylink("current", 1) . " task, let me know.");}
	elsif($text=~/buffs/i){
		plugin::Whisper("Fero the mystic is a cursed creature of great power.  He is capable of curing your ailments and providing magical help that is far beyond the skills of a single caster.");}
	elsif ($text=~/idols/i){
		plugin::Whisper("The idols and charms are signs of the lands you have conquered, and will give you great power.");}
	elsif($text=~/teleports/i){
		plugin::Whisper("Our friend A Mummified Wizard can assist with travelling to many places in Norrath.");}
	elsif($text=~/current/i){
		plugin::customaa($text);
		plugin::customlvlcap($text);
		plugin::customtaskcharm($text);
		plugin::custombf($text);}
 }