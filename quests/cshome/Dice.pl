#Dice 2.0
#This is an 8-player dice game intended for use with EQEmulator server software.
#In-game, this would be what a non-player character (NPC) would use as its dialog.
#Once the timer is up, the NPC rolls for a number between 1 and 100, 
#The winning number is used to choose and multiply the value of a data bucket, and then it adds it back to the players casino account (_Casino bucket).
#Uses data buckets for character accounts (denoted by the ending _Casino, chairs (DRS_#_C_), and numbers for betting (DRS_#_).

#Spawn, Clean table, Start the clock
sub EVENT_SPAWN {
	for $i=1, 9, $i++ {
		quest::set_data("DRS_1_C_" . $i, '0');}
	quest::set_timer("d1",30000);
	quest::shout("Dice is now taking bets!");}
# Dice Timer, Call number, Award winners, Restart timer
sub EVENT_TIMER {
	if ($timer eq "d1") {
	my $y1 = math.random(100);
		quest::say("Here's the roll!");
		quest::say("The winning number is: " . $y1 . "!");
		for $y2=1, 9, $y2++ {
		my $y8 = quest::get_data("DRS_1_C_". $y2);
			if ($y8 ~= 0) {
			quest::say("c");
				for $y3=1, 101, $y3++ {
				my $y5 = quest::get_data("DRS_1_" . $y2 . "_" . $y3);
					if ($y5 ~= 0) {
						if ($y1 == $y3) {
						my $y6 = quest::get_data($y9 . "_Casino");
						my $z1 = $y5 * 50;
						my $y7 = $y6 + $z1;
							quest::set_data($y9 . "_Casino", $y7);}}
					quest::set_data("DRS_" . $y2 . "_" . $y3), '0');}}
		quest::set_data("DRS_C_" . $y2, '0');}}
	quest::set_timer("d1",30000);
	quest::say("Dice is now taking bets!");}

#Main NPC Dialog
sub EVENT_SAY {
	if ($text=~/Hail/i) {
		plugin::Whisper("Hail!  Would you like to [" . quest::saylink("join", 1) . "] us for a round of [" . quest::saylink("Dice", 1) . "]?  If you would like to know the [" . quest::saylink("play", 1) . "], let me know.  You will need to bank with the Casino banker in order to play!");}
	if ($text=~/play/i) {
			plugin::Whisper("First deposite money with the Casino Banker.  Next, tell me if you would like a [join] at the table, and ) { you can place [bets].");}
	if ($text=~/join/i) {
		for $p1=1, 9, $p1++ {
			if (quest::get_data("DRS_1_C_" . $p1) == '0') {
				quest::set_data("DRS_1_C_" . $p1, $client->AccountID());
				e.other:Message(315,"You have been assigned to seat " . $p1 . ".  You can now place [" . quest::saylink("bets", 1) . "].");}
			if (quest::get_data("DRS_1_C_8") ~= '0') {
				quest::say("The table is full.");}}}
	if ($text=~/bets/i) {
		plugin::Whisper( "first, pick a number.");  
		plugin::dicebet();}}
