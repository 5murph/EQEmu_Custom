function event_say(e)

	if (e.message:findi("hail")) then
		e.other:Message(315,"Hail and well met mighty adventurer!  If you would like to exchange platinum for credit, cash [out], or know how much [credit] you have, I can help you with that.");
	end
	if (e.message:findi("out")) then
		$cashout == eq.get_data(e.other:GetCleanName() .. "_Casino")
		e.other:AddCash($cashout);
	end
	if (e.message:findi("credit")) then
		e.other:Message(315,"Currently your balance is " eq.get_data(e.other:GetCleanName() .. "_Casino");
	end
end

function event_handin(e)

eq.set_data(e.other:GetCleanName() .. "_Casino") + e.other:GetPlatinum
e.other:Message(315,"Your platinum has been credited to your character.  Your current balance is: " eq.get_data(e.other:GetCleanName() .. "_Casino");

end