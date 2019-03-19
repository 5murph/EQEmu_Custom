--Dice
function event_spawn(e)
	eq.set_timer("dice",90000);
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
--Once timer ends -> roll, winnings, empty table, reset timer
function event_timer(e)
	if (e.timer == "dice") then
		e.self:Say("Here's the roll!");
		y1 = math.random(100)
		eq.set_data("DRS_T", '1');
		local y2 = 1;
		--Win Loop
		while (DRS_(tonumber(y2)) < 9 do
			while (eq.get_data("DRS_" .. tonumber(y2) .. "_" .. tonumber(y3)) < 101) do
				if (eq.get_data("DRS_" .. tonumber(y2)) ~= 0) and (eq.get_data("DRS_" .. tonumber(y2) .. "_" .. tonumber(y3)) ~= 0) then
					if (eq.get_data("DRS_".. tonumber(br))) == e.other:AccountID()) then
					local y4 = eq.get_data("DRS_" .. tonumber(y2) .. "_" .. tonumber(y3));
					local y5 = eq.get_data(e.other:AccountID() .. "_Casino") 
					local y6 = y4 + y5;
					eq.set_data(e.other:AccountID() .. "_Casino", tostring(y6));
					e.other:Message(315, "You have been credited " .. y6 .. "for this round of dice.");
					eq.set_data("DRS_" .. tonumber(y2), 0)
				end
			end
		end
		eq.stop_timer("dice");
		eq.set_timer("dice",90000);
		e.self:Shout("Dice is now taking bets!");
	end
end
--Basic Dialogue
function event_say(e)
	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail!  Would you like to [" .. eq.say_link("join",false,"join") .. "] us for a round of [" .. eq.say_link("Dice",false,"Dice") .. "]?  If you would like to know the [" .. eq.say_link("play",false,"play") .. "], let me know.  You will need to bank with the Casino banker in order to play!");
	end
	if (e.message:findi("play")) then
			e.other:Message(315, "First deposite money with the Casino Banker.  Next, tell me if you would like a [join] at the table, and then you can place [bets].");

	end
--Bucket-Enabled "loop" that seats people at the table
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
--Dice
	if (e.message:findi("bets")) then
		e.other:Message(315, "first, say a number between 1 and 100.");  
		g1 = e.message;
	end
	if (e.message:findi(tostring(g1))) then
		e.other:Message(315, "Would you like to bet [" .. eq.say_link("10",false,"10") .. "], [" .. eq.say_link("100",false,"100")"], [" .. eq.say_link("1000",false,"1000") .. "], or [" .. eq.say_link("10000",false,"10000") .. "]?");			
	end
	if(e.message:findi("10")) then
	--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
		if (eq.get_data("DRS_".. tonumber(br))) == e.other:AccountID()) then
			local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
			local b2 = 10;
			local b3 = b1 - b2;
			local b4 = e.other:AccountID();
			local b5 = eq.get_data("DRS_".. tonumber(br) .."_".. tonumber(g1));
			local b6 = b6 + b2;
			eq.set_data("DRS_".. tonumber(br) .."_".. tonumber(g1), tonumber();
			eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino")".");
		end
	end
	if(e.message:findi("100")) then
		--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
		if (eq.get_data("DRS_".. tonumber(br))) == e.other:AccountID()) then
			local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
			local b2 = 100
			local b3 = b1 - b2
			local b4 = e.other:AccountID()
			local b5 = eq.get_data("DRS_".. tonumber(br) .."_".. tonumber(g1));
			local b6 = b6 + b2
			eq.set_data("DRS_".. tonumber(br) .."_".. tonumber(g1), tonumber();
			eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino")".");
		end
	end
	if(e.message:findi("1000")) then
	--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
		if (eq.get_data("DRS_".. tonumber(br))) == e.other:AccountID()) then
			local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
			local b2 = 1000
			local b3 = b1 - b2
			local b4 = e.other:AccountID()
			local b5 = eq.get_data("DRS_".. tonumber(br) .."_".. tonumber(g1));
			local b6 = b6 + b2
			eq.set_data("DRS_".. tonumber(br) .."_".. tonumber(g1), tonumber();
			eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino")".");
		end
	end
	if(e.message:findi("10000")) then
	--loop to convert bucket back to accountID, and  bet transaction to be placed in proper bucket location.
		if (eq.get_data("DRS_".. tonumber(br))) == e.other:AccountID()) then
			local b1 = eq.get_data(e.other:AccountID() .. "_Casino");
			local b2 = 10000
			local b3 = b1 - b2
			local b4 = e.other:AccountID()
			local b5 = eq.get_data("DRS_".. tonumber(br) .."_".. tonumber(g1));
			local b6 = b6 + b2
			eq.set_data("DRS_".. tonumber(br) .."_".. tonumber(g1), tonumber();
			eq.set_data(e.other:AccountID() .. "_Casino", tostring(b3));
			e.other:Message(315, "Your bet has been accepted.  Current Balance: ".. eq.get_data(e.other:AccountID() .. "_Casino")".");
		end
	end
end