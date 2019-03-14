--Craps

function event_say(e)

--NPC Hail dialogue
if (e.message:findi("hail")) then
	e.other:Message(315,"Hail!  Would you like to gamble on a round of [craps?].  If you would like to [play], please give yourself a balance of at least 5 platinum pieces with the Casino Banker!");
end
if (e.message:findi("slot")) then
	e.other:Message(315,"Currently I offer Steam-Powered slots that rolls 4 x 3, length by height that is, across __ lines maximum.  The Bets scale according to how many [lines] you would like to play.");
end
if (e.message:findi("bets")) then
	e.other:Message(315,"");
end