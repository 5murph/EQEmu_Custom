sub customtaskcharm {
	my $client = plugin::val('client');
	my $w1 = quest::get_data($client->AccountID() . "_Progression");
	my $text = shift;		
	for ($ja=1; $ja < 11; $ja++){
		if ($w1 == $ja){
			my $chm = ($ja + 149999);
			quest::summonitem($chm);
			my $task = ($ja + 300);
			quest::assigntask($task);
			plugin::Whisper("You have been assigned to a new task.  Here is your idol.");}}}
1;