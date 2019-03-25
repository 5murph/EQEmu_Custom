--Dice
--Upon Spawning, start timer, loop to empty old seats, bets.
function event_spawn(e)
	eq.set_timer("dice",30000);
	e.self:Shout("Dice is now taking bets!");
	eq.set_data("DRS_1", '0');
	eq.set_data("DRS_2", '0');
	eq.set_data("DRS_3", '0');
	eq.set_data("DRS_4", '0');
	eq.set_data("DRS_5", '0');
	eq.set_data("DRS_6", '0');
	eq.set_data("DRS_7", '0');
	eq.set_data("DRS_8", '0');
	eq.set_data("DRS_T", '1');
end

--Once timer ends -> roll, winnings, empty table loop, reset timer
function event_timer(e)
	if (e.timer == "dice") then
		e.self:Say("Here's the roll!");
		local y1 = math.random(100);
		e.self:Say("The winning number is: " .. y1 .. "!");
		eq.set_data("DRS_T", '1');
		local y2 = 1;
		local y3 = 1;
	--Because calling a single account ID wouldn't be sufficient with 8 players and no dialogue within this function, a check bucket "DRS_C_" is used instead of e.other:AccountID to match account IDs to chairs.
	--Win Loops
		--Seat Count
		while y2 < 9 do
			local y8 = eq.get_data("DRS_C_".. tostring(y2))
			local y9 = eq.get_data("DRS_".. tostring(y2))
				if (tostring(y9) ~= 0) and (tostring(y8) == tostring(y9)) then
		--Table Placement bucket count
					while y3 < 101 do
					--Does the seat contain an account ID?
						--If the Account is "seated" and the seat's bet wasn't 0...
						if (eq.get_data("DRS_" .. tostring(y2) .. "_" .. tostring(y3)) ~= 0) then
							--Did it win?
							if (tostring(y1) == tostring(y3)) then
							local y5 = eq.get_data("DRS_" .. tostring(y2) .. "_" .. tostring(y3));
							local y6 = eq.get_data(tostring(y9) .. "_Casino") 
							local z1 = y5 * 10;
							local y7 = y6 + z1;
							eq.set_data(tostring(y9) .. "_Casino", tostring(y7));
							end
						end
					eq.set_data("DRS_" .. tostring(y2) .. "_" .. tostring(y3), '0');	
					y3 = y3 + 1;
					end
				end
		eq.set_data("DRS_" .. tostring(y2), '0');	
		eq.set_data("DRS_C_" .. tostring(y2), '0');
		y2 = y2 + 1;	
		end
	end
	eq.set_timer("dice",30000);
	e.self:Shout("Dice is now taking bets!");
end
--Basic Dialogue
function event_say(e)
--Basic Dialogue
	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail!  Would you like to [" .. eq.say_link("join",false,"join") .. "] us for a round of [" .. eq.say_link("Dice",false,"Dice") .. "]?  If you would like to know the [" .. eq.say_link("play",false,"play") .. "], let me know.  You will need to bank with the Casino banker in order to play!");
	end
	if (e.message:findi("play")) then
			e.other:Message(315, "First deposite money with the Casino Banker.  Next, tell me if you would like a [join] at the table, and then you can place [bets].");

	end
--Bucket seating: DRS_T checks the current seat, DRS_ is the seat.
	if (e.message:findi("join")) then
		f1 = eq.get_data("DRS_T");
		f2 = 1;
		if (eq.get_data("DRS_" .. tostring(f1)) == '0') and (eq.get_data("DRS_T") < '9') then
			eq.set_data("DRS_" .. tostring(f1), tostring(e.other:AccountID()));
			e.other:Message(315,"You have been assigned to seat " .. f1 .. ".  You can now place [" .. eq.say_link("bets",false,"bets") .. "].");
			f3 = f1 + f2;
			eq.set_data("DRS_T", tostring(f3));
		end
		if (eq.get_data("DRS_8") ~= '0') then
			e.self:Say("The table is full.");
		end
	end
