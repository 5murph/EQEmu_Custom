--Card random draws, depending on how many PCs are at the table more "decks" are added.
p_$seat = 0
--if 1-4 players are at the table, 2 decks are used.
if ($ptable <= 4) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 2) do
			$seat_$c1 == math.random(104)
			$seat_$c2 == math.random(104)
end
--if 5-8 players are at the table, 3 decks are used.
if ($ptable > 4) and ($ptable <= 8) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 2) do
			$seat_$c1 == math.random(156)
			$seat_$c2 == math.random(156)
end
--if 9-10 players are at the table, 4 decks are used.
if ($ptable >=9) and ($ptable <= 10) then
p_$seat+1
	while (p_$seat <= $ptable) do
		while ($cards <= 2) do
			$seat_$c1 == math.random(208)
			$seat_$c2 == math.random(208)
end

--Suits

SA == 1 
S2 == 2 
S3 == 3 
S4 == 4 
S5 == 5 
S6 == 6 
S7 == 7 
S8 == 8 
S9 == 9 
S10 == 10  
SJ  == 11 
SQ  == 12 
SK == 13 
CA  == 14 
C2  == 15 
C3  == 16 
C4  == 17 
C5  == 18 
C6  == 19 
C7  == 20 
C8  == 21 
C9  == 22 
C10 == 23  
CJ  == 24 
CQ  == 25 
CK == 26
HA == 27
H2 == 28
H3 == 29
H4 == 30
H5 == 31
H6 == 32
H7 == 33
H8 == 34
H9 == 35
H10 == 36
HJ == 37
HQ == 38
HK == 39
DA == 40
D2 == 41
D3 == 42
D4 == 43
D5 == 44
D6 == 45
D7 == 46
D8 == 47
D9 == 48
D10 == 49
DJ == 50
DQ == 51
DK == 52
