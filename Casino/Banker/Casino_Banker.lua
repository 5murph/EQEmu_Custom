function event_say(e)
	if (e.message:findi("hail")) then
		e.other:Message(315, "Hail and well met mighty adventurer!  If you would like to [" .. eq.say_link("exchange",false,"exchange") .. "] platinum for credit, cash [" .. eq.say_link("out",false,"out") .. "], or know how much [" .. eq.say_link("credit",false,"credit") .. "] you have, I can help you with that.");
	elseif (e.message:findi("exchange")) then
		e.other:Message(315,"If you hand me platinum, I will convert it into credit.  Your money will be safe with me, but you can always cash [" .. eq.say_link("out",false,"out") .. "] if you'd like.");
	elseif (e.message:findi("credit")) then
		local a = eq.get_data(e.other:AccountID() .. "_Casino");
		e.other:Message(315,"Your current balance is " .. a ..".");
	elseif (e.message:findi("out")) then
		local b = eq.get_data(e.other:AccountID() .. "_Casino");
		e.other:GiveCash(0, 0, 0, tonumber(b));
		eq.set_data(e.other:AccountID() .. "_Casino", '0');
		e.other:Message(315,"Your balance has been cleared.  Enjoy the rest of your stay!");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(e.trade.platinum ~= 0 and e.trade.platinum ~= nil) then
		local c = e.trade.platinum;
		local d = eq.get_data(e.other:AccountID() .. "_Casino");
		local e = c + d;
		eq.set_data(e.other:AccountID() .. "_Casino", tostring(e));
		e.other:Message(315,"Your platinum has been credited to your character.  Current Balance: " .. eq.get_data(e.other:AccountID() .. "_Casino") .. ".");
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