--Due to quest dialogue restrictions the numbers are broken into multiple messages and then sent to the player.
	if (e.message:findi("bets")) then
			e.other:Message(315, "first, pick a number.");  
			
			e.other:Message(315, "[" .. eq.say_link("01",false,"01") .. "][" .. eq.say_link("02",false,"02") .. "] [" .. eq.say_link("03",false,"03") .. "][" .. eq.say_link("04",false,"04") .. "][" .. eq.say_link("05",false,"05") .. "][" .. eq.say_link("06",false,"06") .. "][" .. eq.say_link("07",false,"07") .. "][" .. eq.say_link("08",false,"08") .. "][" .. eq.say_link("09",false,"09") .. "][" .. eq.say_link("10",false,"10") .."]  [" .. eq.say_link("11",false,"11") .. "]  [" .. eq.say_link("12",false,"12") .. "] [" .. eq.say_link("13",false,"13") .. "] [" .. eq.say_link("14",false,"14") .. "] [" .. eq.say_link("15",false,"15") .. "] [" .. eq.say_link("16",false,"16") .. "] [" .. eq.say_link("17",false,"17") .. "] [" .. eq.say_link("18",false,"18") .. "] [" .. eq.say_link("19",false,"19") .. "]  [" .. eq.say_link("20",false,"20") .. "]  [" .. eq.say_link("21",false,"21") .. "] [" .. eq.say_link("22",false,"22") .. "] [" .. eq.say_link("23",false,"23") .. "] [" .. eq.say_link("24",false,"24") .. "] [" .. eq.say_link("25",false,"25") .. "]"); 
			
			e.other:Message(315, "[" .. eq.say_link("26",false,"26") .. "] [" .. eq.say_link("27",false,"27") .. "] [" .. eq.say_link("28",false,"28") .. "]  [" .. eq.say_link("29",false,"29") .. "]  [" .. eq.say_link("30",false,"30") .. "] [" .. eq.say_link("31",false,"31") .. "] [" .. eq.say_link("32",false,"32") .. "] [" .. eq.say_link("33",false,"33") .. "] [" .. eq.say_link("34",false,"34") .. "] [" .. eq.say_link("35",false,"35") .. "] [" .. eq.say_link("36",false,"36") .. "] [" .. eq.say_link("37",false,"37") .. "]  [" .. eq.say_link("38",false,"38") .. "]  [" .. eq.say_link("39",false,"39") .. "] [" .. eq.say_link("40",false,"40") .. "] [" .. eq.say_link("41",false,"41") .. "] [" .. eq.say_link("42",false,"42") .. "] [" .. eq.say_link("43",false,"43") .. "] [" .. eq.say_link("44",false,"44") .. "] [" .. eq.say_link("45",false,"45") .. "] [" .. eq.say_link("46",false,"46") .. "]  [" .. eq.say_link("47",false,"47") .. "]  [" .. eq.say_link("48",false,"48") .. "] [" .. eq.say_link("49",false,"49") .. "] [" .. eq.say_link("50",false,"50") .. "]");
			
			e.other:Message(315, "[" .. eq.say_link("51",false,"51") .. "] [" .. eq.say_link("52",false,"52") .. "] [" .. eq.say_link("53",false,"53") .. "] [" .. eq.say_link("54",false,"54") .. "] [" .. eq.say_link("55",false,"55") .. "]  [" .. eq.say_link("56",false,"56") .. "]  [" .. eq.say_link("57",false,"57") .. "] [" .. eq.say_link("58",false,"58") .. "] [" .. eq.say_link("59",false,"59") .. "] [" .. eq.say_link("60",false,"60") .. "] [" .. eq.say_link("61",false,"61") .. "] [" .. eq.say_link("62",false,"62") .. "] [" .. eq.say_link("63",false,"63") .. "] [" .. eq.say_link("64",false,"64") .. "]  [" .. eq.say_link("65",false,"65") .. "]  [" .. eq.say_link("66",false,"66") .. "] [" .. eq.say_link("67",false,"67") .. "] [" .. eq.say_link("68",false,"68") .. "] [" .. eq.say_link("69",false,"69") .. "] [" .. eq.say_link("70",false,"70") .. "] [" .. eq.say_link("71",false,"71") .. "] [" .. eq.say_link("72",false,"72") .. "] [" .. eq.say_link("73",false,"73") .. "]  [" .. eq.say_link("74",false,"74") .. "]  [" .. eq.say_link("75",false,"75") .. "]");
			
			e.other:Message(315, "[" .. eq.say_link("76",false,"76") .. "] [" .. eq.say_link("77",false,"77") .. "] [" .. eq.say_link("78",false,"78") .. "] [" .. eq.say_link("79",false,"79") .. "] [" .. eq.say_link("80",false,"80") .. "] [" .. eq.say_link("81",false,"81") .. "] [" .. eq.say_link("82",false,"82") .. "]  [" .. eq.say_link("83",false,"83") .. "]  [" .. eq.say_link("84",false,"84") .. "] [" .. eq.say_link("85",false,"85") .. "] [" .. eq.say_link("86",false,"86") .. "] [" .. eq.say_link("87",false,"87") .. "] [" .. eq.say_link("88",false,"88") .. "] [" .. eq.say_link("89",false,"89") .. "] [" .. eq.say_link("90",false,"90") .. "] [" .. eq.say_link("91",false,"91") .. "]  [" .. eq.say_link("92",false,"92") .. "]  [" .. eq.say_link("93",false,"93") .. "] [" .. eq.say_link("94",false,"94") .. "] [" .. eq.say_link("95",false,"95") .. "] [" .. eq.say_link("96",false,"96") .. "] [" .. eq.say_link("97",false,"97") .. "] [" .. eq.say_link("98",false,"98") .. "] [" .. eq.say_link("99",false,"99") .. "] [" .. eq.say_link("I00",false,"I00") .. "]");
	end
