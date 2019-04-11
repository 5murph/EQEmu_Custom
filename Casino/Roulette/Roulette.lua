--roulette
--Upon Spawning, start timer, loop to empty old seats, bets.
function event_spawn(e)
	eq.set_timer("roulette",90000);
	e.self:Shout("Roulette is now taking bets!");
	eq.set_data("CRS_1", '0');
	eq.set_data("CRS_2", '0');
	eq.set_data("CRS_3", '0');
	eq.set_data("CRS_4", '0');
	eq.set_data("CRS_5", '0');
	eq.set_data("CRS_6", '0');
	eq.set_data("CRS_7", '0');
	eq.set_data("CRS_8", '0');
	eq.set_data("CRS_T", '1');
end

--Once timer ends -> roll, winnings, empty table loop, reset timer
function event_timer(e)
	if (e.timer == "roulette") then
		e.self:Say("Here's the roll!");
		local y1 = math.random(100);
		e.self:Say("The winning number is: " .. y1 .. "!");
		eq.set_data("CRS_T", '1');
		local y2 = 1;
		local y3 = 1;
	--Because calling a single account ID wouldn't be sufficient with 8 players and no dialogue within this function, a check bucket "CRS_C_" is used instead of e.other:AccountID to match account IDs to chairs.
	--Win Loops
		--Seat Count
		while y2 < 9 do
			local y8 = eq.get_data("CRS_C_".. tostring(y2))
			local y9 = eq.get_data("CRS_".. tostring(y2))
				if (tostring(y9) ~= 0) and (tostring(y8) == tostring(y9)) then
		--Table Placement bucket count
					while y3 < 101 do
					--Does the seat contain an account ID?
						--If the Account is "seated" and the seat's bet wasn't 0...
						if (eq.get_data("CRS_" .. tostring(y2) .. "_" .. tostring(y3)) ~= 0) then
							--Did it win?
							if (tostring(y1) == tostring(y3)) then
							local y5 = eq.get_data("CRS_" .. tostring(y2) .. "_" .. tostring(y3));
							local y6 = eq.get_data(tostring(y9) .. "_Casino") 
							local z1 = y5 * 10;
							local y7 = y6 + z1;
							eq.set_data(tostring(y9) .. "_Casino", tostring(y7));
							end
						end
					eq.set_data("CRS_" .. tostring(y2) .. "_" .. tostring(y3), '0');	
					y3 = y3 + 1;
					end
				end
		eq.set_data("CRS_" .. tostring(y2), '0');	
		eq.set_data("CRS_C_" .. tostring(y2), '0');
		y2 = y2 + 1;	
		end
	end
	eq.set_timer("roulette",90000);
	e.self:Say("Roulette is now taking bets!");
end
--Basic Dialogue
function event_say(e)
--Basic Dialogue
	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail!  Would you like to [" .. eq.say_link("join",false,"join") .. "] us for a round of [" .. eq.say_link("roulette",false,"roulette") .. "]?  If you would like to know the [" .. eq.say_link("play",false,"play") .. "], let me know.  You will need to bank with the Casino banker in order to play!");
	end
	if (e.message:findi("play")) then
			e.other:Message(315, "First deposite money with the Casino Banker.  Next, tell me if you would like a [join] at the table.");

	end
--Bucket seating: CRS_T checks the current seat, CRS_ is the seat.
	if (e.message:findi("join")) then
		f1 = eq.get_data("CRS_T");
		f2 = 1;
		if (eq.get_data("CRS_" .. tostring(f1)) == '0') and (eq.get_data("CRS_T") < '9') then
			eq.set_data("CRS_" .. tostring(f1), tostring(e.other:AccountID()));
			e.other:Message(315,"You have been assigned to seat " .. f1 .. ".  You can now place [" .. eq.say_link("bets",false,"bets") .. "].");
			f3 = f1 + f2;
			eq.set_data("CRS_T", tostring(f3));
		end
		if (eq.get_data("CRS_8") ~= '0') then
			e.self:Say("The table is full.");
		end
	end
