%daa = (   		1 => '60',
				2 => '65',
				3 => '65',
				4 => '70',
				5 => '70',
				6 => '70',
				7 => '70',
				8 => '75',
				9 => '75'
);
sub customlvlcap {
	my $client = plugin::val('client');
	my $w1 = quest::get_data($client->AccountID() . "_Progression");
	my $w2 = quest::get_data($client->CharacterID() . "-CharMaxLevel");
	my $w3 = $client->CharacterID() . "-CharMaxLevel";
	my $text = shift;
	for(keys %daa){
		if ($_==$w1){
			quest::set_data($w3, $daa{$_});
			plugin::Whisper ("Your level cap is ". $daa{$_} ."!");}}}
1;