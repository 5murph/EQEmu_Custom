function event_say(e)
    if (e.message:findi("hail")) then
		eq.update_task_activity(300, 2, 1);
		eq.assign_task(301);
		e.self:Say ("Welcome to our little hub here in the Bazaar.  If you would like to hear about the current [$hotzones], simply ask me to [$list] them for you.");
	end
	if (e.message:findi("hotzones")) then
		e.self:Say ("Hot Zones are locations that will be worth more than their usual experience per kill.  These zones are recommended for people who enjoy grouping or want to adventure in new places.");
	end    
	if (e.message:findi("list")) then
		e.self:Say ("There are currently no hotzones.");
	end
end