--Bets, Board Display
	if (e.message:findi("bets")) then
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
			e.other:Message(315, "Pick your number(s) INC BOARD"); 
			e.other:Message(315, "_________|________|__________"); 
			e.other:Message(315, "_________|________|_______________0_____S1_____00"); 
			e.other:Message(315, "_________|________|__C1____S2____C2_____S3_____C3_____S4____C4"); 
			e.other:Message(315, "_________|________|__S5____1_____S6_____2______S7_____3"); 
			e.other:Message(315, "__1to18__|________|__C5____S8____C6_____S9_____C7____S10____C8"); 
			e.other:Message(315, "_________|________|_S11____4____S12_____5_____S13_____6");  
			e.other:Message(315, "_________|_1to12__|__C9___S14___C10____S15____C11____S16___C12"); 			
			e.other:Message(315, "_________|________|_S17____7____S18_____8_____S19_____9__");  
			e.other:Message(315, "__Evens__|________|_C13___S20___C14____S21____C15____S22___C16"); 			
			e.other:Message(315, "_________|________|_S23____10___S24_____11____S25_____12");  
			e.other:Message(315, "_________|________|_C17___S26___C18____S27____C19____S28___C20"); 			
			e.other:Message(315, "_________|________|_S29____13___S30_____14____S31_____15");  
			e.other:Message(315, "___Red___|________|_C21___S32___C22____S33____C23____S34___C24"); 			
			e.other:Message(315, "_________|________|_S35____16___S36_____17____S37_____18");  		
			e.other:Message(315, "_________|_13to24_|_C25___S38___C26____S39____C27____S40___C28");  			
			e.other:Message(315, "_________|________|_S41____19___S42_____20____S43_____21");   
			e.other:Message(315, "__Black__|________|_C29___S44___C30____S80____C31____S46___C32");  			
			e.other:Message(315, "_________|________|_S46____22___S48_____23____S49_____24");    
			e.other:Message(315, "_________|________|_C33___S50___C34____S51____C35____S52___C36");  			
			e.other:Message(315, "_________|________|_S17____25___S18_____26____S19_____27");    
			e.other:Message(315, "__Odds___|________|_C37___S56___C38____S21____C39____S58___C40");  			
			e.other:Message(315, "_________|________|_S23____28___S24_____29____S25_____30");    
			e.other:Message(315, "_________|_25to36_|_C41___S62___C42____S27____C43____S64___C44");  			
			e.other:Message(315, "_________|________|_S29____31___S30_____32____S31_____33");    
			e.other:Message(315, "_19to36__|________|_C80___S68___C46____S33____C47____S70___C48");  			
			e.other:Message(315, "_________|________|_S35____34___S36_____35____S37_____36");  		
			e.other:Message(315, "_________|________|");
			e.other:Message(315, "_________|________|________E1___________E2____________E3");
		end	
	end
--Number Selection, Variable setting, Bet placement
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
			local b8 = eq.get_data("CRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 50;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("CRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("CRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("CRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
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
			local b8 = eq.get_data("CRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 100;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("CRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("CRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("CRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
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
			local b8 = eq.get_data("CRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 500;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("CRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("CRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("CRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
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
			local b8 = eq.get_data("CRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 1000;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("CRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("CRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("CRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
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
			local b8 = eq.get_data("CRS_".. tostring(b0));
			if (tostring(b8) == tostring(b7)) then
				local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
				local b2 = 5000;
				local b3 = b1 - b2;
				local b4 = e.other:AccountID();
				local b5 = eq.get_data("CRS_".. tostring(b0) .."_".. tostring(q));
				local b6 = b5 + b2;
				eq.set_data("CRS_C_" .. tostring(b0), (tostring(b7)))
				eq.set_data("CRS_".. tostring(b0) .."_".. tostring(q), tostring(b6));
				eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
				e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
			end
		b0 = b0 + 1;
		end
	end
end
--Timer End; Wheel Spin and Win Checks
function event_timer(e)
	if (timer = roulette) then
		e.other:Message(315,"The roulette ball rolls!");
		win = math.random(38)
		e.other:Message(315,"The ball stopped on".. eq.getdata("RouletteNo_"tonumber(win) .. ".");
		bs = 0;
		
		
		
		
		
		
		
		
		
		
		
------------------------NEEDS WORK----------------	
		
		
--Win Checks, Payout loop
		bt = 1
		while bt < 9
			local 	d1 = 1
			while d1 < fullroll do
				if eq.get_data("CRS_" .. (tonumber(bt)) .. "_" .. (tonumber(d1))) ~= 0 and if eq.get_data("CRS_" .. (tonumber(bt)) .. "_" .. (tonumber(d1))) ~= nil then 
--Straight
					if (d1 >= 1 and d1 <= 38) and (win = d1) then
						local c1 = eq.get_data(CRS_(tonumber(bt)"_"(tonumber(d1));
						local c2 = c1 * 35;
						e.other:Message(315, "Your bet or bets paid out ".. c2 .." to your account.");
					end
--Column	
					if( d1 = 39) and (d1 = win) then
					end
					if( d1 = 40) and (d1 = win) then
					end
					if( d1 = 41) and (d1 = win) then
					end
						local c3 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c4 = c3 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c4 .." to your account.");
--Thirds	
					elseif bucket seat.accountid (bet = 42 or 43 or 44) then 
						local c5 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c6 = c5 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c6 .." to your account.");
--Halves	
					elseif bucket seat.accountid (bet = 45 or 46) then 
						local c7 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c8 = c7 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c8 .." to your account.");
--Colors	
					elseif bucket seat.accountid (bet = 47 or 48) then 
						local c9 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c10 = c9 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c10 .." to your account.");
--OddsEvens	
					elseif bucket seat.accountid (bet = 46 or 49) then 
						local c11 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c12 = c11 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c12 .." to your account.");
--Corner		
					elseif bucket seat.accountid (bet = 51-102) then 
						local c13 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c14 = c13 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c14 .." to your account.");
--Split	
					elseif bucket seat.accountid (bet = 103-174) then 
						local c15 = eq.get_data(e.other:AccountID() .. "_Casino");
						local c16 = c15 * 2;
						e.other:Message(315, "Your bet or bets paid out ".. c16 .." to your account.");
					end
				bt + 1;
			end
		end
	end
--this end is for the function_say.
end