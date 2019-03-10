function event_say(e)
    if (e.message:findi("hail")) then
		e.other:Message(315, "Hail and well met, " .. e.other:GetCleanName() .. ".  I am a master crafter of [" .. eq.say_link("armors",false,"armors") .. "] suited for newcomers seeking their start in our realm.");
	elseif (e.message:findi("armors")) then
		e.other:Message(315, "Here is a set of newbie armor!");
		e.other:SummonItem(76550);
		e.other:SummonItem(76551);
		e.other:SummonItem(76552);
		e.other:SummonItem(76553);
		e.other:SummonItem(76554);
		e.other:SummonItem(76555);
		e.other:SummonItem(76556);
		e.other:SummonItem(76557);
		e.other:SummonItem(76558);
		e.other:SummonItem(76559);
		e.other:SummonItem(76560);
		e.other:SummonItem(76561);
	end
end
