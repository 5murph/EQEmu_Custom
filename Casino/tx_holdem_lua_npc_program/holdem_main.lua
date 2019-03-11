--Texas Holdem
--Main Body
--By Rudeboy88
--February 2019

function event say(e)

--NPC Hail dialogue
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

--Handing Platinum to NPC, NPC taking said value and adding it to your bucket.
function event handin

eq.get_data(e.other:GetCleanName() .. "_Casino") + e.other:GetPlatinum
e.other:Message(315,"Your platinum has been credited to your account.  Your current balance is: " eq.get_data(e.other:GetCleanName() .. "_Casino");

--Timer Set, Table, Seat variable (for gambling), and Seat buckets (for Emptied

eq.set_timer(table, 
$ptable = 0
$seat = 0

if (e.message:findi("buyin")) and (eq.get_data(e.other:GetCleanName() .. "_Casino") >= 200) then
	if ($ptable < 2))) then 
		Assign $seat + 1 to player
		$seat_char = e.other:GetCleanName()
		eq.set_data((e.other:GetCleanName() .. "_Casino") - 200)
		$ptable + 1
		e.other:Message(315,"Please wait for other player characters.");
	end
	if ($ptable >= 2 and <= 10) then
			Assign "$seat" + 1 to player
		$seat_char = e.other:GetCleanName()
		eq.set_data((e.other:GetCleanName() .. "_Casino") - 200)
		$ptable + 1
		e.other:Message(315,"The hand will start in 30 seconds.");
	end
	else
		e.other:Message(315,"This table is currently not accepting players, or you need more credit.");	
	end
end	
--Begin Hand
	if (txround ==  0) then
		eq.set_timer(txround, $ptable x 240);
	plugin:deal cards
		while ($seat <= $ptable) do
			eq.set_timer($seat_turn, 30)
			$bet_$seat = 0
			e.other:Message(315,"You have 30 seconds to [raise], or [stay] for this round.");
		elseif (e.message:findi("raise
			e.other:Message(315,"to [bet], simply say bet followed by a number.");
		elseif (e.message:findi("bet")) then
			$bet_$seat = string.match("bet (.*)");
			$pool = $pool + $bet_seat; 
		elseif (e.message:findi("stay")) then
			e.other:Message(315,"Next player then.");
	end
--Pull Cards
	while ($cards <= 5) do
		if ($ptable <= 4) then
		p_$seat+1
			while (p_$seat <= $ptable) do
					$cards == math.random(104);
		end
		--if 5-8 players are at the table, 3 decks are used.
		if ($ptable > 4) and ($ptable <= 8) then
		p_$seat+1
			while (p_$seat <= $ptable) do
					$cards == math.random(156);
		end
		--if 9-10 players are at the table, 4 decks are used.
		if ($ptable >=9) and ($ptable <= 10) then
		p_$seat+1
			while (p_$seat <= $ptable) do
					$cards == math.random(208);
		end
--End Hand
--Poker hands from highest to lowest
if $seat_$c1 and $seat_$c2

    --Royal flush. A, K, Q, J, 10, all the same suit.
	if cards contained in no particular order plus those in $seat's hand equal 10-ace and start with the same letter then
	$seat_dealend == 1;
	end
	--Straight flush. Five cards in a sequence, all in the same suit.
	if cards contained in no particular order plus $seat's cards equal count with same letter then
	$seat_dealend == 2;
	end
    --Four of a kind. All four cards of the same rank.
	if cards contained in no particular order plus $seat's cards
	$seat_dealend == 3;
	end
    --Full house. Three of a kind with a pair.
	if cards contained in no particular order plus $seat's cards have 3 same numbers and two same numbers then
	$seat_dealend == 4;
	end
    --Flush.
	if cards contained in no particular order plus $seat's cards have the same first letter then
	$seat_dealend == 5;
	end
    --Straight.
	if cards contained in no particular order plus $seat's cards have 5 cards equal count then
	$seat_dealend == 6;
	end
    --Three of a kind.
	if cards contained in no particular order plus $seat's cards have 3 same second characters then
	$seat_dealend == 7;
	end
    --Two pair.
	if cards contained in no particular order plus $seat's cards have four cards with two different second characters then
	$seat_dealend == 8;
	end
	--Pair
	if cards contained in no particular order plus $seat's cards have two cards with two of the same second number then
	$seat_dealend == 9;
	end
	--High Card
	if cards contained in $seat's cards contain the highest number then
	$seat_dealend == 10;
	end

		
		
		
		
		
		
		
		
		
		
		
		
	