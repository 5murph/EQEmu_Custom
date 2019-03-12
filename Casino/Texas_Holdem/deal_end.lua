--dealend

--Poker hands from highest to lowest



if $seat_$c1 and $seat_$c2

    --Royal flush. A, K, Q, J, 10, all the same suit.
	if cards and $seat's hand == [s10, sj, sq, sk, sa] or [h10, hj, hq, hk, ha] or [d10, dj, dq, dk, da] or [c10, cj, cq, ck, ca] then
	$seat_dealend == 1;
    --Straight flush. Five cards in a sequence, all in the same suit.
	if cards and $seat's cards equal count with same letter then
	$seat_dealend == 2;
    --Four of a kind. All four cards of the same rank.
	if cards and $seat's cards have four of the same second character then
	$seat_dealend == 3;
    --Full house. Three of a kind with a pair.
	if cards and $seat's cards have 5 cards that contain 3 same numbers and 2 same numbers then
	$seat_dealend == 4;
    --Flush.
	if cards and $seat's cards have 5 cards of the same first letter then
	$seat_dealend == 5;\
    --Straight.
	if cards and $seat's cards have 5 cards in a count then
	$seat_dealend == 6;
    --Three of a kind.
	if cards and $seat's cards have 3 same second characters then
	$seat_dealend == 7;
    --Two pair.
	if cards and $seat's cards have four cards with two different second characters then
	$seat_dealend == 8;
	--Pair
	if cards and $seat's cards have two same second characters then
	$seat_dealend == 9;
	--High Card
	if cards contained in $seat's cards contain the highest number then
	$seat_dealend == 10;

end