--If you clicked one of the previous numbers, you will be prompted for a bet, and that number you bet on becomes the variable q.
	if(e.message:findi("01")) then
	q = 01;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("02")) then
	q = 02;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("03")) then
	q = 03;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("04")) then
	q = 04;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("05")) then
	q = 05;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("06")) then
	q = 06;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("07")) then
	q = 07;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("08")) then
	q = 08;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("09")) then
	q = 09;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("10")) then
	q = 10;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("11")) then
	q = 11;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("12")) then
	q = 12;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("13")) then
	q = 13;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("14")) then
	q = 14;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("15")) then
	q = 15;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("16")) then
	q = 16;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("17")) then
	q = 17;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("18")) then
	q = 18;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("19")) then
	q = 19;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("20")) then
	q = 20;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("21")) then
	q = 21;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("22")) then
	q = 22;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("23")) then
	q = 23;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("24")) then
	q = 24;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("25")) then
	q = 25;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("26")) then
	q = 26;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("27")) then
	q = 27;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("28")) then
	q = 28;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("29")) then
	q = 29;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("30")) then
	q = 30;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("31")) then
	q = 31;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("32")) then
	q = 32;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("33")) then
	q = 33;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("34")) then
	q = 34;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("35")) then
	q = 35;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("36")) then
	q = 36;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("37")) then
	q = 37;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("38")) then
	q = 38;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("39")) then
	q = 39;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("40")) then
	q = 40;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("41")) then
	q = 41;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("42")) then
	q = 42;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("43")) then
	q = 43;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("44")) then
	q = 44;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("45")) then
	q = 45;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("46")) then
	q = 46;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("47")) then
	q = 47;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("48")) then
	q = 48;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("49")) then
	q = 49;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("50")) then
	q = 50;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("51")) then
	q = 51;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("52")) then
	q = 52;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("53")) then
	q = 53;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("54")) then
	q = 54;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("55")) then
	q = 55;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("56")) then
	q = 56;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("57")) then
	q = 57;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("58")) then
	q = 58;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("59")) then
	q = 59;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("60")) then
	q = 60;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("61")) then
	q = 61;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("62")) then
	q = 62;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("63")) then
	q = 63;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("64")) then
	q = 64;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("65")) then
	q = 65;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("66")) then
	q = 66;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("67")) then
	q = 67;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("68")) then
	q = 68;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("69")) then
	q = 69;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("70")) then
	q = 70;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("71")) then
	q = 71;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("72")) then
	q = 72;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("73")) then
	q = 73;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("74")) then
	q = 74;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("75")) then
	q = 75;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("76")) then
	q = 76;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("77")) then
	q = 77;
	
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	elseif(e.message:findi("78")) then
	q = 78;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("79")) then
	q = 79
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("80")) then
	q = 80;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("81")) then
	q = 81;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("82")) then
	q = 82;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("83")) then
	q = 83;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("84")) then
	q = 84;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("85")) then
	q = 85;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("86")) then
	q = 86;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("87")) then
	q = 87;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("88")) then
	q = 88;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("89")) then
	q = 89;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("90")) then
	q = 90;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("91")) then
	q = 91;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("92")) then
	q = 92;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("93")) then
	q = 93;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("94")) then
	q = 94;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("95")) then
	q = 95;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("96")) then
	q = 96;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("97")) then
	q = 97;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("98")) then
	q = 98;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("99")) then
	q = 99;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");
	
	elseif(e.message:findi("I00")) then
	q = 100;
	e.other:Message(315, "You have chosen ".. q ..".  Would you like to bet [" .. eq.say_link("fifty",false,"fifty") .. "], [" .. eq.say_link("onehundo",false,"onehundo") .. "], [" .. eq.say_link("fivehundo",false,"fivehundo") .. "], [" .. eq.say_link("onek",false,"onek") .. "], [" .. eq.say_link("fivek",false,"fivek") .. "]");

	end
--Bets: convert the bucket seat back to an accountID, and subtract bet from their casino acc, then add it to seat/number bet.
	if(e.message:findi("fifty")) then
		local b0 = 1;
		local b7 = e.other:AccountID();
		while b0 < 9 do
			local b8 = eq.get_data("DRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 50;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("DRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("DRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("DRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
	if(e.message:findi("onehundo")) then
		local b0 = 1;
		local b7 = e.other:AccountID();
		while b0 < 9 do
			local b8 = eq.get_data("DRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 100;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("DRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("DRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("DRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
	if(e.message:findi("fivehundo")) then
		local b0 = 1;
		local b7 = e.other:AccountID();
		while b0 < 9 do
			local b8 = eq.get_data("DRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 500;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("DRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("DRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("DRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
	if(e.message:findi("onek")) then
		local b0 = 1;
		local b7 = e.other:AccountID();
		while b0 < 9 do
			local b8 = eq.get_data("DRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 1000;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("DRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("DRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("DRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
	if(e.message:findi("fivek")) then
		local b0 = 1;
		local b7 = e.other:AccountID();
		while b0 < 9 do
			local b8 = eq.get_data("DRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 5000;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("DRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("DRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("DRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
end