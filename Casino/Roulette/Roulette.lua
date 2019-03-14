--Roulette 1.0
function event_say(e)
	--Timer Call
	if (roulettetimer = 1) then
		e.other:Message(315,"Roulette is now taking bets!");
	end
	--NPC Hail dialogue
	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail!  Would you like to gamble on a round of [" .. eq.say_link("Roulette",false,"Roulette") .. "].  If you would like to [" .. eq.say_link("Play",false,"Play") .. "], please give yourself a balance of at least 200 platinum pieces with the Casino Banker!");
	end
	if (e.message:findi("play")) then
		if timer < 45 then
			bs = 1;
			local a1 = eq.get_data(e.other:AccountID() .. "_Casino");
			e.other:Message(315,"You have been added to this round.  Make sure to place your [" .. eq.say_link("bets",false,"bets") .. "]!");
		elseif timer > 45 then
			e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
		end
	end
	if (e.message:findi("bets")) then
		if timer < 45 then
			e.other:Message(315,"The types of bets you can place are: [" .. eq.say_link("Straight",false,"Straight") .. "], [" .. eq.say_link("Split",false,"Split") .. "], [" .. eq.say_link("Street",false,"Street") .. "], [" .. eq.say_link("Corner",false,"Corner") .. "], [" .. eq.say_link("Sucker",false,"Sucker") .. "], [" .. eq.say_link("Line",false,"Line") .. "], [" .. eq.say_link("Columns",false,"Columns") .. "], [" .. eq.say_link("Dozens",false,"Dozens") .. "], [" .. eq.say_link("OddsEvens",false,"OddsEvens") .. "], or [" .. eq.say_link("LowHigh",false,"LowHigh") .. "]  ");
		elseif timer > 45 then
			e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
		end
	end
--Table seating, bet loop
	while bs < 9 and timer <= 45 do
		if (e.message:findi("join")) then
			eq.set_data("CRS_" .. tonumber(bs) .."," .. tostring(e.other:AccountID()));
			e.other:Message(315,"You have been assigned to seat ".. bs ..".");
			bs + 1;
		elseif (e.message:findi("straight")) and timer < 45 then
			e.other:Message(315, "What number would you like to bet on?");
			local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
			e.other:Message(315, "How much would you like to bet?");
			local b2 = number
			local b3 = b1 - b2
			local b4 = e.other:AccountID()
			while br < 9 do
			--account to bucket, bucket to account, etc.
				if (eq.get_data(tonumber(b4)) = e:other:AccountID()) then
					local b5 = eq.get_data(tostring(CRS_tonumbere.other:AccountID() .. "_Casino");
			eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino") ..".");
		elseif bs = 8 or timer >45 do
			e.other:Message(315,"This table is full.  Please find another or wait until a spot opens.");
		end
		if seat_firstbet = 1 then
		
--Timer End; Wheel Spin and Win Checks
	if (timer = 60) then
		e.other:Message(315,"The roulette ball rolls!");
		win = math.random(38)
		e.other:Message(315,"The ball stopped on".. eq.getdata("RouletteNo_"tonumber(win)".");
		bs = 0;
--Win Checks, Payout loop
	end
	bt = 1
	while bt < 9
		local 	d1 = 1
		while d1 < fullroll
			if eq.get_data(seat_(tonumber(bt))_(tonumber(d1))) ~= 0 and if eq.get_data(seat_(tonumber(bt))_(tonumber(d1))) ~= nil then 
--Straight
				if bucket seat.accountid (bet = 1-38) then
					local c1 = eq.get_data(e.other:AccountID() .. "_Casino");
					local c2 = c1 * 35;
					e.other:Message(315, "Your bet or bets paid out ".. c2 .." to your account.");
--Column
				elseif bucketseat.accountid (bet = 39 or 40 or 41) then
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
				elseif bucket seat.accountid (bet = 103-186) then 
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
	end
--this end is for the function_say.
end