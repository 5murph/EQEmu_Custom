function event_say(e)

	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail and well met mighty adventurer!  If you would like me to [deal] you in and play some [holdem], just let me know.  If you would like to cash [out] or know how much [credit] you have, I can also help you with that.");
	end
	if (e.message:findi("deal")) then
		e.other:Message(315,"To buy a seat at the table, you will need a balance of at least 200 platinum.  Please note I only accept platinum.");
	end
	if (e.message:findi("out")) then
		$cashout == eq.get_data(e.other:GetCleanName() .. "_Casino")
		e.other:AddCash($cashout);
	end
	if (e.message:findi("credit")) then
		e.other:Message(315,"Currently your balance is " eq.get_data(e.other:GetCleanName() .. "_Casino");
	end
end