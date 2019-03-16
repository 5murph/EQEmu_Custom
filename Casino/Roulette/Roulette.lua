--Roulette 1.0
function event_spawn(e)
	eq.set_timer("roulette",90000);
	e.self:Shout("Roulette now taking bets!");
		function event_say(e)
		if (roulettetimer = 1) then
			e.other:Message(315,"Roulette is now taking bets!");
		end
		if (e.message:findi("hail")) then
			e.other:Message(315,"Hail!  Would you like to gamble on a round of [" .. eq.say_link("Roulette",false,"Roulette") .. "].  If you would like to [" .. eq.say_link("Play",false,"Play") .. "], please give yourself a balance of at least 200 platinum pieces with the Casino Banker!");
		end
		if (e.message:findi("play")) then
			if timer < 80 then
				bs = 1;
				local a1 = eq.get_data(e.other:AccountID() .. "_Casino");
				e.other:Message(315,"You have been added to the table for this round.  Make sure to place your [" .. eq.say_link("bets",false,"bets") .. "]!");
			elseif timer >= 80 then
				e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
			end
		end
		if (e.message:findi("types")) then
			if timer < 80 then
				e.other:Message(315,"The types of bets you can place are: [" .. eq.say_link("Straight",false,"Straight") .. "], [" .. eq.say_link("Split",false,"Split") .. "], [" .. eq.say_link("Street",false,"Street") .. "], [" .. eq.say_link("Corner",false,"Corner") .. "], [" .. eq.say_link("Sucker",false,"Sucker") .. "], [" .. eq.say_link("Line",false,"Line") .. "], [" .. eq.say_link("Columns",false,"Columns") .. "], [" .. eq.say_link("Dozens",false,"Dozens") .. "], [" .. eq.say_link("OddsEvens",false,"OddsEvens") .. "], or [" .. eq.say_link("LowHigh",false,"LowHigh") .. "]  ");
			elseif timer >= 80 then
				e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
			end
		end
--Table seating loop
		while bs < 9 and timer <= 80 do
			if (e.message:findi("join")) then
				eq.set_data("CRS_" .. tonumber(bs) .."," .. tostring(e.other:AccountID()));
				e.other:Message(315,"You have been assigned to seat ".. bs ..".  You can now place [bets].");
				bs + 1;
			elseif bs > 8 or timer >= 80 then
				e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
			end
		end
--Board Display
		if (e.message:findi("bets")) and timer < 80 then
			br = 1
			while br < 9 do
			--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
				if (eq.get_data("CRS_".. tonumber(br))) = e.other:AccountID()) then
					local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local b2 = 10
					local b3 = b1 - b2
					local b4 = e.other:AccountID()
					local b5 = eq.get_data("CRS_".. tonumber(br) .."_".. tonumber(v1));
					local b6 = b6 + b2
					eq.set_data("CRS_".. tonumber(br) .."_".. tonumber(v1), tonumber();
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
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
					v1 = getsaynumber
				elseif(e.message:findi("".. v1 .."")) and timer < 80 then
						e.other:Message(315, "Would you like to bet [10], [100], [1000], or [10000]?");			
				elseif (eq.get_data("CRS_".. tonumber(br))) ~= e.other:AccountID()) or timer >= 80 then
						e.other:Message(315, "Please ask me to [play] or wait for the next round.");	
				end
			end	
		end
--Bets
		if(e.message:findi("10")) and timer < 80 then
			while br < 9 do
			--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
				if (eq.get_data("CRS_".. tonumber(br))) = e.other:AccountID()) then
					local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local b2 = 10;
					local b3 = b1 - b2;
					local b4 = e.other:AccountID();
					local b5 = eq.get_data("CRS_".. tonumber(br) .."_".. tonumber(v1));
					local b6 = b6 + b2;
					eq.set_data("CRS_".. tonumber(br) .."_".. tonumber(v1), tonumber();
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
					e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
				elseif (eq.get_data("CRS_".. tonumber(br))) ~= e.other:AccountID()) or timer >= 80 then
					e.other:Message(315, "Please ask me to [play] or wait for the next round.");						
				end
			end
		elseif(e.message:findi("100")) and timer < 80 then
			while br < 9 do
			--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
				if (eq.get_data("CRS_".. tonumber(br))) = e.other:AccountID()) then
					local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local b2 = 100
					local b3 = b1 - b2
					local b4 = e.other:AccountID()
					local b5 = eq.get_data("CRS_".. tonumber(br) .."_".. tonumber(v1));
					local b6 = b6 + b2
					eq.set_data("CRS_".. tonumber(br) .."_".. tonumber(v1), tonumber();
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
					e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
				elseif (eq.get_data("CRS_".. tonumber(br))) ~= e.other:AccountID()) or timer >= 80 then
					e.other:Message(315, "Please ask me to [play] or wait for the next round.");						
				end
			end
		elseif(e.message:findi("1000")) and timer < 80 then
			while br < 9 do
			--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
				if (eq.get_data("CRS_".. tonumber(br))) = e.other:AccountID()) then
					local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local b2 = 1000
					local b3 = b1 - b2
					local b4 = e.other:AccountID()
					local b5 = eq.get_data("CRS_".. tonumber(br) .."_".. tonumber(v1));
					local b6 = b6 + b2
					eq.set_data("CRS_".. tonumber(br) .."_".. tonumber(v1), tonumber();
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
					e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
				elseif (eq.get_data("CRS_".. tonumber(br))) ~= e.other:AccountID()) or timer >= 80 then
					e.other:Message(315, "Please ask me to [play] or wait for the next round.");						
				end
			end
		elseif(e.message:findi("10000")) and timer < 80 then
			while br < 9 do
			--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
				if (eq.get_data("CRS_".. tonumber(br))) = e.other:AccountID()) then
					local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local b2 = 10000
					local b3 = b1 - b2
					local b4 = e.other:AccountID()
					local b5 = eq.get_data("CRS_".. tonumber(br) .."_".. tonumber(v1));
					local b6 = b6 + b2
					eq.set_data("CRS_".. tonumber(br) .."_".. tonumber(v1), tonumber();
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
					e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
				elseif (eq.get_data("CRS_".. tonumber(br))) ~= e.other:AccountID()) or timer >= 80 then
					e.other:Message(315, "Please ask me to [play] or wait for the next round.");						
				end
			end
		elseif bs = 8 or timer >80 do
			e.other:Message(315,"This table is full.  Please find another or wait until a spot opens.");
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
--Clear Seats
	if bt = 9 then 
		eq.set_data(bs_seat_1, 0);
		eq.set_data(bs_seat_2, 0);
		eq.set_data(bs_seat_3, 0);
		eq.set_data(bs_seat_4, 0);
		eq.set_data(bs_seat_5, 0);
		eq.set_data(bs_seat_6, 0);
		eq.set_data(bs_seat_7, 0);
		eq.set_data(bs_seat_8, 0);
		bt = 0;
		--timer delay start here
	end
--this end is for the function_say.
end