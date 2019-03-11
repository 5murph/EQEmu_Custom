--Card Flip

if ($ptable <= 4) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 5) do
			$cards == math.random(104);
end
--if 5-8 players are at the table, 3 decks are used.
if ($ptable > 4) and ($ptable <= 8) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 5) do
			$cards == math.random(156);
end
--if 9-10 players are at the table, 4 decks are used.
if ($ptable >=9) and ($ptable <= 10) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 5) do
			$cards == math.random(208);
end

