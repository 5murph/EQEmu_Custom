%caa = (   		1 => 1802,
				2 => 1803,
				3 => 1802,
				4 => 1812,
				5 => 1802,
				6 => 1808,
				7 => 1810,
				8 => 1805,
				9 => 1813,
				10 => 1816,
				11 => 1815,
				12 => 1809,
				13 => 1815,
				14 => 1814,
				15 => 1807,
				16 => 1806
);
sub customaa {
	my $client = plugin::val('client');
	my $w1 = $client->GetClass();
	my $w2 = quest::get_data($client->AccountID() . "_Progression");
	my $text = shift;
	for(keys %caa) {
		if ($_==$w1) {
		$client->GrantAlternateAdvancementAbility($caa{$_}, $w2);
		plugin::Whisper ("Your feel your power increase.");}}}
1;