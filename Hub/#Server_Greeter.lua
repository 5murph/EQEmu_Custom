function event_say(e)
	if (e.message:findi("hail")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") < "1") then
			eq.assign_task(300);
		end
		e.other:Message(315, "The avatar of the faceless turns to you as if staring.");
		e.other:Message(315, "Hail, " .. e.other:GetCleanName() .. "!  Welcome to our realm. Our group has taken this space as a headquarters.  From here we and can offer [" .. eq.say_link("buffs",false,"buffs") .. "], [" .. eq.say_link("teleports",false,"teleports") .. "],and powerful [" .. eq.say_link("idols",false,"idols") .. "].  If you would like to be assigned back to your [" .. eq.say_link("current",false,"current") .. "] task, let me know.");
	end
	if(e.message:findi("idols")) then
		e.other:Message(315, "The charm is often a part of progression, and a powerful piece of equipment you will often see here on Greenmist.  These act as a sign of alliance to the various agents at the back of the room.");
	end
	if(e.message:findi("buffs")) then
		e.other:Message(315, "The mystic is a cursed man with great powers.  He is capable of curing your ailments and giving you magical help beyond the years of a single caster.");
	end
	if(e.message:findi("teleports")) then
		e.other:Message(315, "The mummified wizard can assist you in travelling to many places in Norrath.");
	end
	if(e.message:findi("current")) then
		e.other:Message(315, "If you have forgotten where you should be currently adventuring, allow me to point you to [" .. eq.say_link("Classic",false,"Classic") .. "], [" .. eq.say_link("Kunark",false,"Kunark") .. "], [" .. eq.say_link("Velious",false,"Velious") .. "], [" .. eq.say_link("Luclin",false,"Luclin") .. "], [" .. eq.say_link("Planes",false,"Planes") .. "], [" .. eq.say_link("Ykesha",false,"Ykesha") .. "], [" .. eq.say_link("Dungeons",false,"Dungeons") .. "], [" .. eq.say_link("Gates",false,"Gates") .. "], or [" .. eq.say_link("Omens",false,"Omens") .. "].");
	end
	if (e.message:findi("classic")) then
				eq.assign_task(301);
	end
	if (e.message:findi("kunark")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "1") then
				eq.assign_task(302);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "1") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("velious")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "2") then
				eq.assign_task(303);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("luclin")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "3") then
				eq.assign_task(304);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("planes")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "4") then
				eq.assign_task(305);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("ykesha")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "5") then
				eq.assign_task(306);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "5") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("dungeons")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "6") then
				eq.assign_task(307);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "6") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("gates")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "7") then
				eq.assign_task(308);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "7") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
	if (e.message:findi("omens")) then
			if(eq.get_data(e.other:GetCleanName() .. "_Progression") == "8") then
				eq.assign_task(309);
			elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "8") then
				e.other:Message(315, "You have not travelled to these lands yet.");
			end
	end
end