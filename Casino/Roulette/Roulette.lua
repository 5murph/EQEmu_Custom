--Roulette

function event_say(e)

	if (roulettetimer = 0) then
		e.other:Message(315,"Roulette is now taking bets!");

	--NPC Hail dialogue
	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail!  Would you like to gamble on a round of [" .. eq.say_link("Roulette",false,"Roulette") .. "].  If you would like to [" .. eq.say_link("Play",false,"Play") .. "], please give yourself a balance of at least 200 platinum pieces with the Casino Banker!");
	end
	if (e.message:findi("play")) then
		bs = 1;
		local a1 = eq.get_data(e.other:AccountID() .. "_Casino");
		
		e.other:Message(315,"You have been added to this round.  Make sure to place your [" .. eq.say_link("bets",false,"bets") .. "]!");
	end
	if (e.message:findi("bets")) then
		if timer < 45bthen
			e.other:Message(315,"The types of bets you can place are: [" .. eq.say_link("Straight",false,"Straight") .. "], [" .. eq.say_link("Split",false,"Split") .. "], [" .. eq.say_link("Street",false,"Street") .. "], [" .. eq.say_link("Corner",false,"Corner") .. "], [" .. eq.say_link("Sucker",false,"Sucker") .. "], [" .. eq.say_link("Line",false,"Line") .. "], [" .. eq.say_link("Columns",false,"Columns") .. "], [" .. eq.say_link("Dozens",false,"Dozens") .. "], [" .. eq.say_link("OddsEvens",false,"OddsEvens") .. "], or [" .. eq.say_link("LowHigh",false,"LowHigh") .. "]  ");
		elseif timer > 45 then
			e.other:Message(315,"The ball is about to roll.  Please wait a moment while this round finishes.");
		end
	end
--Table seating
	if (e.message:findi("join")) then
		while bs <= 8 and timer < 60 do
				eq.set_data("CRS_" .. tonumber(bs), tostring(e.other:AccountID()));
				e.other:Message(315,"You have been assigned to seat ".. bs ..".");
				bs + 1;
		elseif bs > 8
				e.other:Message(315,"This table is full.  Please find another or wait until a spot opens.");
		end
	end
--this end is for the function_say.
end

--Bets

--Wheel Spin and Win Checks
	if (timer = 60) then
		e.other:Message(315,"The roulette ball rolls!");
		win = math.random(38)
		--plugin name number properly on this line
		e.other:Message(315,"The roulette ball is ".. win ..".");
		bs = 0;
	end
	
--Win Checks

while bucketseat <= 8 do
	--Straight
	if bucket seat.accountid (bet = 1-38) then
		local c1 = eq.get_data(e.other:AccountID() .. "_Casino");
		local c2 = c1 * 35;
	elseif bucketseat.accountid (bet = 39 or 40 or 41) then
	if bucket seat.accountid (bet = 
		e.other:Message(315, "Your bet or bets paid out ".. c2 .." to your account.");
	elseif bucketseat.accountid (bet = 42 or 43 or 44) then
		
		
42 1-12
43 13-24
44 25-36
51-102 corners
103-189 0 00 shared side

--clear the bucket seats

bs seat 1
bs seat 2
bs seat 3
bs seat 4
bs seat 5
bs seat 6
bs seat 7
bs seat 8

