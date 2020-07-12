-- LUA Spell Scriber NPC Script for Custom Progression Server
-- Numbered for spell book slot scribing
-- www.darkonites.com / Discord: darkonites.com
-- Organized by expansion up to DoN, all classes
-- IDs from spells_new with names commented 
-- Listing Order/Expansion listings by Allakhazam
-- Pulled 2019.01.01
-- Version 1.0 Completed 2019.01.31
-- By Rudeboy88
-- Pro Tip: Use Notepad++ or Vim for easy mass formatting.

function event_say(e)
	if (e.message:findi("hail")) then
		e.other:UpdateTaskActivity(300, 0, 1);

		e.other:Message(315, "Greetings adventurer, if you would like me to [" .. eq.say_link("teach",false,"teach") .. "] you your spells or disciplines let me know.");
	end
	if (e.message:findi("teach")) then
		e.other:Message(315, "If you would like to train, let me know the areas you are currently adventuring in.  Please note I will only train you once every time you progress. Currently I can train you in the ways of [" .. eq.say_link("Classic",false,"Classic") .. "], [" .. eq.say_link("Kunark",false,"Kunark") .. "], [" .. eq.say_link("Velious",false,"Velious") .. "], [" .. eq.say_link("Luclin",false,"Luclin") .. "], [" .. eq.say_link("Planes",false,"Planes") .. "], [" .. eq.say_link("Ykesha",false,"Ykesha") .. "], [" .. eq.say_link("Dungeons",false,"Dungeons") .. "], [" .. eq.say_link("Gates",false,"Gates") .. "], or [" .. eq.say_link("Omens",false,"Omens") .. "].");
	end	
	if (e.other:GetClass() == 8) then	--brd
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
				--1
				e.other:ScribeSpell(700, 0);--'Chant of Battle', 
				--2
				e.other:ScribeSpell(703, 1);--'Chords of Dissonance', 
				--3
				--N/A
				--4
				e.other:ScribeSpell(720, 2);--'Lyssa\'s Locating Lyric'
				--5
				e.other:ScribeSpell(717, 3);--'Selo\'s Accelerando'
				--6
				e.other:ScribeSpell(7, 4);--'Hymn of Restoration'
				--7
				e.other:ScribeSpell(734, 5);--'Jonthan\'s Whistling Warsong'
				--8
				e.other:ScribeSpell(728, 6);--'Kelin\'s Lugubrious Lament'
				--9
				e.other:ScribeSpell(710, 7);--'Elemental Rhythms'
				--10
				e.other:ScribeSpell(701, 8);--'Anthem de Arms'
				--11
				e.other:ScribeSpell(708, 9);--'Cinda\'s Charismatic Carillon'
				--12
				e.other:ScribeSpell(704, 10);--'Brusco\'s Boastful Bellow'
				--13
				e.other:ScribeSpell(711, 11);--'Purifying Rhythms'
				--14
				e.other:ScribeSpell(737, 12);--'Lyssa\'s Cataloging Libretto'
				--15
				e.other:ScribeSpell(724, 13);--'Kelin\'s Lucid Lullaby'
				--16
				e.other:ScribeSpell(729, 14);--'Tarew\'s Aquatic Ayre'
				--17
				e.other:ScribeSpell(709, 15);--'Guardian Rhythms'
				--18
				e.other:ScribeSpell(730, 16);--'Denon\'s Disruptive Discord'
				--19
				e.other:ScribeSpell(719, 17);--'Shauri\'s Sonorous Clouding'
				--20
				e.other:ScribeSpell(705, 18);--'Largo\'s Melodic Binding'
				--21
				e.other:ScribeSpell(739, 19);--'Melanie\'s Mellifluous Motion'
				--22
				e.other:ScribeSpell(727, 20);--'Alenia\'s Disenchanting Melody', 
				--23
				e.other:ScribeSpell(738, 21);--'Selo\'s Consonant Chain', 
				--24
				e.other:ScribeSpell(735, 22);--'Lyssa\'s Veracious Concord', 
				--25
				e.other:ScribeSpell(712, 23);--'Psalm of Warmth', 
				--26
				e.other:ScribeSpell(706, 24);--'Angstlich\'s Appalling Screech', 
				--27
				e.other:ScribeSpell(725, 25);--'Solon\'s Song of the Sirens', 
				--28
				e.other:ScribeSpell(741, 26);--'Crission\'s Pixie Strike', 
				--29
				e.other:ScribeSpell(715, 27);--'Psalm of Vitality', 
				--30
				e.other:ScribeSpell(707, 28);--'Fufil\'s Curtailing Chant'
				--31
				e.other:ScribeSpell(718, 29);--'Agilmente\'s Aria of Eagles', 
				--32
				e.other:ScribeSpell(723, 30);--'Cassindra\'s Chorus of Clarity', 
				--33
				e.other:ScribeSpell(713, 31);--'Psalm of Cooling', 
				--34
				e.other:ScribeSpell(721, 32);--'Lyssa\'s Solidarity of Vision' Classic
				--35
				e.other:ScribeSpell(736, 33);--'Denon\'s Dissension', 
				--36
				e.other:ScribeSpell(740, 34);--'Vilia\'s Verses of Celerity', 
				--37
				e.other:ScribeSpell(716, 35);--'Psalm of Purty'
				--38
				e.other:ScribeSpell(743, 36);--'Tuyen\'s Chant of Flame'
				--39
				e.other:ScribeSpell(750, 37);--'Solon\'s Bewitching Bravura'
				--40
				e.other:ScribeSpell(726, 38);--'Syvelian\'s Anti-Magic Aria'
				--41
				e.other:ScribeSpell(714, 39);--'Psalm of Mystic Shielding'
				--42
				e.other:ScribeSpell(702, 40);--'McVaxius\' Berserker Crescendo' --Classic
				--43
				e.other:ScribeSpell(742, 41);--'Denon\'s Desperate Dirge'
				--44
				e.other:ScribeSpell(745, 42);--'Cassindra\'s Elegy'
				--45
				e.other:ScribeSpell(749, 43);--'Jonthan\'s Provocation'
				--46
				e.other:ScribeSpell(744, 44);--'Tuyen\'s Chant of Frost'
				--47
				e.other:ScribeSpell(748, 45);--'Niv\'s Melody of Preservation'
				--48
				e.other:ScribeSpell(746, 46);--'Selo\'s Chords of Cessation'
				--49
				--N/A
				--50
				e.other:ScribeSpell(747, 47);--'Verses of Victory'
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--51
				e.other:ScribeSpell(1750, 48);--'Selo\'s Song of Travel'
				e.other:ScribeSpell(1751, 49);--'Largo\'s Assonant Binding'
				--52
				e.other:ScribeSpell(1752, 50);--'Nillipus\' March of the Wee'
				--53
				e.other:ScribeSpell(1753, 51);--'Song of Twilight'
				e.other:ScribeSpell(1754, 52);--'Song of Dawn'
				--54
				e.other:ScribeSpell(1757, 53);--'Vilia\'s Chorus of Celerity'
				e.other:ScribeSpell(1758, 54);--'Selo\'s Assonant Strain'
				--55
				e.other:ScribeSpell(1747, 55);--'Brusco\'s Bombastic Bellow'
				e.other:ScribeSpell(1759, 56);--'Cantata of Replenishment'
				--56
				e.other:ScribeSpell(1755, 57);--'Song of Highsun'
				e.other:ScribeSpell(1756, 58);--'Song of Midnight'
				--57
				e.other:ScribeSpell(1760, 59);--'McVaxius\' Rousing Rondo'
				e.other:ScribeSpell(1761, 60);--'Cassindra\'s Insipid Ditty'
				--58
				e.other:ScribeSpell(1762, 61);--'Jonthan\'s Inspiration'
				e.other:ScribeSpell(1763, 62);--'Niv\'s Harmonic'
				--59
				e.other:ScribeSpell(1764, 63);--'Denon\'s Bereavement'
				e.other:ScribeSpell(1765, 64);--'Solon\'s Charismatic Concord'
				--60
				e.other:ScribeSpell(1748, 65);--'Angstlich\'s Assonance'
				e.other:ScribeSpell(1749, 66);--'Kazumi\'s Note of Preservation'
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--20
				e.other:ScribeSpell(1287, 67);--'Cassindra\'s Chant of Clarity', 
				--34
				e.other:ScribeSpell(1448, 68);--'Cantata of Soothing', 
				--49
				e.other:ScribeSpell(1450, 69);--'Shield of Songs'
				--50
				e.other:ScribeSpell(1449, 70);--'Melody of Ervaj'
				--55
				e.other:ScribeSpell(1451, 71);--'Occlusion of Sound'
				--60
				e.other:ScribeSpell(1196, 72);--'Ancient: Lcea\'s Lament'
				e.other:ScribeSpell(1452, 73);--'Composition of Ervaj'
			end  
		end 			 
		if (e.message:findi("luclin"))  then
				if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--9
				e.other:ScribeSpell(2601, 74);--'Magical Monologue', 
				--15
				e.other:ScribeSpell(2602, 75);--'Song of Sustenance', 
				--30
				e.other:ScribeSpell(2603, 76);--'Amplification'
				--39
				e.other:ScribeSpell(2604, 77);--'Katta\'s Song of Sword Dancing'
				--40
				e.other:ScribeSpell(868, 78);--'Sionachie\'s Dreams'
				--52
				e.other:ScribeSpell(2606, 79);--'Battlecry of the Vah Shir'
				--56
				e.other:ScribeSpell(2608, 80);--'Purifying Chorus'
				--57
				e.other:ScribeSpell(1100, 81);--'Dreams of Ayonae'
				--58
				e.other:ScribeSpell(2609, 82);--'Chorus of Replenishment'
				--59
				--60
				e.other:ScribeSpell(1197, 83);--'Ancient: Lullaby of Shadow'
				e.other:ScribeSpell(2610, 84);--'Warsong of the Vah Shir'
				e.other:ScribeSpell(2936, 85);--'Ervaj\'s Lost Composition'
				e.other:ScribeSpell(4210, 86);--'Fufil\'s Diminishing Dirge'
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--50
				e.other:ScribeSpell(3566, 87);--'Tuyen\'s Chant of Poison'
				--42
				e.other:ScribeSpell(3567, 88);--'Tuyen\'s Chant of Disease'
				--61
				e.other:ScribeSpell(3361, 89);--'Silent Song of Quellious'
				e.other:ScribeSpell(3363, 90);--'Tuyen\'s Chant of the Plague', 
				e.other:ScribeSpell(3366, 91);--'Saryrn\'s Scream of Pain'
				--62
				e.other:ScribeSpell(3030, 92);--'Dreams of Thule'
				e.other:ScribeSpell(3364, 93);--'Druzzil\'s Disillusionment'
				e.other:ScribeSpell(3365, 94);--'Melody of Mischief'
				e.other:ScribeSpell(3374, 95);--'Warsong of Zek'
				e.other:ScribeSpell(3651, 96);--'Wind of Marr'
				--63
				e.other:ScribeSpell(3368, 97);--'Psalm of Veeshan'
				e.other:ScribeSpell(3370, 98);--'Tuyen\'s Chant of Venom'
				e.other:ScribeSpell(3373, 99);--'Tuyen\'s Chant of Ice'
				--64
				e.other:ScribeSpell(3066, 100);--'Requiem of Time'
				e.other:ScribeSpell(3362, 101);--'Rizlona\'s Call of Flame'
				e.other:ScribeSpell(3369, 102);--'Dreams of Terris'
				e.other:ScribeSpell(3371, 103);--'Call of the Banshee'
				e.other:ScribeSpell(3372, 104);--'Chorus of Marr'
				--65
				e.other:ScribeSpell(3367, 105);--'Tuyen\'s Chant of Fire'
				e.other:ScribeSpell(3375, 106);--'Harmony of Sound'
				e.other:ScribeSpell(3376, 107);--'Lullaby of Morell'
				e.other:ScribeSpell(4112, 108);--'Call of the Muse'
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--45
				e.other:ScribeSpell(3682, 109);--'Aria of Asceticism'
				--49
				e.other:ScribeSpell(2605, 110);--'Selo\'s Accelerating Chorus'
				--52
				e.other:ScribeSpell(3681, 111);--'Aria of Innocence'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--25
				e.other:ScribeSpell(4395, 112);--'Selo\'s Rhythm of Speed', 
				--45
				e.other:ScribeSpell(4083, 113);--'Rizlona\'s Embers'
				--53
				e.other:ScribeSpell(4084, 114);--'Rizlona\'s Fire'
				--54
				e.other:ScribeSpell(2607, 115);--'Elemental Chorus'
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4871, 116);--'War March of the Mastruq'
				e.other:ScribeSpell(4872, 117);--'Echo of the Trusik'
				e.other:ScribeSpell(4873, 118);--'Dark Echo'
				e.other:ScribeSpell(4971, 119);--'Ancient: Chaos Chant'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5370, 120);--'Luvwen\'s Aria of Serenity'
				e.other:ScribeSpell(5371, 121);--'Vulka\'s Chant of Disease'
				e.other:ScribeSpell(5372, 122);--'Bellow of Chaos'
				--67
				e.other:ScribeSpell(5373, 123);--'Luvwen\'s Lullaby'
				e.other:ScribeSpell(5375, 124);--'Zuriki\'s Song of Shenanigans'
				e.other:ScribeSpell(5377, 125);--'Cantata of Life'
				e.other:ScribeSpell(5379, 126);--'Vulka\'s Chant of Frost'
				e.other:ScribeSpell(7002, 127);--'Angstlich\'s Wail of Panic'
				--68
				e.other:ScribeSpell(5376, 128);--'War March of Muram'
				e.other:ScribeSpell(5378, 129);--'Vulka\'s Chant of Poison'
				e.other:ScribeSpell(5380, 130);--'Yelhun\'s Mystic Call'
				e.other:ScribeSpell(5381, 131);--'Dirge of Metala'
				e.other:ScribeSpell(8031, 132);--'Creeping Dreams'
				--69
				e.other:ScribeSpell(5374, 133);--'Verse of Vesagran'
				e.other:ScribeSpell(5382, 134);--'Eriki\'s Psalm of Power'
				e.other:ScribeSpell(5384, 135);--'Chorus of Life'
				e.other:ScribeSpell(8030, 136);--'Thousand Blades'
				--70
				e.other:ScribeSpell(5383, 137);--'Voice of the Vampire'
				e.other:ScribeSpell(5385, 138);--'Vulka\'s Chant of Flame'
				e.other:ScribeSpell(5387, 139);--'Vulka\'s Lullaby'
				e.other:ScribeSpell(5388, 140);--'Ancient: Call of Power'
				e.other:ScribeSpell(8486, 141);--'Arcane Aria'
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--61
				e.other:ScribeSpell(6734, 142);--'Song of the Storm' 
				--62
				e.other:ScribeSpell(7001, 143);--'Angstlich\'s Echo of Terror' 
				--69
				e.other:ScribeSpell(6666, 144);--'Storm Blade'
				
				-- :Later
				--4085, 145);--'Forpar\'s Aria of Affliction'
				--4086, 146);--'Forpar\'s Psalm of Pain'
				--4087, 147);--'Forpar\'s Verse of Venom'
				--8926, 148);--'Aura of Insight'
				--8488, 149);--'Aura of the Muse'
				--10401, 150);--'Whispersong of Veshma'
				--10402, 151);--'Whispersong of Veshma Rk. II'
				--10403, 152);--'Whispersong of Veshma Rk. III'
				--10413, 153);--'Aelfric\'s Last Lullaby'
				--10414, 154);--'Aelfric\'s Last Lullaby Rk. II'
				--10415, 155);--'Aelfric\'s Last Lullaby Rk. III'
				--10419, 156);--'Erollisi\'s Cantata' 
				--10420, 157);--'Erollisi\'s Cantata Rk. II'
				--10421, 158);--'Erollisi\'s Cantata Rk. III'
				--10425, 159);--'Ervaj\'s Defensive Refrain'
				--10426, 160);--'Ervaj\'s Defensive Refrain Rk. II'
				--10427, 161);--'Ervaj\'s Defensive Refrain Rk. III'
				--10431, 162);--'Weshlu\'s Chillsong Aria'
				--10432, 163);--'Weshlu\'s Chillsong Aria Rk. II'
				--10433, 164);--'Weshlu\'s Chillsong Aria Rk. III'
				--10434, 165);--'Fermata of Preservation'
				--10435, 166);--'Fermata of Preservation Rk. II'
				--10436, 167);--'Fermata of Preservation Rk. III'
				--10437, 168);--'Song of the Dryads'
				--10438, 169);--'Song of the Dryads Rk. II'
				--10439, 170);--'Song of the Dryads Rk. III'
				--10440, 171);--'Performer\'s Psalm of Pyrotechnics'
				--10441, 172);--'Performer\'s Psalm of Pyrotechnics Rk. II'
				--10442, 173);--'Performer\'s Psalm of Pyrotechnics Rk. III'
				--10443, 174);--'Erollisi\'s Chorus'
				--10444, 175);--'Erollisi\'s Chorus Rk. II'
				--10445, 176);--'Erollisi\'s Chorus Rk. III'
				--10446, 177);--'Minohten\'s Purifying Panpipes'
				--10447, 178);--'Minohten\'s Purifying Panpipes Rk. II'
				--10448, 179);--'Minohten\'s Purifying Panpipes Rk. III'
				--10449, 180);--'Beckon of the Tuffein'
				--10450, 181);--'Beckon of the Tuffein Rk. II'
				--10451, 182);--'Beckon of the Tuffein Rk. III'
				--10455, 183);--'Queen Eletyl\'s Screech'
				--10456, 184);--'Queen Eletyl\'s Screech Rk. II'
				--10457, 185);--'Queen Eletyl\'s Screech Rk. III'
				--10458, 186);--'Staccato Rhythms'
				--10459, 187);--'Staccato Rhythms Rk. II'
				--10460, 188);--'Staccato Rhythms Rk. III'
				--10461, 189);--'Veshma\'s Lively Crescendo'
				--10462, 190);--'Veshma\'s Lively Crescendo Rk. II'
				--10463, 191);--'Veshma\'s Lively Crescendo Rk. III'
				--10467, 192);--'Denon\'s Dirge of Destruction'
				--10468, 193);--'Denon\'s Dirge of Destruction Rk. II'
				--10469, 194);--'Denon\'s Dirge of Destruction Rk. III'
				--11873, 195);--'Jonthan\'s Mightful Caretaker'
				--11874, 196);--'Jonthan\'s Mightful Caretaker Rk. II'
				--11875, 197);--'Jonthan\'s Mightful Caretaker Rk. III'
				--11876, 198);--'Staccato Cadence'
				--11877, 199);--'Staccato Cadence Rk. II'
				--11878, 200);--'Staccato Cadence Rk. III'
				--11879, 201);--'Aviak\'s Wondrous Warble'
				--11880, 202);--'Aviak\'s Wondrous Warble Rk. II'
				--11881, 203);--'Aviak\'s Wondrous Warble Rk. III'
				--22486, 204);--'Chant of Magic'
				--22487, 205);--'Chant of Flame'
				--22488, 206);--'Chant of Frost'
				--22489, 207);--'Chant of Venom'
				--22490, 208);--'Chant of Plague'
				--22491, 209);--'Chant of Chaos'
			end 	
		end 
	end
	if (e.other:GetClass() == 15) then --bst
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(5011, 0);--'Salve', 
			--2
			e.other:ScribeSpell(238, 1);--'Sense Animals'
			--3
			e.other:ScribeSpell(225, 2);--'Endure Cold'
			--4
			e.other:ScribeSpell(213, 3);--'Cure Disease' 
			--5
			e.other:ScribeSpell(201, 4);--'Flash of Light'
			--6
			e.other:ScribeSpell(200, 5);--'Minor Healing'
			--7
			e.other:ScribeSpell(267, 6);--'Inner Fire'
			--8
			e.other:ScribeSpell(2612, 7);--'Spirit of Sharik'
			--9
			e.other:ScribeSpell(224, 8);--'Endure Fire'
			e.other:ScribeSpell(2611, 9);--'Sharik\'s Replenishing'
			--10
			e.other:ScribeSpell(274, 10);--'Scale Skin'
			--11
			e.other:ScribeSpell(271, 11);--'Fleeting Fury'
			--12
			e.other:ScribeSpell(2068, 12);--'Blast of Frost'
			--13
			e.other:ScribeSpell(203, 13);--'Cure Poison'
			e.other:ScribeSpell(2635, 14);--'Spirit of Lightning'
			--14
			e.other:ScribeSpell(40, 15);--'Strengthen'
			e.other:ScribeSpell(75, 16);--'Sicken'
			--15
			e.other:ScribeSpell(2613, 17);--'Keshuval\'s Rejuvenation'
			e.other:ScribeSpell(2633, 18);--'Spirit of Khaliz'
			--16
			e.other:ScribeSpell(276, 19);--'Serpent Sight'
			--17
			e.other:ScribeSpell(211, 20);--'Summon Drink' 
			e.other:ScribeSpell(279, 21);--'Spirit of Bear'
			--18
			e.other:ScribeSpell(17, 22);--'Light Healing'
			e.other:ScribeSpell(227, 23);--'Endure Poison'
			e.other:ScribeSpell(2636, 24);--'Spirit of the Blizzard'
			--19
			e.other:ScribeSpell(277, 25);--'Tainted Breath'
			--20
			e.other:ScribeSpell(270, 26);--'Drowsy'
			--21
			e.other:ScribeSpell(2614, 27);--'Spirit of Keshuval'
			--22
			e.other:ScribeSpell(226, 28);--'Endure Disease'
			--23
			e.other:ScribeSpell(345, 29);--'Shrink'
			--24
			e.other:ScribeSpell(278, 30);--'Spirit of Wolf'
			--25
			e.other:ScribeSpell(86, 31);--'Enduring Breath'
			--26
			e.other:ScribeSpell(282, 32);--'Spirit Strike'
			e.other:ScribeSpell(283, 33);--'Turtle Skin'
			--27
			e.other:ScribeSpell(2615, 34);--'Herikol\'s Soothing'
			--28
			e.other:ScribeSpell(12, 35);--'Healing'
			e.other:ScribeSpell(147, 36);--'Spirit Strength'
			e.other:ScribeSpell(2637, 37);--'Spirit of Inferno'
			--29
			e.other:ScribeSpell(50, 38);--'Summon Food'
			e.other:ScribeSpell(79, 39);--'Spirit Sight'
			--30
			e.other:ScribeSpell(2616, 40);--'Spirit of Herikol'
			--31
			--N/A
			--32
			e.other:ScribeSpell(261, 41);--'Levitate'
			--33
			--N/A
			--34
			e.other:ScribeSpell(228, 42);--'Endure Magic'
			--35
			e.other:ScribeSpell(434, 43);--'Envenomed Breath'
			e.other:ScribeSpell(48, 44);--'Cancel Magic'
			--36
			e.other:ScribeSpell(2617, 45);--'Yekan\'s Recovery'
			--37
			e.other:ScribeSpell(149, 46);--'Spirit of Ox'
			e.other:ScribeSpell(2619, 47);--'Yekan\'s Quickening'
			--38
			e.other:ScribeSpell(146, 48);--'Spirit of Monkey'
			e.other:ScribeSpell(15, 49);--'Greater Healing'
			e.other:ScribeSpell(2638, 50);--'Spirit of the Scorpion'
			--39
			e.other:ScribeSpell(2618, 51);--'Spirit of Yekan'
			--40
			--N/A
			--41
			e.other:ScribeSpell(151, 52);--'Raging Strength'
			e.other:ScribeSpell(2176, 53);--'Spiritual Light'
			--42
			e.other:ScribeSpell(2178, 54);--'Spiritual Brawn'
			--43
			e.other:ScribeSpell(42, 55);--'Invisibility'
			--44
			e.other:ScribeSpell(162, 56);--'Listless Power'
			--45
			e.other:ScribeSpell(96, 57);--'Counteract Disease'
			--46
			e.other:ScribeSpell(2621, 58);--'Spirit of Kashek'
			--47
			e.other:ScribeSpell(308, 59);--'Frenzy'
			--48
			e.other:ScribeSpell(649, 60);--'Protect'
			e.other:ScribeSpell(6874, 61);--'Spirit Salve'
			--49
			e.other:ScribeSpell(2620, 62);--'Vigor of Zehkes'
			--50
			--N/A
		end 
		 if (e.message:findi("kunark")) then 
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--51
				e.other:ScribeSpell(46, 63);--'Ultravision'
				e.other:ScribeSpell(63, 64);--'Resist Disease'
				--52
				e.other:ScribeSpell(161, 65);--'Health'
				e.other:ScribeSpell(435, 66);--'Venom of the Snake'
				e.other:ScribeSpell(2622, 67);--'Aid of Khurenz'
				--53
				e.other:ScribeSpell(152, 68);--'Deftness'
				e.other:ScribeSpell(167, 69);--'Talisman of Tnarg'
				e.other:ScribeSpell(2641, 70);--'Spirit of the Storm'
				--54
				e.other:ScribeSpell(153, 71);--'Furious Strength' 
				e.other:ScribeSpell(2623, 72);--'Spirit of Omakin'
				e.other:ScribeSpell(2890, 73);--'Spirit of Snow', 
				e.other:ScribeSpell(62, 74);--'Resist Poison'
				--55
				e.other:ScribeSpell(145, 75);--'Chloroplast'
				e.other:ScribeSpell(2624, 76);--'Sha\'s Restoration'
				e.other:ScribeSpell(2625, 77);--'Omakin\'s Alacrity'
				--56
				e.other:ScribeSpell(163, 78);--'Incapacitate'
				e.other:ScribeSpell(2626, 79);--'Spirit of Zehkes'
				e.other:ScribeSpell(2888, 80);--'Spirit of Flame'
				e.other:ScribeSpell(431, 81);--'Shifting Shield'
				--57
				e.other:ScribeSpell(157, 82);--'Dexterity'
				e.other:ScribeSpell(158, 83);--'Stamina'
				--58
				e.other:ScribeSpell(168, 84);--'Talisman of Altuna'
				e.other:ScribeSpell(2627, 85);--'Spirit of Khurenz'
				e.other:ScribeSpell(49, 86);--'Nullify Magic'
				--59
				e.other:ScribeSpell(2628, 87);--'Sha\'s Ferocity'
				e.other:ScribeSpell(510, 88);--'Blizzard Blast'
				--60
				e.other:ScribeSpell(170, 89);--'Alacrity'
				e.other:ScribeSpell(2631, 90);--'Spirit of Khati Sha', 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--19
				e.other:ScribeSpell(1285, 91);--'Summon Companion', 
				--59
				e.other:ScribeSpell(1290, 92);--'Chloroblast', 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--N/A until 50
				--50
				e.other:ScribeSpell(2634, 93);--'Sha\'s Lethargy'
				--51
				e.other:ScribeSpell(2640, 94);--'Spirit of Wind'
				--52
				e.other:ScribeSpell(2177, 95);--'Spiritual Radiance'
				--59
				e.other:ScribeSpell(2629, 96);--'Spiritual Purity', 
				--60
				e.other:ScribeSpell(2630, 97);--'Spiritual Strength', 
				e.other:ScribeSpell(2941, 98);--'Savagery', 
				e.other:ScribeSpell(2942, 99);--'Sha\'s Advantage', 
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--19
				e.other:ScribeSpell(3583, 100);--'Tiny Companion', 
				--33
				e.other:ScribeSpell(3568, 101);--'Ice Spear', 
				--47
				e.other:ScribeSpell(3569, 102);--'Frost Shard', 
				--54
				e.other:ScribeSpell(3570, 103);--'Ice Shard', 
				--61
				e.other:ScribeSpell(1526, 104);--'Annul Magic', 
				e.other:ScribeSpell(1571, 105);--'Talisman of Shadoo'
				e.other:ScribeSpell(3454, 106);--'Infusion of Spirit'
				e.other:ScribeSpell(3455, 107);--'Healing of Sorsha'
				e.other:ScribeSpell(3492, 108);--'Scorpion Venom'
				e.other:ScribeSpell(95, 109);--'Counteract Poison'
				--62
				e.other:ScribeSpell(1585, 110);--'Talisman of Kragg'
				e.other:ScribeSpell(3456, 111);--'Spiritual Vigor', 
				e.other:ScribeSpell(3457, 112);--'Spirit of Arag', 
				--63
				e.other:ScribeSpell(1570, 113);--'Talisman of Jasinth'
				e.other:ScribeSpell(171, 114);--'Celerity'
				e.other:ScribeSpell(3458, 115);--'Arag\'s Celerity'
				e.other:ScribeSpell(3459, 116);--'Spirit of Rellic'
				e.other:ScribeSpell(3493, 117);--'Frost Spear'
				e.other:ScribeSpell(98, 118);--'Abolish Disease'
				--64
				e.other:ScribeSpell(1568, 119);--'Regrowth', 
				e.other:ScribeSpell(3460, 120);--'Spiritual Dominion', 
				e.other:ScribeSpell(3461, 121);--'Spirit of Sorsha', 
				--65
				e.other:ScribeSpell(32, 122);--'Plague'
				e.other:ScribeSpell(1575, 123);--'Acumen', 
				e.other:ScribeSpell(3462, 124);--'Sha\'s Revenge', 
				e.other:ScribeSpell(3463, 125);--'Ferocity', 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--40
				e.other:ScribeSpell(3689, 126);--'Malaria' LoY
				--52
				e.other:ScribeSpell(3690, 127);--'Bond of the Wild'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--39
				e.other:ScribeSpell(4054, 128);--'Spirit of the Shrew'LDoN
				--44
				e.other:ScribeSpell(4055, 129);--'Pack Shrew', 
				--49
				e.other:ScribeSpell(4079, 130);--'Ward of Calliav', 
				--58
				e.other:ScribeSpell(4080, 131);--'Guard of Calliav', 
				--64
				e.other:ScribeSpell(4081, 132);--'Protection of Calliav', 
				

			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4874, 133);--'Turepta Blood', 
				e.other:ScribeSpell(2639, 134);--'Spirit of Vermin', 
				e.other:ScribeSpell(4875, 135);--'Trushar\'s Mending', 
				e.other:ScribeSpell(4876, 136);--'Trushar\'s Frost', 
				e.other:ScribeSpell(4972, 137);--'Ancient: Frozen Chaos', 
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5526, 138);--'Healing of Mikkily'
				e.other:ScribeSpell(5527, 139);--'Chimera Blood'
				--67
				e.other:ScribeSpell(5528, 140);--'Muada\'s Mending'
				e.other:ScribeSpell(5529, 141);--'Focus of Alladnu'
				e.other:ScribeSpell(5530, 142);--'Spiritual Vitality'
				--68
				e.other:ScribeSpell(5531, 143);--'Spirit of Alladnu'
				e.other:ScribeSpell(5533, 144);--'Growl of the Beast'
				e.other:ScribeSpell(5534, 145);--'Spirit of Irionu'
				--69
				e.other:ScribeSpell(5535, 146);--'Glacier Spear'
				e.other:ScribeSpell(5536, 147);--'Feral Vigor'
				e.other:ScribeSpell(5537, 148);--'Spiritual Ascendance'
				e.other:ScribeSpell(5539, 149);--'Feral Guard'
				e.other:ScribeSpell(8233, 150);--'Empathic Fury'
				--70
				e.other:ScribeSpell(5538, 151);--'Spirit of Rashara'
				e.other:ScribeSpell(5540, 152);--'Festering Malady'
				e.other:ScribeSpell(5542, 153);--'Ferocity of Irionu'
				e.other:ScribeSpell(5543, 154);--'Ancient: Savage Ice'
				e.other:ScribeSpell(6828, 155);--'Sha\'s Legacy'
			end  
		end			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--61
				e.other:ScribeSpell(6740, 156);--'Growl of the Leopard'
				--69
				e.other:ScribeSpell(6672, 157);--'Growl of the Panther'
				
				-- :Later
				--21399, 158);--'Eradicate Disease'
				--8021, 159);--'Bestial Empathy'
				--8782, 160);--'Rake'
				--8783, 161);--'Spirit of Oroshar'
				--10321, 162);--'Healing of Uluanes'
				--10322, 163);--'Healing of Uluanes Rk. II'
				--10323, 164);--'Healing of Uluanes Rk. III'
				--10324, 165);--'Diregriffon\'s Bite'
				--10325, 166);--'Diregriffon\'s Bite Rk. II'
				--10326, 167);--'Diregriffon\'s Bite Rk. III'
				--10336, 168);--'Focus of Amilan'
				--10337, 169);--'Focus of Amilan Rk. II'
				--10338, 170);--'Focus of Amilan Rk. III'
				--10373, 171);--'Mammoth-Hide Guard'
				--10374, 172);--'Mammoth-Hide Guard Rk. II'
				--10375, 173);--'Mammoth-Hide Guard Rk. III'
				--10333, 174);--'Minohten Mending'
				--10334, 175);--'Minohten Mending Rk. II'
				--10335, 176);--'Minohten Mending Rk. III'
				--10339, 177);--'Spiritual Vim'
				--10340, 178);--'Spiritual Vim Rk. II'
				--10341, 179);--'Spiritual Vim Rk. III'
				--10380, 180);--'Fever Spike'
				--10381, 181);--'Fever Spike Rk. II'
				--10382, 182);--'Fever Spike Rk. III'
				--10342, 183);--'Promised Mending'
				--10343, 184);--'Promised Mending Rk. II'
				--10344, 185);--'Promised Mending Rk. III'
				--10349, 186);--'Unparalleled Voracity'
				--10350, 187);--'Unparalleled Voracity Rk. II'
				--10351, 188);--'Unparalleled Voracity Rk. III'
				--10379, 189);--'Spirit of Uluanes'
				--10386, 190);--'Bite of the Empress'
				--10387, 191);--'Bite of the Empress Rk. II'
				--10388, 192);--'Bite of the Empress Rk. III'
				--10352, 193);--'Spirit of Lairn'
				--10353, 194);--'Spirit of Lairn Rk. II'
				--10354, 195);--'Spirit of Lairn Rk. III'
				--10364, 196);--'Spiked Sleet'
				--10365, 197);--'Spiked Sleet Rk. II'
				--10366, 198);--'Spiked Sleet Rk. III'
				--10370, 199);--'Spiritual Enlightenment'
				--10371, 200);--'Spiritual Enlightenment Rk. II'
				--10372, 201);--'Spiritual Enlightenment Rk. III'
				--10358, 202);--'Steeltrap Jaws'
				--10359, 203);--'Steeltrap Jaws Rk. II'
				--10360, 204);--'Steeltrap Jaws Rk. III'
				--10383, 205);--'Ruthless Ferocity'
				--10384, 206);--'Ruthless Ferocity Rk. II'
				--10385, 207);--'Ruthless Ferocity Rk. III'
				--10392, 208);--'Spellbreaker\'s Guard'
				--10393, 209);--'Spellbreaker\'s Guard Rk. II'
				--10394, 210);--'Spellbreaker\'s Guard Rk. III'
				--11869, 211);--'Bark at the Moon'
				--11870, 212);--'Bark at the Moon Rk. II'
				--11871, 213);--'Bark at the Moon Rk. III'
				--11872, 214);--'Howling at the Moon'
				--11933, 215);--'Bark at the Moon Call'
				--11934, 216);--'Bark at the Moon Call Rk. II'
				--11935, 217);--'Bark at the Moon Call Rk. III'
			end 
		end 
	end
	if (e.other:GetClass() == 2) then --clr
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
				--1
				e.other:ScribeSpell(11, 0);--'Holy Armor'
				e.other:ScribeSpell(14, 1);--'Strike'
				e.other:ScribeSpell(200, 2);--'Minor Healing' 
				e.other:ScribeSpell(201, 3);--'Flash of Light'
				e.other:ScribeSpell(202, 4);--'Courage'
				e.other:ScribeSpell(203, 5);--'Cure Poison'
				e.other:ScribeSpell(205, 6);--'True North'
				e.other:ScribeSpell(207, 7);--'Divine Aura'
				e.other:ScribeSpell(208, 8);--'Lull'
				e.other:ScribeSpell(209, 9);--'Spook the Dead'
				e.other:ScribeSpell(210, 10);--'Yaulp'
				--2
				e.other:ScribeSpell(215, 11);--'Reckless Strength'
				e.other:ScribeSpell(216, 12);--'Stun'
				--3
				e.other:ScribeSpell(211, 13);--'Summon Drink'
				e.other:ScribeSpell(212, 14);--'Cure Blindness'
				--4
				e.other:ScribeSpell(17, 15);--'Light Healing', 
				e.other:ScribeSpell(213, 16);--'Cure Disease' 
				e.other:ScribeSpell(218, 17);--'Ward Undead'
				--5
				e.other:ScribeSpell(36, 18);--'Gate'
				e.other:ScribeSpell(501, 19);--'Soothe'
				e.other:ScribeSpell(560, 20);--'Furor'
				--6
				e.other:ScribeSpell(227, 21);--'Endure Poison'
				e.other:ScribeSpell(229, 22);--'Fear'
				--7
				e.other:ScribeSpell(219, 23);--'Center'
				e.other:ScribeSpell(223, 24);--'Hammer of Wrath'
				e.other:ScribeSpell(230, 25);--'Root'
				--8
				e.other:ScribeSpell(224, 26);--'Endure Fire'
				e.other:ScribeSpell(50, 27);--'Summon Food'
				--9
				e.other:ScribeSpell(221, 28);--'Sense the Dead'
				e.other:ScribeSpell(231, 29);--'Word of Pain'
				--10
				e.other:ScribeSpell(12, 30);--'Healing'
				e.other:ScribeSpell(35, 31);--'Bind Affinity', 
				--11
				e.other:ScribeSpell(226, 32);--'Endure Disease'
				e.other:ScribeSpell(235, 33);--'Invisibility versus Undead'
				e.other:ScribeSpell(485, 34);--'Symbol of Transal'
				--12
				e.other:ScribeSpell(2168, 35);--'Reanimation'
				e.other:ScribeSpell(232, 36);--'Sense Summoned'
				e.other:ScribeSpell(234, 37);--'Halo of Light'
				--13
				e.other:ScribeSpell(225, 38);--'Endure Cold'
				e.other:ScribeSpell(233, 39);--'Expulse Undead'
				e.other:ScribeSpell(48, 40);--'Cancel Magic' 
				--14
				e.other:ScribeSpell(16, 41);--'Smite'
				--15
				e.other:ScribeSpell(368, 42);--'Spirit Armor'
				e.other:ScribeSpell(47, 43);--'Calm'
				--16
				e.other:ScribeSpell(123, 44);--'Holy Might'
				e.other:ScribeSpell(228, 45);--'Endure Magic'
				e.other:ScribeSpell(43, 46);--'Yaulp II'
				--17
				e.other:ScribeSpell(248, 47);--'Ward Summoned'
				e.other:ScribeSpell(89, 48);--'Daring'
				--18
				e.other:ScribeSpell(2169, 49);--'Reconstitution'
				--19
				e.other:ScribeSpell(413, 50);--'Word of Shadow' 
				--20
				e.other:ScribeSpell(15, 51);--'Greater Healing'
				e.other:ScribeSpell(37, 52);--'Hammer of Striking'
				--21
				e.other:ScribeSpell(126, 53);--'Inspire Fear'
				e.other:ScribeSpell(128, 54);--'Wave of Fear'
				e.other:ScribeSpell(486, 55);--'Symbol of Ryltan'
				--22
				e.other:ScribeSpell(2170, 56);--'Reparation'
				e.other:ScribeSpell(244, 57);--'Bravery'
				e.other:ScribeSpell(95, 58);--'Counteract Poison'
				--23
				e.other:ScribeSpell(117, 59);--'Dismiss Undead'
				--24
				--N/A
				--25
				e.other:ScribeSpell(18, 60);--'Guard'
				--26
				e.other:ScribeSpell(414, 61);--'Word of Spirit'
				e.other:ScribeSpell(59, 62);--'Panic the Dead'
				--27
				e.other:ScribeSpell(131, 63);--'Instill'
				e.other:ScribeSpell(391, 64);--'Revive'
				e.other:ScribeSpell(663, 65);--'Expulse Summoned'
				--28
				e.other:ScribeSpell(52, 66);--'Abundant Drink'
				e.other:ScribeSpell(96, 67);--'Counteract Disease'
				--29
				e.other:ScribeSpell(130, 68);--'Divine Barrier'
				e.other:ScribeSpell(1798, 69);--'Imbue Opal'
				e.other:ScribeSpell(1799, 70);--'Imbue Topaz'
				e.other:ScribeSpell(1800, 71);--'Imbue Plains Pebble'
				e.other:ScribeSpell(1885, 72);--'Imbue Amber'
				e.other:ScribeSpell(1886, 73);--'Imbue Sapphire'
				e.other:ScribeSpell(1887, 74);--'Imbue Ruby'
				e.other:ScribeSpell(1888, 75);--'Imbue Emerald'
				e.other:ScribeSpell(1894, 76);--'Imbue Black Pearl'
				e.other:ScribeSpell(1895, 77);--'Imbue Diamond'
				e.other:ScribeSpell(1896, 78);--'Imbue Rose Quartz'
				e.other:ScribeSpell(1897, 79);--'Imbue Black Sapphire'
				e.other:ScribeSpell(1898, 80);--'Imbue Peridot'
				e.other:ScribeSpell(329, 81);--'Wrath'
				--30
				e.other:ScribeSpell(135, 82);--'Word of Health'
				e.other:ScribeSpell(62, 83);--'Resist Poison'
				e.other:ScribeSpell(9, 84);--'Superior Healing'
				--31
				e.other:ScribeSpell(124, 85);--'Force'
				e.other:ScribeSpell(487, 86);--'Symbol of Pinzarn'
				e.other:ScribeSpell(504, 87);--'Frenzied Strength'
				--32
				e.other:ScribeSpell(2171, 88);--'Renewal'
				e.other:ScribeSpell(312, 89);--'Valor'
				e.other:ScribeSpell(480, 90);--'Atone'
				--33
				e.other:ScribeSpell(53, 91);--'Abundant Food'
				e.other:ScribeSpell(60, 92);--'Resist Fire'
				e.other:ScribeSpell(662, 93);--'Expel Undead'
				--34
				e.other:ScribeSpell(134, 94);--'Blinding Luminance'
				e.other:ScribeSpell(405, 95);--'Tremor'
				--35
				e.other:ScribeSpell(19, 96);--'Armor of Faith',
				--36
				e.other:ScribeSpell(127, 97);--'Invoke Fear'
				e.other:ScribeSpell(45, 98);--'Pacify'
				e.other:ScribeSpell(63, 99);--'Resist Disease'
				--37
				e.other:ScribeSpell(115, 100);--'Dismiss Summoned'
				e.other:ScribeSpell(388, 101);--'Resuscitate'
				--38
				e.other:ScribeSpell(49, 102);--'Nullify Magic'
				e.other:ScribeSpell(61, 103);--'Resist Cold'
				--39
				e.other:ScribeSpell(13, 104);--'Complete Heal'
				e.other:ScribeSpell(415, 105);--'Word of Souls'
				--40
				e.other:ScribeSpell(675, 106);--'Hammer of Requital' 
				--41
				e.other:ScribeSpell(44, 107);--'Yaulp III'
				e.other:ScribeSpell(488, 108);--'Symbol of Naltron'
				--42
				e.other:ScribeSpell(2172, 109);--'Restoration'
				e.other:ScribeSpell(314, 110);--'Resolution'
				--43
				e.other:ScribeSpell(118, 111);--'Banish Undead'
				e.other:ScribeSpell(64, 112);--'Resist Magic'
				--44
				e.other:ScribeSpell(406, 113);--'Earthquake'
				e.other:ScribeSpell(672, 114);--'Retribution'
				--45
				e.other:ScribeSpell(136, 115);--'Word of Healing'
				e.other:ScribeSpell(20, 116);--'Shield of Words'
				e.other:ScribeSpell(6875, 117);--'Healing Light'
				--46
				e.other:ScribeSpell(125, 118);--'Sound of Force'
				e.other:ScribeSpell(132, 119);--'Immobilize'
				--47
				e.other:ScribeSpell(392, 120);--'Resurrection'
				e.other:ScribeSpell(664, 121);--'Expel Summoned'
				--48
				e.other:ScribeSpell(97, 122);--'Abolish Poison'
				--49
				e.other:ScribeSpell(416, 123);--'Word Divine'
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--51
				e.other:ScribeSpell(1518, 124);--'Remedy'
				e.other:ScribeSpell(1532, 125);--'Dread of Night'
				e.other:ScribeSpell(1547, 126);--'Death Pact'
				e.other:ScribeSpell(1726, 127);--'Sunskin'
				--52
				e.other:ScribeSpell(1520, 128);--'Word of Vigor'
				e.other:ScribeSpell(1533, 129);--'Heroism'
				e.other:ScribeSpell(1536, 130);--'Heroic Bond'
				e.other:ScribeSpell(1538, 131);--'Heroic Bond'
				e.other:ScribeSpell(1542, 132);--'Upheaval'
				--53
				e.other:ScribeSpell(1519, 133);--'Divine Light'
				e.other:ScribeSpell(1526, 134);--'Annul Magic'
				e.other:ScribeSpell(1534, 135);--'Yaulp IV'
				--54
				e.other:ScribeSpell(1535, 136);--'Symbol of Marzin'
				e.other:ScribeSpell(1543, 137);--'Reckoning'
				e.other:ScribeSpell(1721, 138);--'Unswerving Hammer of Faith'
				--55
				e.other:ScribeSpell(1528, 139);--'Exile Undead'
				e.other:ScribeSpell(1539, 140);--'Fortitude'
				e.other:ScribeSpell(1541, 141);--'Wake of Tranquility'
				--56
				e.other:ScribeSpell(116, 142);--'Banish Summoned'
				e.other:ScribeSpell(133, 143);--'Paralyzing Earth'
				e.other:ScribeSpell(1524, 144);--'Reviviscence'
				e.other:ScribeSpell(1548, 145);--'Mark of Karn'
				--57
				e.other:ScribeSpell(1521, 146);--'Word of Restoration'
				e.other:ScribeSpell(1527, 147);--'Trepidation'
				e.other:ScribeSpell(1537, 148);--'Bulwark of Faith'
				e.other:ScribeSpell(1540, 149);--'Aegis'
				--58
				e.other:ScribeSpell(1525, 150);--'Antidote'
				e.other:ScribeSpell(1544, 151);--'Enforced Reverence'
				e.other:ScribeSpell(1774, 152);--'Naltron\'s Mark'
				--59
				e.other:ScribeSpell(1522, 153);--'Celestial Elixir'
				e.other:ScribeSpell(1545, 154);--'The Unspoken Word'
				--60 
				e.other:ScribeSpell(1523, 155);--'Word of Redemption'
				e.other:ScribeSpell(1530, 156);--'Banishment of Shadows'
				e.other:ScribeSpell(1546, 157);--'Divine Intervention'
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--34
				e.other:ScribeSpell(1445, 158);--'Armor of Protection'
				--37
				e.other:ScribeSpell(1443, 159);--'Turning of the Unnatural'
				--44
				e.other:ScribeSpell(1444, 160);--'Celestial Healing'
				--48
				e.other:ScribeSpell(1411, 161);--'Improved Invisibility to Undead'
				--55
				e.other:ScribeSpell(1446, 162);--'Stun Command'
				--60
				e.other:ScribeSpell(1447, 163);--'Aegolism'
				e.other:ScribeSpell(2109, 164);--'Ancient: High Priest\'s Bulwark'
				e.other:ScribeSpell(2122, 165);--'Ancient: Gift of Aegolism'
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--6
				e.other:ScribeSpell(2501, 166);--'Sanctuary'
				--19
				e.other:ScribeSpell(2502, 167);--'Celestial Remedy'
				--25
				e.other:ScribeSpell(2503, 168);--'Sermon of the Righteous'
				--29
				e.other:ScribeSpell(2175, 169);--'Celestial Health'
				--38
				e.other:ScribeSpell(2946, 170);--'Remove Curse'
				--39
				e.other:ScribeSpell(2504, 171);--'Sacred Word'
				--49
				e.other:ScribeSpell(2505, 172);--'Armor of the Faithful'
				--52
				e.other:ScribeSpell(2506, 173);--'Epitaph of Life'
				--54
				e.other:ScribeSpell(2507, 174);--'Mark of Retribution'
				e.other:ScribeSpell(2880, 175);--'Remove Greater Curse'
				--56
				e.other:ScribeSpell(2181, 176);--'Hammer of Judgment'
				e.other:ScribeSpell(2326, 177);--'Yaulp V'
				e.other:ScribeSpell(2508, 178);--'Judgment'
				--58
				e.other:ScribeSpell(2182, 179);--'Ethereal Light'
				e.other:ScribeSpell(2509, 180);--'Blessed Armor of the Risen'
				e.other:ScribeSpell(3135, 181);--'Hammer of Divinity'
				--59
				e.other:ScribeSpell(2462, 182);--'Ethereal Remedy'
				--60
				e.other:ScribeSpell(2180, 183);--'Ethereal Elixir'
				e.other:ScribeSpell(2510, 184);--'Blessing of Aegolism'
				e.other:ScribeSpell(2893, 185);--'Marzin\'s Mark'	
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--15
				e.other:ScribeSpell(3575, 186);--'Blessing of Piety'
				--35
				e.other:ScribeSpell(3576, 187);--'Blessing of Faith'
				--61
				e.other:ScribeSpell(1342, 188);--'Larger Reviviscence'
				e.other:ScribeSpell(3296, 189);--'Faith'
				e.other:ScribeSpell(3465, 190);--'Supernal Remedy'
				e.other:ScribeSpell(3466, 191);--'Symbol of Kazad'
				e.other:ScribeSpell(3470, 192);--'Ward of Gallantry'
				e.other:ScribeSpell(3481, 193);--'Tarnation'
				--62
				e.other:ScribeSpell(3187, 194);--'Sermon of Penitence'
				e.other:ScribeSpell(3195, 195);--'Greater Immobilize'
				e.other:ScribeSpell(3467, 196);--'Virtue'
				e.other:ScribeSpell(3472, 197);--'Blessing of Reverence'
				e.other:ScribeSpell(3475, 198);--'Supernal Elixir'
				e.other:ScribeSpell(3476, 199);--'Condemnation'
				--63
				e.other:ScribeSpell(3047, 200);--'Kazad\'s Mark'
				e.other:ScribeSpell(3478, 201);--'Hammer of Damnation'
				e.other:ScribeSpell(3136, 202);--'Hammer of Souls'
				e.other:ScribeSpell(3480, 203);--'Supernal Light'
				e.other:ScribeSpell(3482, 204);--'Sound of Might'
				--64
				e.other:ScribeSpell(3196, 205);--'Petrifying Earth'
				e.other:ScribeSpell(3468, 206);--'Destroy Undead'
				e.other:ScribeSpell(3469, 207);--'Mark of Kings'
				e.other:ScribeSpell(3471, 208);--'Word of Replenishment'
				e.other:ScribeSpell(3473, 209);--'Catastrophe'
				e.other:ScribeSpell(3592, 210);--'Imbue Valor'
				--65
				e.other:ScribeSpell(3186, 211);--'Yaulp VI'
				e.other:ScribeSpell(3197, 212);--'Pacification'
				e.other:ScribeSpell(3464, 213);--'The Silent Command'
				e.other:ScribeSpell(3474, 214);--'Armor of the Zealot'
				e.other:ScribeSpell(3477, 215);--'Mark of the Righteous'
				e.other:ScribeSpell(3479, 216);--'Hand of Virtue'
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--29
				e.other:ScribeSpell(3994, 217);--'Mass Imbue Amber'
				e.other:ScribeSpell(3995, 218);--'Mass Imbue Black Pearl'
				e.other:ScribeSpell(3996, 219);--'Mass Imbue Black Sapphire'
				e.other:ScribeSpell(3997, 220);--'Mass Imbue Diamond'
				e.other:ScribeSpell(3998, 221);--'Mass Imbue Emerald'
				e.other:ScribeSpell(4002, 222);--'Mass Imbue Opal'
				e.other:ScribeSpell(4003, 223);--'Mass Imbue Peridot'
				e.other:ScribeSpell(4004, 224);--'Mass Imbue Plains Pebble'
				e.other:ScribeSpell(4005, 225);--'Mass Imbue Rose Quartz'
				e.other:ScribeSpell(4006, 226);--'Mass Imbue Ruby'
				e.other:ScribeSpell(4007, 227);--'Mass Imbue Sapphire'
				e.other:ScribeSpell(4008, 228);--'Mass Imbue Topaz'
				--40
				e.other:ScribeSpell(3692, 229);--'Temperance'
				--51
				e.other:ScribeSpell(3693, 230);--'Pure Blood'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--8
				e.other:ScribeSpell(4056, 231);--'Remove Minor Curse'
				--10
				e.other:ScribeSpell(4258, 232);--'Iony\'s Lesser Augury'
				--14
				e.other:ScribeSpell(4270, 233);--'Iony\'s Lesser Exorcism'
				e.other:ScribeSpell(4282, 234);--'Iony\'s Lesser Cleansing'
				--20
				e.other:ScribeSpell(4088, 235);--'Ward of Vie'
				--23
				e.other:ScribeSpell(4057, 236);--'Remove Lesser Curse'
				e.other:ScribeSpell(4259, 237);--'Iony\'s Augury'
				--24
				e.other:ScribeSpell(4271, 238);--'Iony\'s Exorcism'
				e.other:ScribeSpell(4283, 239);--'Iony\'s Cleansing'
				--33
				e.other:ScribeSpell(4260, 240);--'Iony\'s Greater Augury'
				--34
				e.other:ScribeSpell(4272, 241);--'Iony\'s Greater Exorcism'
				e.other:ScribeSpell(4284, 242);--'Iony\'s Greater Cleansing'
				--40
				e.other:ScribeSpell(4089, 243);--'Guard of Vie'  
				--45
				e.other:ScribeSpell(4053, 244);--'Blessing of Temperance' 
				--54
				e.other:ScribeSpell(4090, 245);--'Protection of Vie'  
				--62
				e.other:ScribeSpell(4091, 246);--'Bulwark of Vie'  
				--64
				e.other:ScribeSpell(4108, 247);--'Aura of Reverence'  
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4880, 248);--'Holy Light'
				e.other:ScribeSpell(4881, 249);--'Order'
				e.other:ScribeSpell(4882, 250);--'Holy Elixir'
				e.other:ScribeSpell(4973, 251);--'Ancient: Chaos Censure'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5250, 252);--'Confidence'
				e.other:ScribeSpell(5251, 253);--'Pious Remedy'
				e.other:ScribeSpell(5252, 254);--'Symbol of Balikor'
				e.other:ScribeSpell(5253, 255);--'Ward of Valiance'
				e.other:ScribeSpell(5254, 256);--'Shock of Wonder'
				e.other:ScribeSpell(6125, 257);--'Sun Cloak'
				--67
				e.other:ScribeSpell(5255, 258);--'Sermon of Reproach'
				e.other:ScribeSpell(5257, 259);--'Conviction'
				e.other:ScribeSpell(5258, 260);--'Blessing of Devotion'
				e.other:ScribeSpell(5259, 261);--'Pious Elixir'
				e.other:ScribeSpell(5260, 262);--'Reproach'
				e.other:ScribeSpell(5261, 263);--'Panoply of Vie'
				--68
				e.other:ScribeSpell(5256, 264);--'Unswerving Hammer of Retribution'
				e.other:ScribeSpell(5264, 265);--'Hammer of Reproach'
				e.other:ScribeSpell(5265, 266);--'Pious Light'
				e.other:ScribeSpell(5266, 267);--'Sound of Divinity'
				e.other:ScribeSpell(5268, 268);--'Desolate Undead'
				--69
				e.other:ScribeSpell(5269, 269);--'Mark of the Blameless'
				e.other:ScribeSpell(5270, 270);--'Word of Vivification'
				e.other:ScribeSpell(5271, 271);--'Calamity'
				e.other:ScribeSpell(5272, 272);--'Aura of Devotion'
				e.other:ScribeSpell(5273, 273);--'Yaulp VII'
				--70
				e.other:ScribeSpell(5274, 274);--'Placate'
				e.other:ScribeSpell(5275, 275);--'Silent Dictation'
				e.other:ScribeSpell(5276, 276);--'Armor of the Pious'
				e.other:ScribeSpell(5277, 277);--'Balikor\'s Mark'
				e.other:ScribeSpell(5278, 278);--'Hand of Conviction'
				e.other:ScribeSpell(5279, 279);--'Ancient: Pious Conscience'
				e.other:ScribeSpell(6140, 280);--'Ancient: Hallowed Light'
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--50
				e.other:ScribeSpell(6902, 281);--'Ward of the Divine'
				--56
				e.other:ScribeSpell(6989, 282);--'Cower the Dead' 
				--57
				e.other:ScribeSpell(6903, 283);--'Ward of Rebuke'
				--59
				e.other:ScribeSpell(6977, 284);--'Deistic Voice'
				--61
				e.other:ScribeSpell(6730, 285);--'Ward of Vengeance'
				e.other:ScribeSpell(6990, 286);--'Death\'s Despair'
				--63
				e.other:ScribeSpell(6978, 287);--'Deistic Bellow' 
				--69
				e.other:ScribeSpell(6662, 288);--'Ward of Retribution' 
				
				-- :Later
				--1344, 289);--'Greater Reviviscence'
				--1345, 290);--'Eminent Reviviscence'
				--6878, 291);--'Greater Healing Light'
				--6979, 292);--'Deistic Howl'
				--6991, 293);--'Revulsion of Death'
				--8004, 294);--'Death\'s Regret'
				--8006, 295);--'Chromastrike'
				--8007, 296);--'Desperate Renewal'
				--8493, 297);--'Elixir of Divinity'
				--8494, 298);--'Puratus'
				--8495, 299);--'Aura of the Pious' 
				--8928, 300);--'Aura of the Zealot'
				--9703, 301);--'Blessing of Purpose'
				--9704, 302);--'Blessing of Purpose Rk. II'
				--9705, 303);--'Blessing of Purpose Rk. III'
				--9706, 304);--'Sacred Remedy'
				--9707, 305);--'Sacred Remedy Rk. II'
				--9708, 306);--'Sacred Remedy Rk. III'
				--9709, 307);--'Symbol of Elushar'
				--9710, 308);--'Symbol of Elushar Rk. II'
				--9711, 309);--'Symbol of Elushar Rk. III'
				--9712, 310);--'Ward of the Dauntless'
				--9713, 311);--'Ward of the Dauntless Rk. II'
				--9714, 312);--'Ward of the Dauntless Rk. III'
				--9715, 313);--'Awestruck'
				--9716, 314);--'Awestruck Rk. II'
				--9717, 315);--'Awestruck Rk. III'
				--9721, 316);--'Resist Corruption'
				--9722, 317);--'Resist Corruption Rk. II'
				--9723, 318);--'Resist Corruption Rk. III'
				--9730, 319);--'Tenacity'
				--9731, 320);--'Tenacity Rk. II'
				--9732, 321);--'Tenacity Rk. III'
				--9736, 322);--'Sacred Elixir'
				--9737, 323);--'Sacred Elixir Rk. II'
				--9738, 324);--'Sacred Elixir Rk. III'
				--9739, 325);--'Reproval'
				--9740, 326);--'Reproval Rk. II'
				--9741, 327);--'Reproval Rk. III'
				--9742, 328);--'Aegis of Vie'
				--9743, 329);--'Aegis of Vie Rk. II'
				--9744, 330);--'Aegis of Vie Rk. III'
				--9746, 331);--'Sacred Light'
				--9747, 332);--'Sacred Light Rk. II'
				--9748, 333);--'Sacred Light Rk. III'
				--9749, 334);--'Sound of Zeal'
				--9750, 335);--'Sound of Zeal Rk. II'
				--9751, 336);--'Sound of Zeal Rk. III'
				--9755, 337);--'Promised Renewal'
				--9756, 338);--'Promised Renewal Rk. II'
				--9757, 339);--'Promised Renewal Rk. III'
				--9764, 340);--'Vow of Valor'
				--9765, 341);--'Vow of Valor Rk. II'
				--9766, 342);--'Vow of Valor Rk. III'
				--9773, 343);--'Mark of the Martyr'
				--9774, 344);--'Mark of the Martyr Rk. II'
				--9775, 345);--'Mark of the Martyr Rk. III'
				--9776, 346);--'Tectonic Quake'
				--9777, 347);--'Tectonic Quake Rk. II'
				--9778, 348);--'Tectonic Quake Rk. III'
				--9779, 349);--'Aura of Purpose'
				--9780, 350);--'Aura of Purpose Rk. II' 
				--9781, 351);--'Aura of Purpose Rk. III'
				--9782, 352);--'Yaulp VIII' 
				--9783, 353);--'Yaulp VIII Rk. II'
				--9784, 354);--'Yaulp VIII Rk. III'
				--9785, 355);--'Ward of Reprisal'
				--9786, 356);--'Ward of Reprisal Rk. II'
				--9787, 357);--'Ward of Reprisal Rk. III'
				--9791, 358);--'Shared Purity'
				--9792, 359);--'Shared Purity Rk. II'
				--9793, 360);--'Shared Purity Rk. III'
				--9794, 361);--'Expunge Corruption'
				--9795, 362);--'Expunge Corruption Rk. II'
				--9796, 363);--'Expunge Corruption Rk. III'
				--9797, 364);--'Dulcify'
				--9798, 365);--'Dulcify Rk. II'
				--9799, 366);--'Dulcify Rk. III'
				--9800, 367);--'Silent Decree'
				--9801, 368);--'Silent Decree Rk. II'
				--9802, 369);--'Silent Decree Rk. III'
				--9803, 370);--'Armor of the Sacred'
				--9804, 371);--'Armor of the Sacred Rk. II'
				--9805, 372);--'Armor of the Sacred Rk. III',
				--9806, 373);--'Elushar\'s Mark'
				--9807, 374);--'Elushar\'s Mark Rk. II'
				--9808, 375);--'Elushar\'s Mark Rk. III'
				--9809, 376);--'Hand of Tenacity'
				--9810, 377);--'Hand of Tenacity Rk. II'
				--9811, 378);--'Hand of Tenacity Rk. III'
				--9812, 379);--'Elixir of Redemption'
				--9813, 380);--'Elixir of Redemption Rk. II'
				--9814, 381);--'Elixir of Redemption Rk. III'
				--9818, 382);--'Rallied Aegis of Vie'
				--9819, 383);--'Rallied Aegis of Vie Rk. II'
				--9820, 384);--'Rallied Aegis of Vie Rk. III'
				--11750, 385);--'Unflinching Hammer of Zeal'
				--11751, 386);--'Unflinching Hammer of Zeal Rk. II',
				--11752, 387);--'Unflinching Hammer of Zeal Rk. III'
				--11753, 388);--'Divine Custody'
				--11754, 389);--'Divine Custody Rk. II'
				--11755, 390);--'Divine Custody Rk. III'
				--11756, 391);--'Consecrate Ground'
				--11757, 392);--'Consecrate Ground Rk. II'
				--11758, 393);--'Consecrate Ground Rk. III'
				--11763, 394);--'Blood of the Martyr'
				--11764, 395);--'Blood of the Martyr Rk. II'
				--11765, 396);--'Blood of the Martyr Rk. III'
				--21398, 397);--'Eradicate Poison'
				--21399, 398);--'Eradicate Disease'
				--21400, 399);--'Eradicate Curse' 
				--31991, 400);--'Heroic Leap'
				--33000, 401);--'Heroic Leap*'
			end 
		end 
	end
	if (e.other:GetClass() == 14) then	--enc
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(12322, 0);--'Illusion: Simple Bellikos' 
			e.other:ScribeSpell(12329, 1);--'Illusion: Simple Gnomework'
			e.other:ScribeSpell(12330, 2);--'Illusion: Flame Telmira'
			e.other:ScribeSpell(12492, 3);--'Illusion: Shissar',
			e.other:ScribeSpell(205, 4);--'True North' 
			e.other:ScribeSpell(208, 5);--'Lull'
			e.other:ScribeSpell(27701, 6);--'Illusion: Evil Eye'
			e.other:ScribeSpell(27702, 7);--'Illusion: Spectre'
			e.other:ScribeSpell(27704, 8);--'Illusion: Fairy'
			e.other:ScribeSpell(27705, 9);--'Illusion: Kobold Serf'
			e.other:ScribeSpell(27706, 10);--'Illusion: Hideous Harpy'
			e.other:ScribeSpell(27708, 11);--'Illusion: Hooded Scrykin'
			e.other:ScribeSpell(27709, 12);--'Illusion: Goblin King' 
			e.other:ScribeSpell(27710, 13);--'Illusion: Kobold King' 
			e.other:ScribeSpell(27707, 14);--'Illusion: Stone Gargoyle'
			e.other:ScribeSpell(27711, 15);--'Illusion: Bixie Queen' 
			e.other:ScribeSpell(27712, 16);--'Illusion: Bixie Drone' 
			e.other:ScribeSpell(27713, 17);--'Illusion: Brownie' 
			e.other:ScribeSpell(27714, 18);--'Illusion: Brownie Noble'
			e.other:ScribeSpell(27715, 19);--'Illusion: Pyrilen'
			e.other:ScribeSpell(27716, 20);--'Illusion: Gelidran'
			e.other:ScribeSpell(27717, 21);--'Illusion: Banshee'
			e.other:ScribeSpell(27718, 22);--'Illusion: Crystal Golem',
			e.other:ScribeSpell(27719, 23);--'Illusion: Arcane Scrykin'
			e.other:ScribeSpell(27720, 24);--'Illusion: Corrupted Shiliskin'
			e.other:ScribeSpell(27721, 25);--'Illusion: Ice Golem'
			e.other:ScribeSpell(27722, 26);--'Illusion: Aviak Rook'
			e.other:ScribeSpell(27723, 27);--'Illusion: Siren Enticer'
			e.other:ScribeSpell(27724, 28);--'Illusion: Frost Goblin'
			e.other:ScribeSpell(27725, 29);--'Illusion: Iksar Skeleton'
			e.other:ScribeSpell(27726, 30);--'Illusion: Bloodmoon Orc'
			e.other:ScribeSpell(27727, 31);--'Illusion: Raptor Predator'
			e.other:ScribeSpell(27728, 32);--'Illusion: Gnomish Pirate'
			e.other:ScribeSpell(27729, 33);--'Illusion: Embattled Minotaur'
			e.other:ScribeSpell(27730, 34);--'Illusion: Spirited Satyr'
			e.other:ScribeSpell(27731, 35);--'Illusion: Primal Kerran'
			e.other:ScribeSpell(27732, 36);--'Illusion: Barraki'
			e.other:ScribeSpell(27733, 37);--'Illusion: Kunark Goblin'
			e.other:ScribeSpell(27734, 38);--'Illusion: Centaur'
			e.other:ScribeSpell(27735, 39);--'Illusion: Banshee'
			e.other:ScribeSpell(27736, 40);--'Illusion: Blood Runed Gargoyle'
			e.other:ScribeSpell(27737, 41);--'Illusion: Eagle Aviak' 
			e.other:ScribeSpell(27740, 42);--'Illusion: Snow Kobold'
			e.other:ScribeSpell(27742, 43);--'Illusion: Recluse Spider'
			e.other:ScribeSpell(27743, 44);--'Illusion: Drachnid'
			e.other:ScribeSpell(27744, 45);--'Illusion: Ogre Pirate'
			e.other:ScribeSpell(27745, 46);--'Illusion: Crystalline Trichordont'
			e.other:ScribeSpell(27746, 47);--'Illusion: Vitrik'
			e.other:ScribeSpell(27747, 48);--'Illusion: Crystalline Sessiloid'
			e.other:ScribeSpell(285, 49);--'Pendril\'s Animation',
			e.other:ScribeSpell(286, 50);--'Shallow Breath'
			e.other:ScribeSpell(287, 51);--'Minor Illusion'
			e.other:ScribeSpell(288, 52);--'Minor Shielding'
			e.other:ScribeSpell(289, 53);--'Taper Enchantment'
			e.other:ScribeSpell(32200, 54);--'Visage of the Daft Trickster'
			e.other:ScribeSpell(331, 55);--'Reclaim Energy'
			e.other:ScribeSpell(39286, 56);--'Illusion: Dark Elf Pirate'
			e.other:ScribeSpell(39287, 57);--'Illusion: Dark Elf Pirate'
			e.other:ScribeSpell(39290, 58);--'Illusion: Human Pirate'
			e.other:ScribeSpell(39291, 59);--'Illusion: Human Pirate'
			e.other:ScribeSpell(39292, 60);--'Illusion: Erudite Pirate'
			e.other:ScribeSpell(39293, 61);--'Illusion: Erudite Pirate'
			e.other:ScribeSpell(38811, 62);--'Illusion: Warped Chetari' 
			e.other:ScribeSpell(39280, 63);--'Illusion: Gunthak Pirate' 
			e.other:ScribeSpell(37869, 64);--'Illusion: Silver Gnomework'
			e.other:ScribeSpell(33999, 65);--'Illusion: Gelatinous Cube'
			e.other:ScribeSpell(40, 66);--'Strengthen' 
			e.other:ScribeSpell(41, 67);--'Weaken'
			--2
			e.other:ScribeSpell(292, 68);--'Mesmerize'
			e.other:ScribeSpell(582, 69);--'Illusion: Human'
			e.other:ScribeSpell(676, 70);--'Tashina'
			e.other:ScribeSpell(681, 71);--'Juli\'s Animation'
			--3
			e.other:ScribeSpell(229, 72);--'Fear'
			e.other:ScribeSpell(290, 73);--'Color Flux'
			e.other:ScribeSpell(293, 74);--'Haze'
			e.other:ScribeSpell(583, 75);--'Illusion: Half-Elf'
			--4
			e.other:ScribeSpell(291, 76);--'Enfeeblement'
			e.other:ScribeSpell(294, 77);--'Suffocating Sphere'
			e.other:ScribeSpell(36, 78);--'Gate' 
			e.other:ScribeSpell(42, 79);--'Invisibility'
			--5
			e.other:ScribeSpell(297, 80);--'Eye of Confusion'
			e.other:ScribeSpell(299, 81);--'Sentinel'
			e.other:ScribeSpell(588, 82);--'Illusion: Wood Elf',
			--6
			e.other:ScribeSpell(230, 83);--'Root'
			e.other:ScribeSpell(246, 84);--'Lesser Shielding'
			e.other:ScribeSpell(501, 85);--'Soothe'
			e.other:ScribeSpell(80, 86);--'See Invisible'
			--7
			e.other:ScribeSpell(295, 87);--'Mircyl\'s Animation', 
			e.other:ScribeSpell(296, 88);--'Chaotic Feedback'
			e.other:ScribeSpell(48, 89);--'Cancel Magic'
			e.other:ScribeSpell(667, 90);--'Enchant Silver'
			--8
			e.other:ScribeSpell(1359, 91);--'Enchant Clay'
			e.other:ScribeSpell(298, 92);--'Alliance'
			e.other:ScribeSpell(500, 93);--'Bind Sight'
			e.other:ScribeSpell(595, 94);--'Illusion: Gnome'
			--9
			e.other:ScribeSpell(302, 95);--'Languid Pace'
			e.other:ScribeSpell(303, 96);--'Whirl till you hurl' 
			e.other:ScribeSpell(645, 97);--'Ebbing Strength',
			e.other:ScribeSpell(682, 98);--'Kilan\'s Animation' 
			--10
			e.other:ScribeSpell(12335, 99);--'Illusion: Simple Gnoll' 
			e.other:ScribeSpell(12337, 100);--'Illusion: Burning Nekhon'
			e.other:ScribeSpell(12401, 101);--'Illusion: Steam Suit'
			e.other:ScribeSpell(12402, 102);--'Illusion: Kedge'
			e.other:ScribeSpell(276, 103);--'Serpent Sight'
			e.other:ScribeSpell(301, 104);--'Memory Blur'
			e.other:ScribeSpell(590, 105);--'Illusion: Dark Elf',
			e.other:ScribeSpell(650, 106);--'Mist'
			--11
			e.other:ScribeSpell(300, 107);--'Charm'
			e.other:ScribeSpell(390, 108);--'Thicken Mana', 
			e.other:ScribeSpell(521, 109);--'Choke'
			e.other:ScribeSpell(589, 110);--'Illusion: High Elf',
			e.other:ScribeSpell(7988, 111);--'Greater Mass Enchant Silver'
			--12
			e.other:ScribeSpell(40971, 112);--'Bind Affinity'
			e.other:ScribeSpell(587, 113);--'Illusion: Erudite', 
			e.other:ScribeSpell(594, 114);--'Illusion: Halfling'
			e.other:ScribeSpell(86, 115);--'Enduring Breath'
			--13
			e.other:ScribeSpell(187, 116);--'Enthrall'
			e.other:ScribeSpell(481, 117);--'Rune I'
			e.other:ScribeSpell(591, 118);--'Illusion: Dwarf'
			--14
			e.other:ScribeSpell(235, 119);--'Invisibility versus Undead'
			e.other:ScribeSpell(668, 120);--'Enchant Electrum'
			e.other:ScribeSpell(683, 121);--'Shalee\'s Animation'
			--15
			e.other:ScribeSpell(261, 122);--'Levitate'
			e.other:ScribeSpell(305, 123);--'Identify'
			e.other:ScribeSpell(39, 124);--'Quickness'
			e.other:ScribeSpell(586, 125);--'Illusion: Barbarian'
			e.other:ScribeSpell(601, 126);--'Illusion: Tree'
			--16
			e.other:ScribeSpell(281, 127);--'Disempower'
			e.other:ScribeSpell(304, 128);--'Chase the Moon'
			e.other:ScribeSpell(306, 129);--'Sanity Warp'
			e.other:ScribeSpell(307, 130);--'Mesmerization',
			e.other:ScribeSpell(309, 131);--'Shielding'
			--17
			e.other:ScribeSpell(228, 132);--'Endure Magic'
			e.other:ScribeSpell(593, 133);--'Illusion: Ogre'
			e.other:ScribeSpell(651, 134);--'Cloud'
			e.other:ScribeSpell(684, 135);--'Sisna\'s Animation' 
			--18
			e.other:ScribeSpell(47, 136);--'Calm'
			e.other:ScribeSpell(489, 137);--'Sympathetic Aura'
			e.other:ScribeSpell(592, 138);--'Illusion: Troll'
			e.other:ScribeSpell(677, 139);--'Tashani'
			--19
			e.other:ScribeSpell(179, 140);--'Feckless Might'
			e.other:ScribeSpell(21, 141);--'Berserker Strength'
			e.other:ScribeSpell(439, 142);--'Crystallize Mana'
			e.other:ScribeSpell(7985, 143 );--'Greater Mass Enchant Electrum'
			--20
			e.other:ScribeSpell(173, 144);--'Benevolence'
			e.other:ScribeSpell(177, 145);--'Color Shift'
			e.other:ScribeSpell(84, 146);--'Shifting Sight' 
			--21
			e.other:ScribeSpell(170, 147);--'Alacrity'
			e.other:ScribeSpell(350, 148);--'Chaos Flux'
			e.other:ScribeSpell(584, 149);--'Illusion: Earth Elemental'
			--22
			e.other:ScribeSpell(24, 150);--'Strip Enchantment'
			e.other:ScribeSpell(482, 151);--'Rune II',
			e.other:ScribeSpell(685, 152);--'Sagar\'s Animation' 
			--23
			e.other:ScribeSpell(182, 153);--'Beguile'
			e.other:ScribeSpell(185, 154);--'Tepid Deeds'
			e.other:ScribeSpell(65, 155);--'Major Shielding'
			--24
			e.other:ScribeSpell(581, 156);--'Illusion: Skeleton'
			e.other:ScribeSpell(669, 157);--'Enchant Gold'
			--25
			e.other:ScribeSpell(131, 158);--'Instill'
			e.other:ScribeSpell(162, 159);--'Listless Power' 
			e.other:ScribeSpell(191, 160);--'Feedback'
			--26
			e.other:ScribeSpell(174, 161);--'Clarity'
			e.other:ScribeSpell(408, 162);--'Curse of the Simple Mind'
			e.other:ScribeSpell(450, 163);--'Suffocate'
			--27
			e.other:ScribeSpell(46, 164);--'Ultravision' 
			e.other:ScribeSpell(540, 165);--'Clarify Mana'
			e.other:ScribeSpell(652, 166);--'Obscure'
			--28
			e.other:ScribeSpell(10, 167);--'Augmentation'
			e.other:ScribeSpell(49, 168);--'Nullify Magic'
			e.other:ScribeSpell(599, 169);--'Illusion: Water Elemental'
			e.other:ScribeSpell(619, 170);--'Dyn\'s Dizzying Draught'
			e.other:ScribeSpell(7986, 171);--'Greater Mass Enchant Gold'
			--29
			e.other:ScribeSpell(597, 172);--'Illusion: Air Elemental', 
			e.other:ScribeSpell(686, 173);--'Uleen\'s Animation'
			--30
			e.other:ScribeSpell(188, 174);--'Entrance'
			e.other:ScribeSpell(74, 175);--'Mana Sieve' 
			--31
			e.other:ScribeSpell(646, 176);--'Radiant Visage', 
			e.other:ScribeSpell(66, 177);--'Greater Shielding'
			e.other:ScribeSpell(687, 178);--'Boltran\'s Animation'
			--32
			e.other:ScribeSpell(407, 179);--'Cast Sight'
			e.other:ScribeSpell(670, 180);--'Enchant Platinum'
			e.other:ScribeSpell(71, 181);--'Anarchy'
			--33
			e.other:ScribeSpell(483, 182);--'Rune III'
			e.other:ScribeSpell(598, 183);--'Illusion: Fire Elemental',
			--34
			e.other:ScribeSpell(180, 184);--'Insipid Weakness'
			--35
			e.other:ScribeSpell(127, 185);--'Invoke Fear'
			e.other:ScribeSpell(175, 186);--'Insight'
			e.other:ScribeSpell(45, 187);--'Pacify'
			--36
			e.other:ScribeSpell(192, 188);--'Mind Wipe'
			e.other:ScribeSpell(73, 189);--'Gravity Flux'
			--37
			e.other:ScribeSpell(183, 190);--'Cajoling Whispers'
			e.other:ScribeSpell(596, 191);--'Illusion: Dry Bone'
			e.other:ScribeSpell(64, 192);--'Resist Magic'
			e.other:ScribeSpell(653, 193);--'Shade'
			e.other:ScribeSpell(688, 194);--'Aanya\'s Animation'
			--38
			e.other:ScribeSpell(600, 195);--'Illusion: Spirit Wolf'
			e.other:ScribeSpell(648, 196);--'Rampage'
			e.other:ScribeSpell(695, 197);--'Distill Mana'
			e.other:ScribeSpell(7987, 198);--'Greater Mass Enchant Platinum',
			--39
			e.other:ScribeSpell(132, 199);--'Immobilize'
			e.other:ScribeSpell(171, 200);--'Celerity'
			--40
			e.other:ScribeSpell(163, 201);--'Incapacitate'
			e.other:ScribeSpell(484, 202);--'Rune IV'
			e.other:ScribeSpell(67, 203);--'Arch Shielding' 
			--41
			e.other:ScribeSpell(186, 204);--'Shiftless Deeds'
			e.other:ScribeSpell(33, 205);--'Brilliance'
			e.other:ScribeSpell(678, 206);--'Tashania'
			e.other:ScribeSpell(689, 207);--'Yegoreff\'s Animation'
			--42
			e.other:ScribeSpell(181, 208);--'Weakness'
			e.other:ScribeSpell(25, 209);--'Pillage Enchantment'
			e.other:ScribeSpell(585, 210);--'Illusion: Werewolf',
			--43
			e.other:ScribeSpell(178, 211);--'Color Skew'
			e.other:ScribeSpell(673, 212);--'Discordant Mind'
			--44
			--N/A
			--45
			e.other:ScribeSpell(133, 213);--'Paralyzing Earth'
			e.other:ScribeSpell(194, 214);--'Reoccurring Amnesia'
			e.other:ScribeSpell(696, 215);--'Purify Mana'
			--46
			e.other:ScribeSpell(184, 216);--'Allure'
			e.other:ScribeSpell(1892, 217);--'Enchant Steel'
			e.other:ScribeSpell(193, 218);--'Blanket of Forgetfulness'
			e.other:ScribeSpell(647, 219);--'Adorning Grace', 
			--47
			e.other:ScribeSpell(172, 220);--'Swift Like the Wind'
			e.other:ScribeSpell(176, 221);--'Berserker Spirit'
			e.other:ScribeSpell(190, 222);--'Dazzle'
			e.other:ScribeSpell(195, 223);--'Gasping Embrace'
			--48
			e.other:ScribeSpell(1889, 224);--'Enchant Mithril'
			e.other:ScribeSpell(1890, 225);--'Enchant Adamantite'
			e.other:ScribeSpell(654, 226);--'Shadow'
			e.other:ScribeSpell(690, 227);--'Kintaz\'s Animation'
			e.other:ScribeSpell(72, 228);--'Group Resist Magic' 
			--49
			e.other:ScribeSpell(1893, 229);--'Enchant Brellium'
			--50
			--N/A
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--14
				e.other:ScribeSpell(697, 230);--'Breeze'
				--20
				e.other:ScribeSpell(243, 231);--'Illusion: Iksar'
				--42
				e.other:ScribeSpell(1694, 232);--'Boon of the Clear Mind'
				--50
				e.other:ScribeSpell(1686, 233);--'Theft of Thought'
				e.other:ScribeSpell(1687, 234);--'Collaboration'
				--51
				e.other:ScribeSpell(1541, 235);--'Wake of Tranquility'
				--52
				e.other:ScribeSpell(1689, 236);--'Rune V',
				e.other:ScribeSpell(1690, 237);--'Fascination'
				e.other:ScribeSpell(1693, 238);--'Clarity II'
				e.other:ScribeSpell(1696, 239);--'Color Slant'
				--53
				e.other:ScribeSpell(1592, 240);--'Cripple'
				e.other:ScribeSpell(1697, 241);--'Recant Magic'
				e.other:ScribeSpell(1705, 242);--'Boltran\'s Agacerie' 
				e.other:ScribeSpell(1708, 243);--'Aanya\'s Quickening' 
				--54
				e.other:ScribeSpell(1610, 244);--'Shield of the Magi'
				e.other:ScribeSpell(1691, 245);--'Glamour of Kintaz'
				e.other:ScribeSpell(1698, 246);--'Dementia'
				--55
				e.other:ScribeSpell(1699, 247);--'Wind of Tashani'
				e.other:ScribeSpell(1714, 248);--'Memory Flux'
				e.other:ScribeSpell(1715, 249);--'Largarn\'s Lamentation'
				e.other:ScribeSpell(1723, 250);--'Zumaik\'s Animation'
				--56
				e.other:ScribeSpell(1527, 251);--'Trepidation'
				e.other:ScribeSpell(1695, 252);--'Gift of Pure Thought'
				e.other:ScribeSpell(1700, 253);--'Torment of Argli'
				e.other:ScribeSpell(1701, 254);--'Overwhelming Splendor'
				e.other:ScribeSpell(1729, 255);--'Augment'
				--57
				e.other:ScribeSpell(1688, 256);--'Enlightenment'
				e.other:ScribeSpell(1702, 257);--'Tashanian'
				e.other:ScribeSpell(1711, 258);--'Umbra'
				e.other:ScribeSpell(1712, 259);--'Forlorn Deeds'
				--58
				e.other:ScribeSpell(1633, 260);--'Fetter'
				e.other:ScribeSpell(1709, 261);--'Wondrous Rapidity'
				e.other:ScribeSpell(1713, 262);--'Bedlam'
				--59
				e.other:ScribeSpell(1692, 263);--'Rapture'
				e.other:ScribeSpell(1703, 264);--'Asphyxiate'
				--60
				e.other:ScribeSpell(1704, 265);--'Wind of Tashanian'
				e.other:ScribeSpell(1707, 266);--'Dictate'
				e.other:ScribeSpell(1710, 267);--'Visions of Grandeur' 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--34
				e.other:ScribeSpell(1408, 268);--'Gift of Magic'
				--38
				e.other:ScribeSpell(1407, 269);--'Wandering Mind'
				--40
				e.other:ScribeSpell(1474, 270);--'Boon of the Garou' 
				--43
				e.other:ScribeSpell(1285, 271);--'Summon Companion'
				e.other:ScribeSpell(1797, 272);--'Enchant Velium'
				--44
				e.other:ScribeSpell(7989, 273);--'Greater Mass Enchant Velium'
				--50
				e.other:ScribeSpell(1406, 274);--'Improved Invisibility'
				--55
				e.other:ScribeSpell(1409, 275);--'Gift of Insight'
				--58
				e.other:ScribeSpell(2016, 276);--'Dementing Visions'
				--60
				e.other:ScribeSpell(1410, 277);--'Gift of Brilliance'
				e.other:ScribeSpell(2120, 278);--'Ancient: Eternal Rapture'
				e.other:ScribeSpell(2121, 279);--'Ancient: Chaotic Visions'
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--11
				e.other:ScribeSpell(2561, 280);--'Intellectual Advancement'
				--17
				e.other:ScribeSpell(2562, 281);--'Intellectual Superiority'
				--26
				e.other:ScribeSpell(2563, 282);--'Haunting Visage'
				--36
				e.other:ScribeSpell(2564, 283);--'Calming Visage'
				--45
				e.other:ScribeSpell(2565, 284);--'Illusion: Imp'
				--51
				e.other:ScribeSpell(2881, 285);--'Everlasting Breath'
				e.other:ScribeSpell(2894, 286);--'Levitation'
				--52
				e.other:ScribeSpell(2566, 287);--'Trickster\'s Augmentation'
				--54
				e.other:ScribeSpell(2567, 288);--'Beguiling Visage'
				e.other:ScribeSpell(2826, 289);--'Illusion: Vah Shir'
				--56
				e.other:ScribeSpell(2568, 290);--'Horrifying Visage'
				--58
				e.other:ScribeSpell(2569, 291);--'Glamorous Visage'
				--60
				e.other:ScribeSpell(2570, 292);--'Koadic\'s Endless Intellect'
				e.other:ScribeSpell(2895, 293);--'Speed of the Brood'
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--19
				e.other:ScribeSpell(3583, 294);--'Tiny Companion'
				--30
				e.other:ScribeSpell(3585, 295);--'Entrancing Lights'
				--44
				e.other:ScribeSpell(39855, 296);--'Illusion: Scaled Wolf'
				--61
				e.other:ScribeSpell(3194, 297);--'Greater Fetter'
				e.other:ScribeSpell(3199, 298);--'Arcane Rune'
				e.other:ScribeSpell(3229, 299);--'Boggle'
				e.other:ScribeSpell(3300, 300);--'Shield of the Arcane'
				e.other:ScribeSpell(3341, 301);--'Apathy' 
				e.other:ScribeSpell(3342, 302);--'Howl of Tashan'
				e.other:ScribeSpell(3343, 303);--'Rune of Zebuxoruk'
				e.other:ScribeSpell(3595, 304);--'Imbue Justice'
				e.other:ScribeSpell(3591, 305);--'Imbue Disease'
				--62
				e.other:ScribeSpell(3034, 306);--'Aeldorb\'s Animation'
				e.other:ScribeSpell(3197, 307);--'Pacification'
				e.other:ScribeSpell(3240, 308);--'Speed of Vallon'
				e.other:ScribeSpell(3242, 309);--'Guard of Druzzil'
				e.other:ScribeSpell(3344, 310);--'Imbue Nightmare' 
				e.other:ScribeSpell(3345, 311);--'Strangle'
				e.other:ScribeSpell(3346, 312);--'Imbue Storm'
				e.other:ScribeSpell(3347, 313);--'Beckon'
				e.other:ScribeSpell(3359, 314);--'Word of Morell'
				e.other:ScribeSpell(3594, 315);--'Imbue Torment'
				e.other:ScribeSpell(3352, 316);--'Imbue Earth'
				--63
				e.other:ScribeSpell(3241, 317);--'Night\'s Dark Terror'
				e.other:ScribeSpell(3348, 318);--'Torment of Scio'
				e.other:ScribeSpell(3350, 319);--'Tranquility'
				e.other:ScribeSpell(3351, 320);--'Uproar'
				e.other:ScribeSpell(3354, 321);--'Sleep'
				e.other:ScribeSpell(3592, 322);--'Imbue Valor'
				e.other:ScribeSpell(3593, 323);--'Imbue War'
				--64
				e.other:ScribeSpell(3302, 324);--'Shield of Maelin'
				e.other:ScribeSpell(3349, 325);--'Insanity'
				e.other:ScribeSpell(3353, 326);--'Imbue Air'
				e.other:ScribeSpell(3355, 327);--'Command of Druzzil'
				e.other:ScribeSpell(3358, 328);--'Bliss'
				--65
				e.other:ScribeSpell(3063, 329);--'Illusion: Froglok'
				e.other:ScribeSpell(3178, 330);--'Vallon\'s Quickening'
				e.other:ScribeSpell(3356, 331);--'Imbue Fire'
				e.other:ScribeSpell(3357, 332);--'Imbue Water'
				e.other:ScribeSpell(3360, 333);--'Voice of Quellious'
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--7
				e.other:ScribeSpell(3991, 334);--'Mass Enchant Silver'
				--9
				e.other:ScribeSpell(3986, 335);--'Mass Enchant Clay'
				--11
				e.other:ScribeSpell(4010, 336);--'Mass Thicken Mana'
				--14
				e.other:ScribeSpell(3987, 337);--'Mass Enchant Electrum' 
				--20
				e.other:ScribeSpell(3982, 338);--'Mass Crystallize Mana'
				--24
				e.other:ScribeSpell(3988, 339);--'Mass Enchant Gold'
				--29
				e.other:ScribeSpell(3981, 340);--'Mass Clarify Mana'
				--32
				e.other:ScribeSpell(3990, 341);--'Mass Enchant Platinum' 
				--39
				e.other:ScribeSpell(3983, 342);--'Mass Distill Mana'
				--44
				e.other:ScribeSpell(3696, 343);--'Leviathan Eyes'
				e.other:ScribeSpell(3993, 540);--'Mass Enchant Velium'
				--47
				e.other:ScribeSpell(4009, 344);--'Mass Purify Mana'
				--49
				e.other:ScribeSpell(3984, 345);--'Mass Enchant Adamantite'
				e.other:ScribeSpell(3985, 346);--'Mass Enchant Brellium' 
				e.other:ScribeSpell(3989, 347);--'Mass Enchant Mithril'
				e.other:ScribeSpell(3992, 348);--'Mass Enchant Steel'
				--52
				e.other:ScribeSpell(3697, 349);--'Scryer\'s Trespass'
				e.other:ScribeSpell(4017, 350);--'Illusion: Guktan'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--13
				e.other:ScribeSpell(4255, 351);--'Wuggan\'s Lesser Appraisal'
				--14
				e.other:ScribeSpell(4267, 352);--'Wuggan\'s Lesser Discombobulation'
				e.other:ScribeSpell(4279, 353);--'Wuggan\'s Lesser Extrication'
				--23
				e.other:ScribeSpell(4256, 354);--'Wuggan\'s Appraisal'
				--24
				e.other:ScribeSpell(4268, 355);--'Wuggan\'s Discombobulation'
				e.other:ScribeSpell(4280, 356);--'Wuggan\'s Extrication'
				--29
				e.other:ScribeSpell(4073, 357);--'Ward of Alendar' 
				--33
				e.other:ScribeSpell(4257, 358);--'Wuggan\'s Greater Appraisal'
				--34
				e.other:ScribeSpell(4269, 359);--'Wuggan\'s Greater Discombobulation'
				e.other:ScribeSpell(4281, 360);--'Wuggan\'s Greater Extrication'
				--43
				e.other:ScribeSpell(4099, 361);--'Bounce'
				--44
				e.other:ScribeSpell(4074, 362);--'Guard of Alendar'
				--52
				e.other:ScribeSpell(4077, 363);--'Ordinance'
				--55
				e.other:ScribeSpell(4075, 364);--'Protection of Alendar'
				--58
				e.other:ScribeSpell(4100, 365);--'Reflect' 
				--63
				e.other:ScribeSpell(4076, 366);--'Bulwark of Alendar'
				e.other:ScribeSpell(4408, 367);--'Color Cloud'
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4877, 368);--'Dreary Deeds'
				e.other:ScribeSpell(4878, 369);--'Bliss of the Nihil'
				e.other:ScribeSpell(4879, 370);--'Madness of Ikkibi'
				e.other:ScribeSpell(4975, 371);--'Ancient: Chaos Madness'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5499, 372);--'Synapsis Spasm'
				e.other:ScribeSpell(5500, 373);--'Ethereal Rune'
				e.other:ScribeSpell(5502, 374);--'Mystic Shield'
				e.other:ScribeSpell(5505, 375);--'Salik\'s Animation'
				e.other:ScribeSpell(6122, 376);--'Suppression Field'
				--67
				e.other:ScribeSpell(5503, 377);--'Felicity'
				e.other:ScribeSpell(5504, 378);--'Rune of Salik'
				e.other:ScribeSpell(5506, 379);--'Placate'
				e.other:ScribeSpell(5507, 380);--'Speed of Salik'
				e.other:ScribeSpell(6985, 381);--'Anxiety Attack'
				--68
				e.other:ScribeSpell(5510, 382);--'Compel'
				e.other:ScribeSpell(5513, 383);--'Clairvoyance'
				e.other:ScribeSpell(5515, 384);--'Wall of Alendar'
				e.other:ScribeSpell(5518, 385);--'Psychosis'
				e.other:ScribeSpell(7003, 386);--'Circle of Dreams'
				--69
				e.other:ScribeSpell(5509, 387);--'Arcane Noose'
				e.other:ScribeSpell(5511, 388);--'Wake of Felicity'
				e.other:ScribeSpell(5514, 389);--'Mayhem'
				e.other:ScribeSpell(5516, 390);--'Color Snap'
				e.other:ScribeSpell(5520, 391);--'Euphoria'
				e.other:ScribeSpell(6826, 392);--'Desolate Deeds'
				--70
				e.other:ScribeSpell(5517, 393);--'Circle of Alendar'
				e.other:ScribeSpell(5519, 394);--'True Name'
				e.other:ScribeSpell(5521, 395);--'Hastening of Salik'
				e.other:ScribeSpell(5522, 396);--'Voice of Clairvoyance', 
				e.other:ScribeSpell(5523, 397);--'Ancient: Neurosis'
				e.other:ScribeSpell(6144, 398);--'Ancient: Voice of Muram'
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--57
				e.other:ScribeSpell(6983, 399);--'Phobia'
				--61
				e.other:ScribeSpell(6739, 400);--'Rune of the Scale'
				--62
				e.other:ScribeSpell(6984, 401);--'Jitterskin'
				--69
				e.other:ScribeSpell(6671, 402);--'Rune of Rikkukin'
				
				-- :Later
				--4418, 403);--'Illusion: Frost Bone'
				--7674, 404);--'Focus Primitive Spellcaster\'s Empowering Essence'
				--7675, 405);--'Focus Rudimentary Spellcaster\'s Empowering Essence'
				--7676, 406);--'Focus Crude Spellcaster\'s Empowering Essence'
				--7677, 407);--'Focus Makeshift Spellcaster\'s Empowering Essence',
				--7678, 408);--'Focus Elementary Spellcaster\'s Empowering Essence'
				--7679, 409);--'Focus Modest Spellcaster\'s Empowering Essence'
				--7680, 410);--'Focus Simple Spellcaster\'s Empowering Essence'
				--7681, 411);--'Focus Spellcaster\'s Empowering Essence'
				--7682, 412);--'Focus Refined Spellcaster\'s Empowering Essence'
				--7683, 413);--'Focus Intricate Spellcaster\'s Empowering Essence'
				--7684, 414);--'Focus Elaborate Spellcaster\'s Empowering Essence'
				--7685, 415);--'Focus Ornate Spellcaster\'s Empowering Essence'
				--7686, 416);--'Focus Runed Spellcaster\'s Empowering Essence'
				--7687, 417  );--'Focus Mass Primitive Spellcaster\'s Empowering Essence'
				--7688, 418);--'Focus Mass Rudimentary Spellcaster\'s Empowering Essence'
				--7689, 419);--'Focus Mass Crude Spellcaster\'s Empowering Essence'
				--7690, 420);--'Focus Mass Makeshift Spellcaster\'s Empowering Essence'
				--7691, 421);--'Focus Mass Elementary Spellcaster\'s Empowering Essence'
				--7692, 422);--'Focus Mass Modest Spellcaster\'s Empowering Essence'
				--7693, 423);--'Focus Mass Simple Spellcaster\'s Empowering Essence'
				--7694, 424);--'Focus Mass Spellcaster\'s Empowering Essence'
				--7695, 425);--'Focus Mass Refined Spellcaster\'s Empowering Essence'
				--7696, 426);--'Focus Mass Intricate Spellcaster\'s Empowering Essence'
				--7697, 427);--'Focus Mass Elaborate Spellcaster\'s Empowering Essence'
				--7698, 428);--'Focus Mass Ornate Spellcaster\'s Empowering Essence'
				--8032, 429);--'Mana Flare' 
				--8034, 430);--'Colored Chaos'
				--8035, 431);--'Echoing Madness'
				--8036, 432);--'Illusion: Orc' 
				--8506, 433);--'Ward of Bedazzlement'
				--8508, 434);--'Mind Shatter'
				--8509, 435);--'Illusionist\'s Aura'
				--8931, 436);--'Beguiler\'s Aura'
				--10577, 437);--'Fractured Consciousness' 
				--10578, 438);--'Fractured Consciousness Rk. II'
				--10579, 439);--'Fractured Consciousness Rk. III'
				--10580, 440);--'Draconic Rune' 
				--10581, 441);--'Draconic Rune Rk. II'
				--10582, 442);--'Draconic Rune Rk. III'
				--10583, 443);--'Sorcerous Shield'
				--10584, 444);--'Sorcerous Shield Rk. II'
				--10585, 445);--'Sorcerous Shield Rk. III'
				--10586, 446);--'Ellowind\'s Animation'
				--10596, 447);--'Rune of Ellowind'
				--10597, 448);--'Rune of Ellowind Rk. II'
				--10598, 449);--'Rune of Ellowind Rk. III'
				--10599, 450);--'Quiet Mind' 
				--10600, 451);--'Quiet Mind Rk. II'
				--10601, 452);--'Quiet Mind Rk. III'
				--10602, 453);--'Speed of Ellowind'
				--10603, 454);--'Speed of Ellowind Rk. II'
				--10604, 455);--'Speed of Ellowind Rk. III'
				--10605, 456);--'Illusion: Drakkin of Draton`ra'
				--10606, 457);--'Illusion: Drakkin of Osh`vir', 
				--10607, 458);--'Illusion: Drakkin of Venesh'
				--10608, 459);--'Echo of Tashan'
				--10609, 460);--'Echo of Tashan Rk. II'
				--10610, 461);--'Echo of Tashan Rk. III'
				--10614, 462);--'Coax'
				--10615, 463);--'Coax Rk. II'
				--10616, 464);--'Coax Rk. III'
				--10617, 465);--'Seer\'s Intuition'
				--10618, 466);--'Seer\'s Intuition Rk. II'
				--10619, 467);--'Seer\'s Intuition Rk. III'
				--10620, 468);--'Aegis of Alendar'
				--10621, 469);--'Aegis of Alendar Rk. II'
				--10622, 470);--'Aegis of Alendar Rk. III'
				--10623, 471);--'Polychromatic Assault'
				--10624, 472);--'Polychromatic Assault Rk. II'
				--10625, 473);--'Polychromatic Assault Rk. III'
				--10629, 474);--'Dreams of Veldyn'
				--10630, 475);--'Dreams of Veldyn Rk. II'
				--10631, 476);--'Dreams of Veldyn Rk. III'
				--10635, 477);--'Thin Air'
				--10636, 478);--'Thin Air Rk. II'
				--10637, 479);--'Thin Air Rk. III'
				--10638, 480);--'Wake of Subdual'
				--10639, 481);--'Wake of Subdual Rk. II'
				--10640, 482);--'Wake of Subdual Rk. III'
				--10641, 483);--'Brimstone Body'
				--10642, 484);--'Brimstone Body Rk. II'
				--10643, 485);--'Brimstone Body Rk. III'
				--10644, 486);--'Color Collapse'
				--10645, 487);--'Color Collapse Rk. II'
				--10646, 488);--'Color Collapse Rk. III'
				--10647, 489);--'Bewilderment'
				--10648, 490);--'Bewilderment Rk. II'
				--10649, 491);--'Bewilderment Rk. III'
				--10650, 492);--'Spinning into the Void'
				--10651, 493);--'Spinning into the Void Rk. II'
				--10652, 494);--'Spinning into the Void Rk. III'
				--10653, 495);--'Legion of Alendar'
				--10654, 496);--'Legion of Alendar Rk. II'
				--10655, 497);--'Legion of Alendar Rk. III'
				--10656, 498);--'Dyn`leth\'s Whispers'
				--10657, 499);--'Dyn`leth\'s Whispers Rk. II'
				--10658, 500);--'Dyn`leth\'s Whispers Rk. III' 
				--10659, 501);--'Hastening of Ellowind'
				--10660, 502);--'Hastening of Ellowind Rk. II' 
				--10661, 503);--'Hastening of Ellowind Rk. III'
				--10662, 504);--'Voice of Intuition'
				--10663, 505);--'Voice of Intuition Rk. II' 
				--10664, 506);--'Voice of Intuition Rk. III'
				--10666, 507);--'Ward of Bewilderment'
				--10674, 508);--'Polychromatic Rune'
				--10675, 509);--'Polychromatic Rune Rk. II' 
				--10676, 510);--'Polychromatic Rune Rk. III'
				--11885, 511);--'Rune of the Kedge'
				--11886, 512);--'Rune of the Kedge Rk. II'
				--11887, 513);--'Rune of the Kedge Rk. III' 
				--11891, 514);--'Entrancer\'s Aura'
				--11892, 515);--'Entrancer\'s Aura Rk. II'
				--11893, 516);--'Entrancer\'s Aura Rk. III'
				--11897, 517);--'Mind Phobiate' 
				--11898, 518);--'Mind Phobiate Rk. II'
				--11899, 519);--'Mind Phobiate Rk. III'
				--11903, 520);--'Mana Recursion'
				--11904, 521);--'Mana Recursion Rk. II'
				--11905, 522);--'Mana Recursion Rk. III'
				--11909, 523);--'Perplexing Flash'
				--11910, 524);--'Perplexing Flash Rk. II'
				--11911, 525);--'Perplexing Flash Rk. III'
				--31003, 526);--'Ruin Magic'
				--32201, 527);--'Illusion: Daft Trickster'
				--32202, 528);--'Illusion: Daft Trickster'
				--32203, 529);--'Illusion: Daft Trickster'
				--37974, 530);--'Illusion: Drakkin of Atathus'
				--37975, 531);--'Illusion: Drakkin of Mysaphar'
				--37976, 532);--'Illusion: Drakkin of Keikolin'
				--39282, 533);--'Illusion: Troll Pirate'
				--39283, 534);--'Illusion: Troll Pirate'
				--39284, 535);--'Illusion: Gnomish Pirate'
				--39285, 536);--'Illusion: Gnomish Pirate'
				--39288, 537);--'Illusion: Ogre Pirate'
				--39289, 538);--'Illusion: Ogre Pirate'
				--42282, 539);--'Illusion: Butterfly'
			end 
		end  
	end
	if (e.other:GetClass() == 6) then --dru
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(200, 0);--'Minor Healing'
			e.other:ScribeSpell(224, 1);--'Endure Fire'
			e.other:ScribeSpell(237, 2);--'Dance of the Fireflies'
			e.other:ScribeSpell(238, 3);--'Sense Animals'
			e.other:ScribeSpell(239, 4);--'Flame Lick'
			e.other:ScribeSpell(240, 5);--'Lull Animal'
			e.other:ScribeSpell(241, 6);--'Panic Animal'
			e.other:ScribeSpell(242, 7);--'Snare'
			e.other:ScribeSpell(93, 8);--'Burst of Flame'
			e.other:ScribeSpell(26, 9);--'Skin like Wood'
			--2
			e.other:ScribeSpell(248, 10);--'Ward Summoned'
			e.other:ScribeSpell(249, 11);--'Grasping Roots'
			--3
			e.other:ScribeSpell(253, 12);--'Whirling Wind'
			e.other:ScribeSpell(92, 13);--'Burst of Fire'
			--4
			e.other:ScribeSpell(213, 14);--'Cure Disease'
			e.other:ScribeSpell(247, 15);--'Camouflage'
			e.other:ScribeSpell(252, 16);--'Invoke Lightning'
			--5
			e.other:ScribeSpell(203, 17);--'Cure Poison' 
			e.other:ScribeSpell(250, 18);--'Harmony'
			e.other:ScribeSpell(36, 19);--'Gate'
			--6
			e.other:ScribeSpell(254, 20);--'Firefist'
			e.other:ScribeSpell(258, 21);--'Treeform'
			e.other:ScribeSpell(86, 22);--'Enduring Breath'
			--7
			e.other:ScribeSpell(256, 23);--'Shield of Thistles'
			e.other:ScribeSpell(515, 24);--'Thistlecoat'
			e.other:ScribeSpell(268, 25);--'Strength of Earth'
			--8
			e.other:ScribeSpell(255, 26);--'Invisibility versus Animals'
			e.other:ScribeSpell(91, 27);--'Ignite'
			--9
			e.other:ScribeSpell(17, 28);--'Light Healing'
			e.other:ScribeSpell(225, 29);--'Endure Cold'
			e.other:ScribeSpell(257, 30);--'Starshine'
			--10
			e.other:ScribeSpell(211, 31);--'Summon Drink'
			e.other:ScribeSpell(264, 32);--'Stinging Swarm'
			e.other:ScribeSpell(278, 33);--'Spirit of Wolf'
			--11
			e.other:ScribeSpell(234, 34);--'Halo of Light'
			e.other:ScribeSpell(50, 35);--'Summon Food'
			--12
			e.other:ScribeSpell(262, 36);--'Cascade of Hail'
			e.other:ScribeSpell(35, 37);--'Bind Affinity'
			--13
			e.other:ScribeSpell(245, 38);--'Befriend Animal'
			e.other:ScribeSpell(663, 39);--'Expulse Summoned'
			e.other:ScribeSpell(80, 40);--'See Invisible'
			--14
			e.other:ScribeSpell(261, 41);--'Levitate'
			e.other:ScribeSpell(263, 42);--'Skin like Rock'
			--15
			e.other:ScribeSpell(2021, 43);--'Ring of Surefall Glade'
			e.other:ScribeSpell(513, 44);--'Calm Animal'
			e.other:ScribeSpell(514, 45);--'Terrorize Animal'
			e.other:ScribeSpell(530, 46);--'Ring of Karana'
			--16
			e.other:ScribeSpell(419, 47);--'Careless Lightning'
			e.other:ScribeSpell(520, 48);--'Dizzying Wind' 
			e.other:ScribeSpell(532, 49);--'Ring of Butcher'
			--17
			e.other:ScribeSpell(273, 50);--'Shield of Barbs'
			e.other:ScribeSpell(516, 51);--'Barbcoat'
			e.other:ScribeSpell(531, 52);--'Ring of Commons'
			e.other:ScribeSpell(533, 53);--'Ring of Toxxulia'
			--18
			e.other:ScribeSpell(139, 54);--'Feral Spirit'
			e.other:ScribeSpell(2183, 55);--'Lesser Succor'
			e.other:ScribeSpell(34, 56);--'Superior Camouflage'
			e.other:ScribeSpell(48, 57);--'Cancel Magic'
			--19
			e.other:ScribeSpell(12, 58);--'Healing'
			e.other:ScribeSpell(226, 59);--'Endure Disease'
			e.other:ScribeSpell(227, 60);--'Endure Poison'
			--20
			e.other:ScribeSpell(425, 61);--'Wolf Form'
			e.other:ScribeSpell(535, 62);--'Ring of Ro'
			e.other:ScribeSpell(60, 63);--'Resist Fire'
			--21
			e.other:ScribeSpell(220, 64);--'Spirit of Cheetah'
			e.other:ScribeSpell(405, 65);--'Tremor'
			e.other:ScribeSpell(537, 66);--'Ring of Steamfont' 
			e.other:ScribeSpell(76, 67);--'Ensnaring Roots'
			--22
			e.other:ScribeSpell(143, 68);--'Sunbeam'
			e.other:ScribeSpell(27, 69);--'Pogonip'
			e.other:ScribeSpell(534, 70);--'Ring of Lavastorm'
			e.other:ScribeSpell(536, 71);--'Ring of Feerrott'
			--23
			e.other:ScribeSpell(115, 72);--'Dismiss Summoned' 
			e.other:ScribeSpell(260, 73);--'Charm Animals'
			--24
			e.other:ScribeSpell(421, 74);--'Skin like Steel'
			e.other:ScribeSpell(99, 75);--'Creeping Crud'
			--25
			e.other:ScribeSpell(538, 76);--'Ring of Misty'
			e.other:ScribeSpell(550, 77);--'Circle of Karana'
			e.other:ScribeSpell(552, 78);--'Circle of Toxxulia'
			e.other:ScribeSpell(553, 79);--'Circle of Butcher' 
			e.other:ScribeSpell(78, 80);--'Immolate'
			--26
			e.other:ScribeSpell(2020, 81);--'Circle of Surefall Glade'
			e.other:ScribeSpell(512, 82);--'Ensnare'
			e.other:ScribeSpell(607, 83);--'Succor: East'
			--27
			e.other:ScribeSpell(129, 84);--'Shield of Brambles'
			e.other:ScribeSpell(517, 85);--'Bramblecoat'
			e.other:ScribeSpell(551, 86);--'Circle of Commons' 
			--28
			e.other:ScribeSpell(217, 87);--'Combust'
			e.other:ScribeSpell(95, 88);--'Counteract Poison'
			e.other:ScribeSpell(96, 89);--'Counteract Disease'
			--29
			e.other:ScribeSpell(15, 90);--'Greater Healing'
			e.other:ScribeSpell(1800, 91);--'Imbue Plains Pebble'
			e.other:ScribeSpell(1888, 92);--'Imbue Emerald'
			--30
			e.other:ScribeSpell(426, 93);--'Greater Wolf Form'
			e.other:ScribeSpell(554, 94);--'Circle of Lavastorm'
			e.other:ScribeSpell(61, 95);--'Resist Cold'
			--31
			e.other:ScribeSpell(406, 96);--'Earthquake'
			e.other:ScribeSpell(418, 97);--'Lightning Strike'
			e.other:ScribeSpell(557, 98);--'Circle of Steamfont'
			--32
			e.other:ScribeSpell(259, 99);--'Drones of Doom'
			e.other:ScribeSpell(25904, 100);--'Zephyr: Toxxulia'
			e.other:ScribeSpell(555, 101);--'Circle of Ro'
			e.other:ScribeSpell(556, 102);--'Circle of Feerrott'
			e.other:ScribeSpell(608, 103);--'Succor: Butcher'
			--33
			e.other:ScribeSpell(141, 104);--'Beguile Animals'
			e.other:ScribeSpell(25689, 105);--'Zephyr: Butcherblock'
			e.other:ScribeSpell(664, 106);--'Expel Summoned'
			--34
			e.other:ScribeSpell(144, 107);--'Regeneration'
			e.other:ScribeSpell(228, 108);--'Endure Magic' 
			e.other:ScribeSpell(25899, 109);--'Zephyr: Karana'
			e.other:ScribeSpell(429, 110);--'Strength of Stone'
			--35
			e.other:ScribeSpell(169, 111);--'Pack Spirit'
			e.other:ScribeSpell(25690, 112);--'Zephyr: Commonlands'
			e.other:ScribeSpell(25900, 113);--'Zephyr: Surefall Glade'
			e.other:ScribeSpell(428, 114);--'Share Wolf Form'
			--36
			e.other:ScribeSpell(422, 115);--'Skin like Diamond'
			e.other:ScribeSpell(490, 116);--'Enveloping Roots'
			e.other:ScribeSpell(558, 117);--'Circle of Misty'
			--37
			e.other:ScribeSpell(28, 118);--'Avalanche'
			e.other:ScribeSpell(432, 119);--'Shield of Spikes'
			e.other:ScribeSpell(518, 120);--'Spikecoat'
			--38
			e.other:ScribeSpell(57, 121);--'Firestrike', 
			e.other:ScribeSpell(609, 122);--'Succor: Ro'
			--39
			e.other:ScribeSpell(137, 123);--'Pack Regeneration'
			e.other:ScribeSpell(25695, 124);--'Zephyr: Feerrott'
			e.other:ScribeSpell(25902, 125);--'Zephyr: Steamfont'
			--40
			e.other:ScribeSpell(25901, 126);--'Zephyr: Ro'
			e.other:ScribeSpell(427, 127);--'Form of the Great Wolf'
			e.other:ScribeSpell(665, 128);--'Drifting Death'
			--41
			e.other:ScribeSpell(140, 129);--'Savage Spirit'
			e.other:ScribeSpell(610, 130);--'Succor: Lavastorm'
			--42
			e.other:ScribeSpell(145, 131);--'Chloroplast'
			--43
			e.other:ScribeSpell(116, 132);--'Banish Summoned'
			e.other:ScribeSpell(142, 133);--'Allure of the Wild'
			e.other:ScribeSpell(49, 134);--'Nullify Magic'
			--44
			e.other:ScribeSpell(430, 135);--'Storm Strength'
			e.other:ScribeSpell(62, 136);--'Resist Poison'
			e.other:ScribeSpell(63, 137);--'Resist Disease'
			e.other:ScribeSpell(9, 138);--'Superior Healing'
			--45
			e.other:ScribeSpell(138, 139);--'Pack Chloroplast' 
			e.other:ScribeSpell(25699, 140);--'Zephyr: Misty'
			e.other:ScribeSpell(77, 141);--'Engulfing Roots'
			--46
			e.other:ScribeSpell(420, 142);--'Lightning Blast'
			e.other:ScribeSpell(423, 143);--'Skin like Nature' 
			e.other:ScribeSpell(611, 144);--'Succor: North'
			--47
			e.other:ScribeSpell(29, 145);--'Ice'
			e.other:ScribeSpell(356, 146);--'Shield of Thorns'
			e.other:ScribeSpell(519, 147);--'Thorncoat'
			--48
			e.other:ScribeSpell(433, 148);--'Fire'
			e.other:ScribeSpell(671, 149);--'Starfire'
			--49
			e.other:ScribeSpell(64, 150);--'Resist Magic'
			end
			if (e.message:findi("kunark"))  then
				if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--24
				e.other:ScribeSpell(1326, 151);--'Ring of the Combines'
				--26
				e.other:ScribeSpell(424, 152);--'Scale of Wolf'
				--28
				e.other:ScribeSpell(753, 153);--'Beguile Plants'
				--33
				e.other:ScribeSpell(1517, 154);--'Circle of the Combines' 
				--37
				e.other:ScribeSpell(1737, 155);--'Wind of the South'
				--39
				e.other:ScribeSpell(1736, 156);--'Wind of the North'
				e.other:ScribeSpell(6873, 157);--'Nature\'s Renewal'
				--40
				e.other:ScribeSpell(25694, 158);--'Zephyr: Combines'
				--48
				e.other:ScribeSpell(1542, 159);--'Upheaval'
				--49
				e.other:ScribeSpell(1727, 160);--'Legacy of Spike'
				e.other:ScribeSpell(6876, 161);--'Forest\'s Renewal'
				--51
				e.other:ScribeSpell(1550, 162);--'Repulse Animal'
				e.other:ScribeSpell(1551, 163);--'Circle of Winter'
				--52
				e.other:ScribeSpell(1552, 164);--'Circle of Summer'
				e.other:ScribeSpell(1553, 165);--'Call of Karana'
				e.other:ScribeSpell(1566, 166);--'Egress'
				e.other:ScribeSpell(1600, 167);--'Breath of Ro'
				e.other:ScribeSpell(24771, 168);--'Zephyr: Lavastorm'
				--53
				e.other:ScribeSpell(1554, 169);--'Spirit of Scale'
				e.other:ScribeSpell(1555, 170);--'Glamour of Tunare'
				e.other:ScribeSpell(1601, 171);--'Winged Death'
				--54
				e.other:ScribeSpell(1562, 172);--'Form of the Howler'
				e.other:ScribeSpell(1568, 173);--'Regrowth'
				e.other:ScribeSpell(1602, 174);--'Blizzard'
				e.other:ScribeSpell(1603, 175);--'Scoriae'
				--55
				e.other:ScribeSpell(1526, 176);--'Annul Magic'
				e.other:ScribeSpell(1529, 177);--'Exile Summoned'
				e.other:ScribeSpell(1556, 178);--'Tunare\'s Request'
				e.other:ScribeSpell(1557, 179);--'Girdle of Karana'
				e.other:ScribeSpell(1605, 180);--'Frost'
				--56
				e.other:ScribeSpell(1558, 181);--'Bladecoat'
				e.other:ScribeSpell(1604, 182);--'Breath of Karana'
				e.other:ScribeSpell(1608, 183);--'Entrapping Roots'
				e.other:ScribeSpell(1725, 184);--'Wake of Karana' 
				--57
				e.other:ScribeSpell(1559, 185);--'Natureskin'
				e.other:ScribeSpell(1567, 186);--'Succor'
				e.other:ScribeSpell(1767, 187);--'Bonds of Tunare'
				--58
				e.other:ScribeSpell(1560, 188);--'Shield of Blades'
				e.other:ScribeSpell(1569, 189);--'Regrowth of the Grove'
				e.other:ScribeSpell(1606, 190);--'Fist of Karana'
				--59
				e.other:ScribeSpell(1561, 191);--'Legacy of Thorn'
				e.other:ScribeSpell(1564, 192);--'Spirit of Oak'
				e.other:ScribeSpell(1607, 193);--'Wildfire'
				--60
				e.other:ScribeSpell(1531, 194);--'Banishment'
				e.other:ScribeSpell(1563, 195);--'Form of the Hunter'
				e.other:ScribeSpell(1565, 196);--'Mask of the Hunter'
				e.other:ScribeSpell(1719, 197);--'Engorging Roots'
				--Velious
				--30
				e.other:ScribeSpell(1439, 198);--'Fury of Air'
				--31
				e.other:ScribeSpell(1433, 199);--'Ring of Iceclad'
				--32
				e.other:ScribeSpell(1434, 200);--'Circle of Iceclad'
				--33
				e.other:ScribeSpell(2029, 201);--'Ring of Great Divide'
				e.other:ScribeSpell(25698, 202);--'Zephyr: Iceclad'
				--36
				e.other:ScribeSpell(2030, 203);--'Ring of Wakening Lands' 
				--37
				e.other:ScribeSpell(1437, 204);--'Ro\'s Fiery Sundering'
				--38
				e.other:ScribeSpell(1438, 205);--'Circle of Great Divide'
				--39
				e.other:ScribeSpell(2031, 206);--'Ring ofs Cobalt Scar'
				--40
				e.other:ScribeSpell(1398, 207);--'Circle of Wakening Lands'
				--41
				e.other:ScribeSpell(1285, 208);--'Summon Companion'
				--42
				e.other:ScribeSpell(1436, 209);--'Fixation of Ro'
				e.other:ScribeSpell(1440, 210);--'Circle of Cobalt Scar'
				e.other:ScribeSpell(25696, 211);--'Zephyr: Great Divide'
				--43
				e.other:ScribeSpell(25906, 212);--'Zephyr: Wakening Lands'
				--44
				e.other:ScribeSpell(25693, 213);--'Zephyr: Cobalt Scar'
				--48
				e.other:ScribeSpell(1435, 214);--'Improved Superior Camouflage'
				--55
				e.other:ScribeSpell(1290, 215);--'Chloroblast'
				e.other:ScribeSpell(1475, 216);--'Nature Walker\'s Behest'
				--60
				e.other:ScribeSpell(1291, 217);--'Nature\'s Touch'
				e.other:ScribeSpell(1442, 218);--'Protection of the Glades'
				e.other:ScribeSpell(2125, 219);--'Ancient: Legacy of Blades'
				e.other:ScribeSpell(2126, 220);--'Ancient: Starfire of Ro'
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--1
				e.other:ScribeSpell(2591, 221);--'Tangling Weeds'
				--9
				e.other:ScribeSpell(2511, 222);--'Protection of Wood' 
				--18
				e.other:ScribeSpell(2417, 223);--'Ring of Grimling'
				--19
				e.other:ScribeSpell(2433, 224);--'Ring of the Nexus'
				e.other:ScribeSpell(2512, 225);--'Protection of Rock' 
				--23
				e.other:ScribeSpell(2422, 226);--'Ring of Twilight'
				--26
				e.other:ScribeSpell(2432, 227);--'Circle of the Nexus'
				--27
				e.other:ScribeSpell(2513, 228);--'Protection of Steel'
				--29
				e.other:ScribeSpell(2419, 229);--'Circle of Grimling'
				e.other:ScribeSpell(2427, 230);--'Ring of Dawnshroud'
				--32
				e.other:ScribeSpell(25898, 231);--'Zephyr: Nexus'
				--33
				e.other:ScribeSpell(2424, 232);--'Circle of Twilight'
				--37
				e.other:ScribeSpell(2429, 233);--'Circle of Dawnshroud'
				--38
				e.other:ScribeSpell(25697, 234);--'Zephyr: Grimling'
				e.other:ScribeSpell(2946, 235);--'Remove Curse'
				--39
				e.other:ScribeSpell(2514, 236);--'Protection of Diamond'
				--41
				e.other:ScribeSpell(25905, 237);--'Zephyr: Twilight'
				--43
				e.other:ScribeSpell(1740, 238);--'Dustdevil'
				--49
				e.other:ScribeSpell(2515, 239);--'Protection of Nature'
				--50
				e.other:ScribeSpell(2881, 240);--'Everlasting Breath'
				e.other:ScribeSpell(2894, 241);--'Levitation'
				e.other:ScribeSpell(5571, 242);--'Tangle'
				--52
				e.other:ScribeSpell(2516, 243);--'Foliage Shield
				--54
				e.other:ScribeSpell(2517, 244);--'Spirit of Eagle'
				e.other:ScribeSpell(2880, 245);--'Remove Greater Curse'
				--56
				e.other:ScribeSpell(2518, 246);--'Ro\'s Smoldering Disjunction', 
				--57
				e.other:ScribeSpell(24772, 247);--'Zephyr: Dawnshroud', 'PLAYER_1
				--58
				e.other:ScribeSpell(2179, 248);--'Tunare\'s Renewal'
				e.other:ScribeSpell(2519, 249);--'Circle of Seasons'
				--59
				e.other:ScribeSpell(2188, 250);--'Protection of the Cabbage'
				--60
				e.other:ScribeSpell(2520, 251);--'Nature\'s Recovery'
				e.other:ScribeSpell(2877, 252);--'Moonfire'
				e.other:ScribeSpell(2887, 253);--'Mask of the Stalker'
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--17
				e.other:ScribeSpell(3583, 254);--'Tiny Companion'
				--25
				e.other:ScribeSpell(3182, 255);--'Ring of Knowledge'
				--29
				e.other:ScribeSpell(3601, 256);--'Harmony of Nature'
				--36
				e.other:ScribeSpell(3580, 257);--'Spirit of Ash'
				--38
				e.other:ScribeSpell(3184, 258);--'Circle of Knowledge'
				--45
				e.other:ScribeSpell(3579, 259);--'Share Form of the Great Wolf'
				--46
				e.other:ScribeSpell(24773, 260);--'Zephyr: Knowledge'
				--61
				e.other:ScribeSpell(5572, 261);--'Entangle'
				e.other:ScribeSpell(3192, 262);--'Earthen Roots'
				e.other:ScribeSpell(3433, 263);--'Replenishment'
				e.other:ScribeSpell(3434, 264);--'Storm\'s Fury'
				e.other:ScribeSpell(3435, 265);--'Hand of Ro'
				e.other:ScribeSpell(3436, 266);--'Winter\'s Storm'
				e.other:ScribeSpell(3473, 267);--'Catastrophe'
				--62
				e.other:ScribeSpell(3185, 268);--'Flight of Eagles'
				e.other:ScribeSpell(3346, 269);--'Imbue Storm'
				e.other:ScribeSpell(3437, 270);--'Immolation of Ro'
				e.other:ScribeSpell(3438, 271);--'Karana\'s Rage' 
				e.other:ScribeSpell(3439, 272);--'Nature\'s Might'
				e.other:ScribeSpell(3440, 273);--'Ro\'s Illumination'
				--63
				e.other:ScribeSpell(3234, 274);--'Protection of the Nine'
				e.other:ScribeSpell(3441, 275);--'Blessing of Replenishment'
				e.other:ScribeSpell(3442, 276);--'E`ci\'s Frosty Breath'
				e.other:ScribeSpell(3443, 277);--'Nature\'s Infusion'
				e.other:ScribeSpell(3445, 278);--'Command of Tunare'
				e.other:ScribeSpell(3446, 279);--'Swarming Death'
				e.other:ScribeSpell(3448, 280);--'Shield of Bracken'
				--64
				e.other:ScribeSpell(3232, 281);--'Karana\'s Renewal', '
				e.other:ScribeSpell(3444, 282);--'Protection of Seasons'
				e.other:ScribeSpell(3447, 283);--'Savage Roots'
				e.other:ScribeSpell(3449, 284);--'Summer\'s Flame' 
				e.other:ScribeSpell(3450, 285);--'Brackencoat'
				--65
				e.other:ScribeSpell(3238, 286);--'Destroy Summoned'
				e.other:ScribeSpell(3295, 287);--'Legacy of Bracken'
				e.other:ScribeSpell(3451, 288);--'Blessing of the Nine'
				e.other:ScribeSpell(3452, 289);--'Winter\'s Frost'
				e.other:ScribeSpell(3453, 290);--'Mask of the Forest' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--20
				e.other:ScribeSpell(3794, 291);--'Ring of Stonebrunt'
				--28
				e.other:ScribeSpell(3792, 292);--'Circle of Stonebrunt'
				--29
				e.other:ScribeSpell(3998, 293);--'Mass Imbue Emerald'
				e.other:ScribeSpell(4004, 294);--'Mass Imbue Plains Pebble'
				--34
				e.other:ScribeSpell(3834, 295);--'Healing Water'
				--35
				e.other:ScribeSpell(25903, 296);--'Zephyr: Stonebrunt'
				--52
				e.other:ScribeSpell(3693, 297);--'Pure Blood'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--8
				e.other:ScribeSpell(4056, 298);--'Remove Minor Curse'
				--11
				e.other:ScribeSpell(4261, 299);--'Reebo\'s Lesser Augury'
				--14
				e.other:ScribeSpell(4273, 300);--'Reebo\'s Lesser Exorcism'
				e.other:ScribeSpell(4285, 301);--'Reebo\'s Lesser Cleansing'
				--21
				e.other:ScribeSpell(4262, 302);--'Reebo\'s Augury'
				--23
				e.other:ScribeSpell(4057, 303);--'Remove Lesser Curse'
				--24
				e.other:ScribeSpell(4274, 304);--'Reebo\'s Exorcism'
				e.other:ScribeSpell(4286, 305);--'Reebo\'s Cleansing'
				--30
				e.other:ScribeSpell(4054, 306);--'Spirit of the Shrew'
				--31
				e.other:ScribeSpell(4263, 307);--'Reebo\'s Greater Augury'
				--34
				e.other:ScribeSpell(4275, 308);--'Reebo\'s Greater Exorcism'
				e.other:ScribeSpell(4287, 309);--'Reebo\'s Greater Cleansing'
				--35
				e.other:ScribeSpell(4055, 310);--'Pack Shrew'
				--49
				e.other:ScribeSpell(4104, 311);--'Vengeance of the Wild'
				--52
				e.other:ScribeSpell(4058, 312);--'Feral Pack'
				--55
				e.other:ScribeSpell(4105, 313);--'Vengeance of Nature'
				--64
				e.other:ScribeSpell(4106, 314);--'Vengeance of Tunare'
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--52
				e.other:ScribeSpell(4967, 315);--'Ring of Natimbi'
				e.other:ScribeSpell(5733, 316);--'Ring of Barindu'
				--54
				e.other:ScribeSpell(4966, 317);--'Circle of Natimbi'
				--55
				e.other:ScribeSpell(5731, 318);--'Circle of Barindu'
				--56
				e.other:ScribeSpell(25700, 319);--'Zephyr: Natimbi'
				--57
				e.other:ScribeSpell(25691, 320);--'Zephyr: Barindu'
				--65
				e.other:ScribeSpell(4883, 321);--'Sylvan Infusion'
				e.other:ScribeSpell(4884, 322);--'Sylvan Fire'
				e.other:ScribeSpell(4885, 323);--'Sylvan Embers'
				e.other:ScribeSpell(4974, 324);--'Ancient: Chaos Frost'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--53
				e.other:ScribeSpell(6185, 325);--'Ring of Bloodfields'
				--55
				e.other:ScribeSpell(6184, 326);--'Circle of Bloodfields'
				--57
				e.other:ScribeSpell(25692, 327);--'Zephyr: Bloodfields'
				--62
				e.other:ScribeSpell(6180, 328);--'Ring of Slaughter'
				--64
				e.other:ScribeSpell(6179, 329);--'Circle of Slaughter'
				--66
				e.other:ScribeSpell(5342, 330);--'Oaken Vigor'
				e.other:ScribeSpell(5343, 331);--'Stormwatch' 
				e.other:ScribeSpell(5345, 332);--'Tempest Wind'
				e.other:ScribeSpell(5346, 333);--'Earth Shiver'
				e.other:ScribeSpell(7000, 334);--'Instinctual Terror'
				--67
				e.other:ScribeSpell(24774, 335);--'Zephyr: Slaughter'
				e.other:ScribeSpell(5347, 336);--'Nature\'s Serenity'
				e.other:ScribeSpell(5348, 337);--'Immolation of the Sun'
				e.other:ScribeSpell(5350, 338);--'Lion\'s Strength'
				e.other:ScribeSpell(5351, 339);--'Sun\'s Corona'
				e.other:ScribeSpell(5354, 340);--'Glacier Breath'
				e.other:ScribeSpell(5358, 341);--'Nettle Shield'
				--68
				e.other:ScribeSpell(5352, 342);--'Steeloak Skin'
				e.other:ScribeSpell(5355, 343);--'Chlorotrope'
				e.other:ScribeSpell(5357, 344);--'Wasp Swarm'
				e.other:ScribeSpell(5362, 345);--'Nettlecoat'
				e.other:ScribeSpell(5364, 346);--'Desolate Summoned'
				e.other:ScribeSpell(6123, 347);--'Cloak of Nature'
				--69
				e.other:ScribeSpell(5353, 348);--'Blessing of Oak'
				e.other:ScribeSpell(5356, 349);--'Oaken Guard'
				e.other:ScribeSpell(5361, 350);--'Solstice Strike'
				e.other:ScribeSpell(5363, 351);--'Vengeance of the Sun'
				--70
				e.other:ScribeSpell(5349, 352);--'Hungry Vines'
				e.other:ScribeSpell(5359, 353);--'Nature\'s Beckon'
				e.other:ScribeSpell(5365, 354);--'Legacy of Nettles'
				e.other:ScribeSpell(5366, 355);--'Blessing of Steeloak'
				e.other:ScribeSpell(5367, 356);--'Glitterfrost'
				e.other:ScribeSpell(5368, 357);--'Mask of the Wild'
				e.other:ScribeSpell(5369, 358);--'Ancient: Glacier Frost'
				e.other:ScribeSpell(6141, 359);--'Ancient: Chlorobon'
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--57
				e.other:ScribeSpell(6998, 360);--'Instinctual Fear'
				--61
				e.other:ScribeSpell(6733, 361);--'Mire Thorns' 
				e.other:ScribeSpell(6999, 362);--'Instinctual Panic'
				--69
				e.other:ScribeSpell(6665, 363);--'Serpent Vines'
				
				-- :Later
				--4589, 364);--'Incarnate Anew'
				--8008, 365);--'Skin of the Reptile'
				--8010, 366);--'Spore Spiral'
				--8011, 367);--'Dawnstrike'
				--8235, 368);--'Circle of Undershore'
				--8237, 369);--'Ring of Undershore'
				--8497, 370);--'Barkspur'
				--8498, 371);--'Moonshadow'
				--8499, 372);--'Aura of Life'
				--8929, 373);--'Aura of the Grove'
				--8965, 374);--'Circle of Arcstone'
				--8967, 375);--'Ring of Arcstone'
				--9700, 376);--'Cure Corruption'
				--9701, 377);--'Cure Corruption Rk. II'
				--9702, 378);--'Cure Corruption Rk. III'
				--9721, 379);--'Resist Corruption'
				--9722, 380);--'Resist Corruption Rk. II'
				--9723, 381);--'Resist Corruption Rk. III'
				--9776, 382);--'Tectonic Quake' 
				--9777, 383);--'Tectonic Quake Rk. II' 
				--9778, 384);--'Tectonic Quake Rk. III' 
				--9824, 385);--'Blistering Sunray' 
				--9825, 386);--'Blistering Sunray Rk. II' 
				--9826, 387);--'Blistering Sunray Rk. III' 
				--9827, 388);--'Gale of the Stormborn' 
				--9828, 389);--'Gale of the Stormborn Rk. II' 
				--9829, 390);--'Gale of the Stormborn Rk. III'
				--9830, 391);--'Nature\'s Blazing Wrath' 
				--9831, 392);--'Nature\'s Blazing Wrath Rk. II'
				--9832, 393);--'Nature\'s Blazing Wrath Rk. III
				--9833, 394);--'Cloudburst Hail' 
				--9834, 395);--'Cloudburst Hail Rk. II' 
				--9835, 396);--'Cloudburst Hail Rk. III' 
				--9845, 397);--'Hoar Frost' '
				--9846, 398);--'Hoar Frost Rk. II' 
				--9847, 399);--'Hoar Frost Rk. III' 
				--9851, 400);--'Nature\'s Placidity' 
				--9852, 401);--'Nature\'s Placidity Rk. II'
				--9853, 402);--'Nature\'s Placidity Rk. III'
				--9857, 403);--'Mammoth\'s Strength' 
				--9858, 404);--'Mammoth\'s Strength Rk. II'
				--9859, 405);--'Mammoth\'s Strength Rk. III'
				--9863, 406);--'Icefall Breath' 
				--9864, 407);--'Icefall Breath Rk. II' 
				--9865, 408);--'Icefall Breath Rk. III' 
				--9866, 409);--'Viridifloral Shield' 
				--9867, 410);--'Viridifloral Shield Rk. II'
				--9868, 411);--'Viridifloral Shield Rk. III'
				--9869, 412);--'Skin to Vines'
				--9870, 413);--'Skin to Vines Rk. II' 
				--9871, 414);--'Skin to Vines Rk. III' 
				--9872, 415);--'Direwild Skin'
				--9873, 416);--'Direwild Skin Rk. II' 
				--9874, 417);--'Direwild Skin Rk. III' 
				--9875, 418);--'Pure Life'
				--9876, 419);--'Pure Life Rk. II' 
				--9877, 420);--'Pure Life Rk. III' 
				--9878, 421);--'Swarm of Fireants' 
				--9879, 422);--'Swarm of Fireants Rk. II' 
				--9880, 423);--'Swarm of Fireants Rk. III' 
				--9881, 424);--'Viridicoat'
				--9882, 425);--'Viridicoat Rk. II' 
				--9883, 426);--'Viridicoat Rk. III' 
				--9887, 427);--'Winter\'s Flame' 
				--9888, 428);--'Winter\'s Flame Rk. II' 
				--9889, 429);--'Winter\'s Flame Rk. III' 
				--9890, 430);--'Winter\'s Flame Frostbite' 
				--9891, 431);--'Winter\'s Flame Frostbite' 
				--9892, 432);--'Winter\'s Flame Frostbite' 
				--9893, 433);--'Winter\'s Flame Burn' 
				--9894, 434);--'Winter\'s Flame Burn' 
				--9895, 435);--'Winter\'s Flame Burn' 
				--9902, 436);--'Sunscorch'
				--9903, 437);--'Sunscorch Rk. II' 
				--9904, 438);--'Sunscorch Rk. III' 
				--9905, 439);--'Direwood Guard' 
				--9906, 440);--'Direwood Guard Rk. II' 
				--9907, 441);--'Direwood Guard Rk. III' 
				--9911, 442);--'Equinox Burn'
				--9912, 443);--'Equinox Burn Rk. II' 
				--9913, 444);--'Equinox Burn Rk. III' 
				--9917, 445);--'Vinelash Cascade' 
				--9918, 446);--'Vinelash Cascade Rk. II' 
				--9919, 447);--'Vinelash Cascade Rk. III' 
				--9920, 448);--'Chant of the Napaea'
				--9921, 449);--'Chant of the Napaea Rk. II'
				--9922, 450);--'Chant of the Napaea Rk. III'
				--9923, 451);--'Beast\'s Beckoning' 
				--9924, 452);--'Beast\'s Beckoning Rk. II' 
				--9925, 453);--'Beast\'s Beckoning Rk. III'
				--9926, 454);--'Legacy of Viridiflora' 
				--9927, 455);--'Legacy of Viridiflora Rk. II' 
				--9928, 456);--'Legacy of Viridiflora Rk. III'
				--9929, 457);--'Blessing of the Direwild' 
				--9930, 458);--'Blessing of the Direwild Rk. II
				--9931, 459);--'Blessing of the Direwild Rk. II
				--9932, 460);--'Rime Crystals'
				--9933, 461);--'Rime Crystals Rk. II' 
				--9934, 462);--'Rime Crystals Rk. III' 
				--9941, 463);--'Adrenaline Surge' 
				--9942, 464);--'Adrenaline Surge Rk. II' 
				--9943, 465);--'Adrenaline Surge Rk. III' 
				--9947, 466);--'Second Life' 
				--9948, 467);--'Second Life Rk. II' 
				--9949, 468);--'Second Life Rk. III' 
				--9950, 469);--'Zephyr: Direwind' 
				--9951, 470);--'Circle of Direwind' 
				--9952, 471);--'Ring of Direwind' 
				--9953, 472);--'Zephyr: The Steppes' 
				--9954, 473);--'Circle of The Steppes' 
				--9955, 474);--'Ring of The Steppes' 
				--9956, 475);--'Zephyr: Blightfire Moors' 
				--9957, 476);--'Circle of Blightfire Moors'
				--9958, 477);--'Ring of Blightfire Moors' 
				--10735, 478);--'Annihilate the Unnatural' 
				--10736, 479);--'Annihilate the Unnatural Rk. I
				--10737, 480);--'Annihilate the Unnatural Rk. I
				--11766, 481);--'Fernspur'
				--11767, 482);--'Fernspur Rk. II' 
				--11768, 483);--'Fernspur Rk. III' 
				--11770, 484);--'Lunarlight' 
				--11771, 485);--'Lunarlight Rk. II' 
				--11772, 486);--'Lunarlight Rk. III' 
				--11980, 487);--'Zephyr: Buried Sea' 
				--11981, 488);--'Circle of Buried Sea' 
				--11982, 489);--'Ring of Buried Sea' 
				--15886, 490);--'Zephyr: Loping Plains' 
				--15887, 491);--'Circle of Loping Plains' 
				--15888, 492);--'Ring of Loping Plains' 
				--21398, 493);--'Eradicate Poison' 
				--21399, 494);--'Eradicate Disease' 
				--21400, 495);--'Eradicate Curse' 
				--24775, 496);--'Zephyr: Undershore' 
				--24776, 497);--'Zephyr: Arcstone' 
				--27757, 498);--'Primary Anchor Push' 
				--27758, 499);--'Secondary Anchor Push' 
				--27779, 500);--'Primary Anchor Ring' 
				--27780, 501);--'Zephyr: Primary Anchor' 
				--27781, 502);--'Primary Anchor Circle' 
				--27782, 503);--'Secondary Anchor Ring' 
				--27783, 504);--'Zephyr: Secondary Anchor' 
				--27784, 505);--'Secondary Anchor Circle' 
				--33099, 506);--'Teleport Guild Hall Anchor'
				--41188, 507);--'Teleport Guild Hall Anchor'
			end 	
		end  
	end
	if (e.other:GetClass() == 10) then --shm
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(200, 0);--'Minor Healing' 
			e.other:ScribeSpell(201, 1);--'Flash of Light'
			e.other:ScribeSpell(205, 2);--'True North'  
			e.other:ScribeSpell(213, 3);--'Cure Disease' 
			e.other:ScribeSpell(225, 4);--'Endure Cold'  
			e.other:ScribeSpell(266, 5);--'Dexterous Aura'
			e.other:ScribeSpell(267, 6);--'Inner Fire'
			e.other:ScribeSpell(40, 7);--'Strengthen' 
			e.other:ScribeSpell(93, 8);--'Burst of Flame' 
			--2
			e.other:ScribeSpell(203, 9);--'Cure Poison' 
			e.other:ScribeSpell(211, 10);--'Summon Drink'
			e.other:ScribeSpell(272, 11);--'Spirit Pouch'
			--3
			e.other:ScribeSpell(269, 12);--'Feet like Cat'
			e.other:ScribeSpell(274, 13);--'Scale Skin'
			--4
			e.other:ScribeSpell(271, 14);--'Fleeting Fury'
			e.other:ScribeSpell(275, 15);--'Frost Rift'  
			e.other:ScribeSpell(75, 16);--'Sicken'
			--5
			e.other:ScribeSpell(224, 17);--'Endure Fire'
			e.other:ScribeSpell(270, 18);--'Drowsy'
			e.other:ScribeSpell(36, 19);--'Gate'  
			--6
			e.other:ScribeSpell(276, 20);--'Serpent Sight'
			e.other:ScribeSpell(279, 21);--'Spirit of Bear' 
			e.other:ScribeSpell(50, 22);--'Summon Food'
			--7
			e.other:ScribeSpell(212, 23);--'Cure Blindness'
			e.other:ScribeSpell(238, 24);--'Sense Animals' 
			e.other:ScribeSpell(79, 25);--'Spirit Sight'  
			--8
			e.other:ScribeSpell(226, 26);--'Endure Disease'
			e.other:ScribeSpell(277, 27);--'Tainted Breath'
			--9
			e.other:ScribeSpell(17, 28);--'Light Healing'  
			e.other:ScribeSpell(278, 29);--'Spirit of Wolf'
			--10
			e.other:ScribeSpell(255, 30);--'Invisibility versus Animals' 
			e.other:ScribeSpell(261, 31);--'Levitate'
			e.other:ScribeSpell(284, 32);--'Spirit of Snake'
			--11
			e.other:ScribeSpell(227, 33);--'Endure Poison'
			e.other:ScribeSpell(280, 34);--'Burst of Strength' 
			e.other:ScribeSpell(283, 35);--'Turtle Skin' 
			--12
			e.other:ScribeSpell(230, 36);--'Root'
			e.other:ScribeSpell(281, 37);--'Disempower'
			e.other:ScribeSpell(86, 38);--'Enduring Breath'
			--13
			e.other:ScribeSpell(505, 39);--'Walking Sleep'  
			--14
			e.other:ScribeSpell(282, 40);--'Spirit Strike'
			e.other:ScribeSpell(35, 41);--'Bind Affinity'
			--15
			e.other:ScribeSpell(345, 42);--'Shrink'
			e.other:ScribeSpell(365, 43);--'Infectious Cloud'
			--16
			e.other:ScribeSpell(308, 44);--'Frenzy'
			--17
			e.other:ScribeSpell(526, 45);--'Insidious Fever'
			e.other:ScribeSpell(580, 46);--'Vision'
			--18
			e.other:ScribeSpell(110, 47);--'Malaise' 
			e.other:ScribeSpell(147, 48);--'Spirit Strength'
			e.other:ScribeSpell(148, 49);--'Spirit of Cat'
			--19
			e.other:ScribeSpell(12, 50);--'Healing'  
			e.other:ScribeSpell(228, 51);--'Endure Magic'
			e.other:ScribeSpell(48, 52);--'Cancel Magic' 
			e.other:ScribeSpell(511, 53);--'Affliction'
			--20
			e.other:ScribeSpell(640, 54);--'Creeping Vision' 
			e.other:ScribeSpell(649, 55);--'Protect'
			--21
			e.other:ScribeSpell(146, 56);--'Spirit of Monkey'
			e.other:ScribeSpell(149, 57);--'Spirit of Ox'
			e.other:ScribeSpell(220, 58);--'Spirit of Cheetah'
			--22
			e.other:ScribeSpell(437, 59);--'Poison Storm' 
			e.other:ScribeSpell(96, 60);--'Counteract Disease'
			--23
			e.other:ScribeSpell(144, 61);--'Regeneration'
			e.other:ScribeSpell(265, 62);--'Cannibalize'
			e.other:ScribeSpell(508, 63);--'Frost Strike' 
			--24
			e.other:ScribeSpell(434, 64);--'Envenomed Breath'
			e.other:ScribeSpell(61, 65);--'Resist Cold'
			--25
			e.other:ScribeSpell(245, 66);--'Befriend Animal' 
			e.other:ScribeSpell(349, 67);--'Rising Dexterity'
			--26
			e.other:ScribeSpell(39, 68);--'Quickness'
			e.other:ScribeSpell(46, 69);--'Ultravision'
			e.other:ScribeSpell(95, 70);--'Counteract Poison'
			--27
			e.other:ScribeSpell(42, 71);--'Invisibility' 
			e.other:ScribeSpell(506, 72);--'Tagar\'s Insects'
			e.other:ScribeSpell(60, 73);--'Resist Fire'
			--28
			e.other:ScribeSpell(150, 74);--'Alluring Aura' 
			e.other:ScribeSpell(151, 75);--'Raging Strength' 
			--29
			e.other:ScribeSpell(15, 76);--'Greater Healing'
			e.other:ScribeSpell(162, 77);--'Listless Power' 
			e.other:ScribeSpell(1884, 78);--'Imbue Ivory'  
			e.other:ScribeSpell(1885, 79);--'Imbue Amber'  
			e.other:ScribeSpell(1886, 80);--'Imbue Sapphire'
			e.other:ScribeSpell(1895, 81);--'Imbue Diamond'
			--30
			e.other:ScribeSpell(161, 82);--'Health'
			e.other:ScribeSpell(326, 83);--'Fury'
			e.other:ScribeSpell(63, 84);--'Resist Disease'
			--31
			e.other:ScribeSpell(160, 85);--'Nimble'
			e.other:ScribeSpell(31, 86);--'Scourge'
			e.other:ScribeSpell(431, 87);--'Shifting Shield' 
			--32
			e.other:ScribeSpell(111, 88);--'Malaisement'
			e.other:ScribeSpell(164, 89);--'Companion Spirit' 
			e.other:ScribeSpell(167, 90);--'Talisman of Tnarg'  
			e.other:ScribeSpell(260, 91);--'Charm Animals'
			--33
			e.other:ScribeSpell(131, 92);--'Instill' 
			e.other:ScribeSpell(509, 93);--'Winter\'s Roar'
			--34
			--N/A
			--35
			e.other:ScribeSpell(62, 94);--'Resist Poison' 
			--36
			e.other:ScribeSpell(384, 95);--'Assiduous Vision'
			e.other:ScribeSpell(438, 96);--'Gale of Poison' 
			--37
			e.other:ScribeSpell(155, 97);--'Glamour' 
			e.other:ScribeSpell(435, 98);--'Venom of the Snake' 
			e.other:ScribeSpell(577, 99);--'Vigilant Spirit'
			--38
			e.other:ScribeSpell(507, 100);--'Togor\'s Insects'
			e.other:ScribeSpell(527, 101);--'Insidious Malady'
			--39
			e.other:ScribeSpell(134, 102);--'Blinding Luminance'
			e.other:ScribeSpell(145, 103);--'Chloroplast' 
			e.other:ScribeSpell(152, 104);--'Deftness'
			e.other:ScribeSpell(153, 105);--'Furious Strength'
			--40
			e.other:ScribeSpell(168, 106);--'Talisman of Altuna'
			e.other:ScribeSpell(6874, 107);--'Spirit Salve'
			--41
			e.other:ScribeSpell(154, 108);--'Agility'
			e.other:ScribeSpell(163, 109);--'Incapacitate'
			e.other:ScribeSpell(165, 110);--'Guardian Spirit'
			--42
			e.other:ScribeSpell(170, 111);--'Alacrity'
			e.other:ScribeSpell(389, 112);--'Guardian' 
			--43
			e.other:ScribeSpell(158, 113);--'Stamina' 
			e.other:ScribeSpell(64, 114);--'Resist Magic'
			--44
			e.other:ScribeSpell(49, 115);--'Nullify Magic' 
			e.other:ScribeSpell(510, 116);--'Blizzard Blast'
			--45
			e.other:ScribeSpell(166, 117);--'Frenzied Spirit'
			e.other:ScribeSpell(337, 118);--'Rage' 
			e.other:ScribeSpell(9, 119);--'Superior Healing'
			--46
			e.other:ScribeSpell(159, 120);--'Strength'
			--47
			e.other:ScribeSpell(156, 121);--'Charisma' 
			--48
			e.other:ScribeSpell(112, 122);--'Malosi'
			e.other:ScribeSpell(157, 123);--'Dexterity'
			e.other:ScribeSpell(98, 124);--'Abolish Disease'
			--49
			e.other:ScribeSpell(32, 125);--'Plague'
			e.other:ScribeSpell(436, 126);--'Envenomed Bolt'
		end 			
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--22
				e.other:ScribeSpell(424, 127);--'Scale of Wolf'
				--29
				e.other:ScribeSpell(1891, 128);--'Imbue Jade'  
				--38
				e.other:ScribeSpell(754, 129);--'Cannibalize II'
				--50
				e.other:ScribeSpell(1430, 130);--'Spirit Quickening' 
				e.other:ScribeSpell(1570, 131);--'Talisman of Jasinth'  
				e.other:ScribeSpell(6877, 132);--'Kragg\'s Salve'
				--51
				e.other:ScribeSpell(132, 133);--'Immobilize'
				e.other:ScribeSpell(1588, 134);--'Turgur\'s Insects'
				--52
				e.other:ScribeSpell(1554, 135);--'Spirit of Scale' 
				e.other:ScribeSpell(1568, 136);--'Regrowth'
				e.other:ScribeSpell(1573, 137);--'Insidious Decay' 
				e.other:ScribeSpell(1819, 138);--'Primal Essence' 
				--53
				e.other:ScribeSpell(1571, 139);--'Talisman of Shadoo'
				e.other:ScribeSpell(1592, 140);--'Cripple' 
				e.other:ScribeSpell(1594, 141);--'Deliriously Nimble'
				--54
				e.other:ScribeSpell(1572, 142);--'Cannibalize III'
				e.other:ScribeSpell(1584, 143);--'Shroud of the Spirits' 
				e.other:ScribeSpell(1586, 144);--'Ice Strike' 
				e.other:ScribeSpell(1595, 145);--'Riotous Health' 
				--55
				e.other:ScribeSpell(1526, 146);--'Annul Magic'  
				e.other:ScribeSpell(1574, 147);--'Spirit of the Howler' 
				e.other:ScribeSpell(1585, 148);--'Talisman of Kragg'  
				e.other:ScribeSpell(1587, 149);--'Torrent of Poison'
				--56
				e.other:ScribeSpell(133, 150);--'Paralyzing Earth' 
				e.other:ScribeSpell(171, 151);--'Celerity'
				e.other:ScribeSpell(1575, 152);--'Acumen' 
				e.other:ScribeSpell(1590, 153);--'Bane of Nife' 
				--57
				e.other:ScribeSpell(1577, 154);--'Malosini' 
				e.other:ScribeSpell(1579, 155);--'Talisman of the Cat'  
				e.other:ScribeSpell(1580, 156);--'Talisman of the Brute' 
				e.other:ScribeSpell(1593, 157);--'Maniacal Strength'
				--58
				e.other:ScribeSpell(1581, 158);--'Talisman of the Rhino' 
				e.other:ScribeSpell(1582, 159);--'Talisman of the Serpent' 
				e.other:ScribeSpell(1589, 160);--'Tigir\'s Insects'
				e.other:ScribeSpell(1596, 161);--'Mortal Deftness'
				--59
				e.other:ScribeSpell(1583, 162);--'Talisman of the Raptor'
				e.other:ScribeSpell(1591, 163);--'Pox of Bertoxxulous'  
				e.other:ScribeSpell(1597, 164);--'Unfailing Reverence'  
				e.other:ScribeSpell(1599, 165);--'Voice of the Berserker' 
				--60
				e.other:ScribeSpell(1576, 166);--'Torpor'
				e.other:ScribeSpell(1578, 167);--'Malo' 
				e.other:ScribeSpell(1598, 168);--'Avatar' 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--34
				e.other:ScribeSpell(1427, 169);--'Shock of the Tainted' 
				--35
				e.other:ScribeSpell(1428, 170);--'Tumultuous Strength'  
				--40
				e.other:ScribeSpell(1285, 171);--'Summon Companion'
				--42
				e.other:ScribeSpell(1429, 172);--'Blast of Poison' 
				--55
				e.other:ScribeSpell(1290, 173);--'Chloroblast'
				e.other:ScribeSpell(1431, 174);--'Form of the Great Bear' 
				--58
				e.other:ScribeSpell(1332, 175);--'Cannibalize IV'
				--60
				e.other:ScribeSpell(1377, 176);--'Primal Avatar'
				e.other:ScribeSpell(1432, 177);--'Focus of Spirit' 
				e.other:ScribeSpell(2112, 178);--'Ancient: Feral Avatar' 
				e.other:ScribeSpell(2113, 179);--'Ancient: Scourge of Nife' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--8
				e.other:ScribeSpell(2521, 180);--'Talisman of the Beast' 
				--16
				e.other:ScribeSpell(2522, 181);--'Grow' 
				--25
				e.other:ScribeSpell(2523, 182);--'Form of the Bear'
				--36
				e.other:ScribeSpell(2524, 183);--'Spirit of Bih`Li'
				--38
				e.other:ScribeSpell(2946, 184);--'Remove Curse'
				--46
				e.other:ScribeSpell(2525, 185);--'Harnessing of Spirit'
				--51
				e.other:ScribeSpell(2881, 186);--'Everlasting Breath'
				e.other:ScribeSpell(2894, 187);--'Levitation'
				--52
				e.other:ScribeSpell(2526, 188);--'Disinfecting Aura'
				--54
				e.other:ScribeSpell(2527, 396);--Plague of Insects'
				e.other:ScribeSpell(2880, 189);--'Remove Greater Curse' 
				--56
				e.other:ScribeSpell(2528, 190);--'Regrowth of Dar Khura' 
				--58
				e.other:ScribeSpell(2435, 191);--'Kragg\'s Mending'
				e.other:ScribeSpell(2529, 192);--'Talisman of Epuration' 
				e.other:ScribeSpell(2886, 193);--'Acumen of Dar Khura'  
				--60
				e.other:ScribeSpell(2530, 194);--'Khura\'s Focusing' 
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--16
				e.other:ScribeSpell(3583, 195);--'Tiny Companion'
				--47
				e.other:ScribeSpell(3573, 196);--'Shock of Venom'
				--49
				e.other:ScribeSpell(3454, 197);--'Infusion of Spirit' 
				--54
				e.other:ScribeSpell(3574, 198);--'Blast of Venom'
				--61
				e.other:ScribeSpell(3377, 199);--'True Spirit'
				e.other:ScribeSpell(3378, 200);--'Agility of the Wrulan' 
				e.other:ScribeSpell(3379, 201);--'Spear of Torment'  
				e.other:ScribeSpell(3380, 202);--'Cloud of Grummus'  
				e.other:ScribeSpell(3433, 203);--'Replenishment'
				--62
				e.other:ScribeSpell(3195, 204);--'Greater Immobilize'  '
				e.other:ScribeSpell(3233, 205);--'Tnarg\'s Mending'
				e.other:ScribeSpell(3235, 206);--'Focus of Soul'  
				e.other:ScribeSpell(3381, 207);--'Ancestral Guard' 
				e.other:ScribeSpell(3382, 208);--'Endurance of the Boar' 
				e.other:ScribeSpell(3383, 209);--'Talisman of the Wrulan' 
				e.other:ScribeSpell(3384, 210);--'Talisman of the Tribunal' 
				e.other:ScribeSpell(3595, 211);--'Imbue Justice'
				--63
				e.other:ScribeSpell(172, 212);--'Swift Like the Wind'
				e.other:ScribeSpell(3385, 213);--'Tears of Saryrn'
				e.other:ScribeSpell(3386, 214);--'Malicious Decay'
				e.other:ScribeSpell(3387, 215);--'Malosinia' 
				e.other:ScribeSpell(3388, 216);--'Strength of the Diaku' 
				e.other:ScribeSpell(3389, 217);--'Talisman of the Boar' 
				e.other:ScribeSpell(3441, 218);--'Blessing of Replenishment' 
				e.other:ScribeSpell(3591, 219);--'Imbue Disease'
				--64
				e.other:ScribeSpell(3196, 220);--'Petrifying Earth'  
				e.other:ScribeSpell(3390, 221);--'Velium Strike' 
				e.other:ScribeSpell(3391, 222);--'Talisman of Celerity' 
				e.other:ScribeSpell(3392, 223);--'Talisman of the Diaku' 
				e.other:ScribeSpell(3393, 224);--'Tiny Terror'   
				e.other:ScribeSpell(3394, 225);--'Breath of Ultor' 
				e.other:ScribeSpell(3593, 226);--'Imbue War'
				--65
				e.other:ScribeSpell(3395, 227);--'Malos'
				e.other:ScribeSpell(3396, 228);--'Blood of Saryrn' 
				e.other:ScribeSpell(3397, 229);--'Focus of the Seventh' 
				e.other:ScribeSpell(3398, 230);--'Quiescence'
				e.other:ScribeSpell(3399, 231);--'Ferine Avatar'
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--29
				e.other:ScribeSpell(3994, 232);--'Mass Imbue Amber'  
				e.other:ScribeSpell(3997, 233);--'Mass Imbue Diamond'
				e.other:ScribeSpell(4000, 234);--'Mass Imbue Ivory'
				e.other:ScribeSpell(4001, 235);--'Mass Imbue Jade'  
				e.other:ScribeSpell(4007, 236);--'Mass Imbue Sapphire'  
				--44
				e.other:ScribeSpell(3694, 237);--'Stoicism' 
				--52
				e.other:ScribeSpell(3842, 238);--'Blood of Nadox'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--9
				e.other:ScribeSpell(4056, 239);--'Remove Minor Curse'
				--13
				e.other:ScribeSpell(4261, 240);--'Reebo\'s Lesser Augury' 
				--14
				e.other:ScribeSpell(4273, 241);--'Reebo\'s Lesser Exorcism' 
				e.other:ScribeSpell(4285, 242);--'Reebo\'s Lesser Cleansing' 
				--23
				e.other:ScribeSpell(4262, 243);--'Reebo\'s Augury'   
				--24
				e.other:ScribeSpell(4057, 244);--'Remove Lesser Curse'
				e.other:ScribeSpell(4274, 245);--'Reebo\'s Exorcism'  
				e.other:ScribeSpell(4286, 246);--'Reebo\'s Cleansing' 
				--29
				e.other:ScribeSpell(4054, 247);--'Spirit of the Shrew'  
				--33
				e.other:ScribeSpell(4263, 248);--'Reebo\'s Greater Augury' 
				--34
				e.other:ScribeSpell(4055, 249);--'Pack Shrew' 
				e.other:ScribeSpell(4092, 250);--'Curse'
				e.other:ScribeSpell(4275, 251);--'Reebo\'s Greater Exorcism'
				e.other:ScribeSpell(4287, 252);--'Reebo\'s Greater Cleansing' 
				--43
				e.other:ScribeSpell(4093, 253);--'Odium'
				--54
				e.other:ScribeSpell(4094, 254);--'Anathema'  
				--64
				e.other:ScribeSpell(4095, 255);--'Bane'
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4899, 256);--'Breath of Trushar' 
				e.other:ScribeSpell(4900, 257);--'Balance of the Nihil' 
				e.other:ScribeSpell(4901, 258);--'Daluda\'s Mending'  
				e.other:ScribeSpell(4979, 259);--'Ancient: Chaotic Pain' 
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5390, 260);--'Spirit of Sense'  
				e.other:ScribeSpell(5391, 261);--'Yoppa\'s Spear of Venom' 
				e.other:ScribeSpell(5392, 262);--'Putrid Decay'
				e.other:ScribeSpell(5393, 263);--'Spirit of Perseverance' 
				e.other:ScribeSpell(5394, 264);--'Crippling Spasm' 
				--67
				e.other:ScribeSpell(5389, 265);--'Farrel\'s Companion'  
				e.other:ScribeSpell(5397, 266);--'Ancestral Bulwark'
				e.other:ScribeSpell(5402, 267);--'Spirit Veil'
				e.other:ScribeSpell(5404, 268);--'Spirit of Might'  
				e.other:ScribeSpell(5411, 269);--'Breath of Wunshi' 
				--68
				e.other:ScribeSpell(5395, 270);--'Yoppa\'s Mending'  '',
				e.other:ScribeSpell(5396, 271);--'Wunshi\'s Focusing'  '
				e.other:ScribeSpell(5398, 272);--'Spirit of Fortitude'  
				e.other:ScribeSpell(5399, 273);--'Talisman of Sense'  ''
				e.other:ScribeSpell(5401, 274);--'Yoppa\'s Rain of Venom' 
				e.other:ScribeSpell(5403, 275);--'Pained Memory' 
				--69
				e.other:ScribeSpell(5405, 276);--'Talisman of Fortitude' 
				e.other:ScribeSpell(5406, 277);--'Talisman of Perseverance' 
				e.other:ScribeSpell(5408, 278);--'Ice Age'  
				e.other:ScribeSpell(5410, 279);--'Pure Spirit' 
				e.other:ScribeSpell(5412, 280);--'Curse of Sisslak'
				e.other:ScribeSpell(6827, 281);--'Balance of Discord'
				--70
				e.other:ScribeSpell(5400, 282);--'Vindictive Spirit'  
				e.other:ScribeSpell(5409, 283);--'Talisman of Might'  
				e.other:ScribeSpell(5414, 284);--'Blood of Yoppa'  
				e.other:ScribeSpell(5415, 285);--'Talisman of Wunshi'
				e.other:ScribeSpell(5416, 286);--'Spiritual Serenity'
				e.other:ScribeSpell(5417, 287);--'Champion' 
				e.other:ScribeSpell(5418, 288);--'Ancient: Ancestral Calling' 
				e.other:ScribeSpell(6142, 289);--'Ancient: Wilslik\'s Mending' 
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--57
				e.other:ScribeSpell(6907, 290);--'Spirit of the Jaguar' 
				--61
				e.other:ScribeSpell(6735, 291);--'Spirit of the Leopard' 
				--69
				e.other:ScribeSpell(6667, 292);--'Spirit of the Panther' 
				
				-- :Later
				--4589, 293);--'Incarnate Anew' 
				--6906, 294);--'Spirit of the Puma' 
				--8015, 295);--'Lingering Sloth'   
				--8017, 296);--'Hungry Plague'   
				--8018, 297);--'Breath of Antraygus'  
				--8501, 298);--'Nectar of Pain'  
				--8503, 299);--'Ghost of Renewal'  
				--8504, 300);--'Idol of Malos'  
				--8930, 301);--'Idol of Malo'
				--9700, 302);--'Cure Corruption'
				--9701, 303);--'Cure Corruption Rk. II' 
				--9702, 304);--'Cure Corruption Rk. III' 
				--9920, 305);--'Chant of the Napaea' '
				--9921, 306);--'Chant of the Napaea Rk. II' 
				--9922, 307);--'Chant of the Napaea Rk. III' 
				--9947, 308);--'Second Life'   -- 
				--9948, 309);--'Second Life Rk. II'  
				--9949, 310);--'Second Life Rk. III'  
				--9959, 311);--'Preternatural Foresight' 
				--9960, 312);--'Preternatural Foresight Rk. II'
				--9961, 313);--'Preternatural Foresight Rk. III'
				--9962, 314);--'Ahnkaul\'s Spear of Venom' 
				--9963, 315);--'Ahnkaul\'s Spear of Venom Rk. II'
				--9964, 316);--'Ahnkaul\'s Spear of Venom Rk. III'
				--9968, 317);--'Spirit of the Stoic One' 
				--9969, 318);--'Spirit of the Stoic One Rk. II'
				--9970, 319);--'Spirit of the Stoic One Rk. III'
				--9974, 320);--'Talisman of the Panther' 
				--9975, 321);--'Talisman of the Panther Rk. II',
				--9976, 322);--'Talisman of the Panther Rk. III'
				--9980, 323);--'Malosinise'  
				--9981, 324);--'Malosinise Rk. II' 
				--9982, 325);--'Malosinise Rk. III'
				--9983, 326);--'Kyrah\'s Faithful' 
				--9993, 327);--'Breath of Ternsmochin' 
				--9994, 328);--'Breath of Ternsmochin Rk. II' 
				--9995, 329);--'Breath of Ternsmochin Rk. III'
				--9999, 330);--'Feralize'  
				--10000, 331);--'Feralize Rk. II'  
				--10001, 332);--'Feralize Rk. III' 
				--10002, 333);--'Ahnkaul\'s Mending'  
				--10003, 334);--'Ahnkaul\'s Mending Rk. II' 
				--10004, 335);--'Ahnkaul\'s Mending Rk. III' 
				--10005, 336);--'Dire Focusing'   
				--10006, 337);--'Dire Focusing Rk. II' 
				--10007, 338);--'Dire Focusing Rk. III' 
				--10011, 339);--'Talisman of Foresight' 
				--10012, 340);--'Talisman of Foresight Rk. II'
				--10013, 341);--'Talisman of Foresight Rk. III'
				--10014, 342);--'Ancestral Bargain'  '
				--10015, 343);--'Ancestral Bargain Rk. II' 
				--10016, 344);--'Ancestral Bargain Rk. III' 
				--10017, 345);--'Sting of the Queen'  
				--10018, 346);--'Sting of the Queen Rk. II' 
				--10019, 347);--'Sting of the Queen Rk. III' 
				--10026, 348);--'Talisman of Persistence' 
				--10027, 349);--'Talisman of Persistence Rk. II', 
				--10028, 350);--'Talisman of Persistence Rk. III'
				--10029, 351);--'Talisman of the Stoic One' 
				--10030, 352);--'Talisman of the Stoic One Rk. II'
				--10031, 353);--'Talisman of the Stoic One Rk. III
				--10032, 354);--'Glacial Avalanche'  '
				--10033, 355);--'Glacial Avalanche Rk. II' 
				--10034, 356);--'Glacial Avalanche Rk. III' 
				--10038, 357);--'Juju'  
				--10039, 358);--'Juju Rk. II'  
				--10040, 359);--'Juju Rk. III'  
				--10044, 360);--'Wishka\'s Favor'  
				--10045, 361);--'Wishka\'s Favor Rk. II' 
				--10046, 362);--'Wishka\'s Favor Rk. III' 
				--10047, 363);--'Tortugone\'s Drowse' 
				--10048, 364);--'Tortugone\'s Drowse Rk. II' 
				--10049, 365);--'Tortugone\'s Drowse Rk. III' 
				--10053, 366);--'Vengeance of Ahnkaul' 
				--10054, 367);--'Vengeance of Ahnkaul Rk. II' 
				--10055, 368);--'Vengeance of Ahnkaul Rk. III'
				--10056, 369);--'Talisman of the Dire' 
				--10057, 370);--'Talisman of the Dire Rk. II' 
				--10058, 371);--'Talisman of the Dire Rk. III'
				--10059, 372);--'Halcyon Breeze'   
				--10060, 373);--'Halcyon Breeze Rk. II' 
				--10061, 374);--'Halcyon Breeze Rk. III' 
				--10068, 375);--'Malis'
				--10069, 376);--'Malis Rk. II'
				--10070, 377);--'Malis Rk. III'   
				--11773, 378);--'Fulkitcher Weave'
				--11774, 379);--'Fulkitcher Weave Rk. II' 
				--11775, 380);--'Fulkitcher Weave Rk. III' 
				--11776, 381);--'Nectar of Agony'  
				--11777, 382);--'Nectar of Agony Rk. II' 
				--11778, 383);--'Nectar of Agony Rk. III' 
				--11779, 384);--'Specter of Renewal'  
				--11780, 385);--'Specter of Renewal Rk. II' 
				--11781, 386);--'Specter of Renewal Rk. III' 
				--11782, 387);--'Lassitude'  
				--11783, 388);--'Lassitude Rk. II' 
				--11784, 389);--'Lassitude Rk. III'
				--21398, 390);--'Eradicate Poison' 
				--21399, 391);--'Eradicate Disease'
				--21400, 392);--'Eradicate Curse'  
				--24956, 393);--'Lizard Liver'  
				--24957, 394);--'A Little Luck' 
			end 
		end  
	end
	if (e.other:GetClass() == 11) then --nec
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(221, 0);--'Sense the Dead'   
			e.other:ScribeSpell(235, 1);--'Invisibility versus Undead' 
			e.other:ScribeSpell(288, 2);--'Minor Shielding'  
			e.other:ScribeSpell(331, 3);--'Reclaim Energy'   
			e.other:ScribeSpell(338, 4);--'Cavorting Bones'  
			e.other:ScribeSpell(339, 5);--'Coldlight' 
			e.other:ScribeSpell(340, 6);--'Disease Cloud'   
			e.other:ScribeSpell(341, 7);--'Lifetap'    
			e.other:ScribeSpell(342, 8);--'Locate Corpse'   
			e.other:ScribeSpell(343, 9);--'Siphon Strength'  
			--2
			e.other:ScribeSpell(205, 10);--'True North'    
			e.other:ScribeSpell(229, 11);--'Fear'
			e.other:ScribeSpell(347, 12);--'Numb the Dead'   
			--3
			e.other:ScribeSpell(225, 13);--'Endure Cold'   
			e.other:ScribeSpell(346, 14);--'Grim Aura'    
			e.other:ScribeSpell(502, 15);--'Lifespike'    
			--4
			e.other:ScribeSpell(344, 16);--'Clinging Darkness'
			e.other:ScribeSpell(348, 17);--'Poison Bolt'   
			e.other:ScribeSpell(36, 18);--'Gate'     
			e.other:ScribeSpell(491, 19);--'Leering Corpse' 
			--5
			e.other:ScribeSpell(352, 20);--'Deadeye'    
			e.other:ScribeSpell(354, 21);--'Shadow Step'   
			--6
			e.other:ScribeSpell(218, 22);--'Ward Undead'   
			e.other:ScribeSpell(357, 23);--'Dark Empathy'   
			e.other:ScribeSpell(641, 24);--'Dark Pact'
			--7
			e.other:ScribeSpell(353, 25);--'Mend Bones'    
			e.other:ScribeSpell(359, 26);--'Vampiric Embrace'  
			e.other:ScribeSpell(522, 27);--'Gather Shadows'   
			--8
			e.other:ScribeSpell(246, 28);--'Lesser Shielding'  
			e.other:ScribeSpell(351, 29);--'Bone Walk'
			e.other:ScribeSpell(358, 30);--'Impart Strength'  
			--9
			e.other:ScribeSpell(361, 31);--'Sight Graft'   
			e.other:ScribeSpell(363, 32);--'Wave of Enfeeblement' 
			--10
			e.other:ScribeSpell(209, 33);--'Spook the Dead'   
			e.other:ScribeSpell(360, 34);--'Heat Blood'    
			--11
			e.other:ScribeSpell(226, 35);--'Endure Disease'   
			e.other:ScribeSpell(355, 36);--'Engulfing Darkness'  
			--12
			e.other:ScribeSpell(2213, 37);--'Lesser Summon Corpse' 
			e.other:ScribeSpell(35, 38);--'Bind Affinity'  
			e.other:ScribeSpell(362, 39);--'Convoke Shadow' 
			e.other:ScribeSpell(445, 40);--'Lifedraw'    
			--13
			e.other:ScribeSpell(213, 41);--'Cure Disease' 
			e.other:ScribeSpell(367, 42);--'Heart Flutter' 
			--14
			e.other:ScribeSpell(236, 43);--'Shieldskin'    
			--15
			e.other:ScribeSpell(364, 44);--'Banshee Aura'   
			e.other:ScribeSpell(365, 45);--'Infectious Cloud'  
			e.other:ScribeSpell(371, 46);--'Voice Graft'   
			e.other:ScribeSpell(48, 47);--'Cancel Magic'   
			--16
			e.other:ScribeSpell(309, 48);--'Shielding'    
			e.other:ScribeSpell(366, 49);--'Feign Death'   
			e.other:ScribeSpell(368, 50);--'Spirit Armor'   
			e.other:ScribeSpell(369, 51);--'Hungry Earth'   
			e.other:ScribeSpell(492, 52);--'Restless Bones' 
			--17
			e.other:ScribeSpell(305, 53);--'Identify'    
			--18
			e.other:ScribeSpell(196, 54);--'Dominate Undead'  
			e.other:ScribeSpell(642, 55);--'Allure of Death'  
			--19
			e.other:ScribeSpell(233, 56);--'Expulse Undead'   
			e.other:ScribeSpell(370, 57);--'Shadow Vortex'  
			--20
			e.other:ScribeSpell(199, 58);--'Harmshield'    
			e.other:ScribeSpell(413, 59);--'Word of Shadow'   
			e.other:ScribeSpell(440, 60);--'Animate Dead'
			e.other:ScribeSpell(446, 61);--'Siphon Life'   
			--21
			e.other:ScribeSpell(204, 62);--'Shock of Poison'  
			e.other:ScribeSpell(478, 63);--'Breath of the Dead'  
			--22
			e.other:ScribeSpell(387, 64);--'Leatherskin'   
			e.other:ScribeSpell(549, 65);--'Screaming Terror'  
			e.other:ScribeSpell(90, 66);--'Shadow Sight'   
			--23
			e.other:ScribeSpell(448, 67);--'Rest the Dead'   
			e.other:ScribeSpell(449, 68);--'Intensify Death'  
			--24
			e.other:ScribeSpell(493, 69);--'Haunting Corpse'
			e.other:ScribeSpell(61, 70);--'Resist Cold'    
			e.other:ScribeSpell(65, 71);--'Major Shielding'   
			--25
			e.other:ScribeSpell(59, 72);--'Panic the Dead'   
			--26
			e.other:ScribeSpell(444, 73);--'Renew Bones'   
			e.other:ScribeSpell(524, 74);--'Spirit Tap'    
			--27
			e.other:ScribeSpell(414, 75);--'Word of Spirit'   
			e.other:ScribeSpell(452, 76);--'Dooming Darkness'  
			--28
			e.other:ScribeSpell(117, 77);--'Dismiss Undead'   
			e.other:ScribeSpell(451, 78);--'Boil Blood'    
			--29
			e.other:ScribeSpell(441, 79);--'Summon Dead' 
			e.other:ScribeSpell(454, 80);--'Vampiric Curse'   
			--30
			e.other:ScribeSpell(127, 81);--'Invoke Fear'   
			--31
			e.other:ScribeSpell(197, 82);--'Beguile Undead'   
			e.other:ScribeSpell(63, 83);--'Resist Disease'   
			e.other:ScribeSpell(643, 84);--'Call of Bones'   
			--32
			e.other:ScribeSpell(393, 85);--'Steelskin'    
			e.other:ScribeSpell(455, 86);--'Surge of Enfeeblement' 
			--33
			e.other:ScribeSpell(494, 87);--'Invoke Shadow'  
			e.other:ScribeSpell(66, 88);--'Greater Shielding'  
			--34
			e.other:ScribeSpell(230, 89);--'Root'    
			e.other:ScribeSpell(435, 90);--'Venom of the Snake'  
			--35
			e.other:ScribeSpell(3, 91);--'Summon Corpse'   
			e.other:ScribeSpell(31, 92);--'Scourge'     
			e.other:ScribeSpell(661, 93);--'Augment Death'   
			--36
			e.other:ScribeSpell(415, 94);--'Word of Souls'
			e.other:ScribeSpell(96, 95);--'Counteract Disease'
			--37
			e.other:ScribeSpell(49, 96);--'Nullify Magic'   
			--38
			e.other:ScribeSpell(662, 97);--'Expel Undead'   
			--39
			e.other:ScribeSpell(442, 98);--'Malignant Dead'
			e.other:ScribeSpell(525, 99);--'Drain Spirit'   
			--40
			--N/A
			--41
			e.other:ScribeSpell(457, 100);--'Dead Man Floating'  
			e.other:ScribeSpell(67, 101);--'Arch Shielding'   
			--42
			e.other:ScribeSpell(559, 102);--'Ignite Bones'   
			--43
			e.other:ScribeSpell(394, 103);--'Diamondskin'   
			--44
			e.other:ScribeSpell(495, 104);--'Cackling Bones' 
			e.other:ScribeSpell(694, 105);--'Pact of Shadow'   
			--45
			--N/A
			--46
			e.other:ScribeSpell(118, 106);--'Banish Undead'
			e.other:ScribeSpell(133, 107);--'Paralyzing Earth'  
			--47
			e.other:ScribeSpell(198, 108);--'Cajole Undead'   
			e.other:ScribeSpell(453, 109);--'Cascading Darkness'  
			e.other:ScribeSpell(6, 110);--'Ignite Blood'    
			--48
			e.other:ScribeSpell(443, 111);--'Invoke Death'
			e.other:ScribeSpell(447, 112);--'Drain Soul'    
			e.other:ScribeSpell(644, 113);--'Lich'
			--49
			e.other:ScribeSpell(456, 114);--'Bond of Death'   
			--50
			e.other:ScribeSpell(436, 115);--'Envenomed Bolt'   
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--9
				e.other:ScribeSpell(1509, 116);--'Leech'   
				--10
				e.other:ScribeSpell(1511, 117);--'Scent of Dusk' 
				--17
				e.other:ScribeSpell(1510, 118);--'Shadow Compact' 
				--18
				e.other:ScribeSpell(698, 119);--'Track Corpse'   
				--21
				e.other:ScribeSpell(1512, 120);--'Scent of Shadow' 
				e.other:ScribeSpell(1514, 121);--'Rapacious Subvention' 
				--37
				e.other:ScribeSpell(1513, 122);--'Scent of Darkness' 
				--40
				e.other:ScribeSpell(1508, 123);--'Asystole'   
				--42
				e.other:ScribeSpell(2014, 124);--'Incinerate Bones' 
				--43
				e.other:ScribeSpell(1515, 125);--'Covetous Subversion' 
				--45
				e.other:ScribeSpell(1391, 126);--'Dead Men Floating'  
				--51
				e.other:ScribeSpell(1532, 127);--'Dread of Night' 
				e.other:ScribeSpell(1620, 128);--'Splurt'   
				e.other:ScribeSpell(1768, 129);--'Sacrifice'  
				--52
				e.other:ScribeSpell(32, 130);--'Plague' 
				e.other:ScribeSpell(1609, 131);--'Manaskin'   
				e.other:ScribeSpell(1630, 132);--'Defoliation'  
				e.other:ScribeSpell(1716, 133);--'Scent of Terris' 
				--53
				e.other:ScribeSpell(131, 134);--'Instill'  
				e.other:ScribeSpell(1526, 135);--'Annul Magic' 
				e.other:ScribeSpell(1621, 136);--'Minion of Shadows'   
				e.other:ScribeSpell(1733, 137);--'Convergence'  
				--54
				e.other:ScribeSpell(1610, 138);--'Shield of the Magi' 
				e.other:ScribeSpell(1613, 139);--'Deflux'   
				e.other:ScribeSpell(1624, 140);--'Thrall of Bones' 
				e.other:ScribeSpell(1717, 141);--'Shadowbond'  
				--55
				e.other:ScribeSpell(1614, 142);--'Chill Bones'  
				e.other:ScribeSpell(1625, 143);--'Skin of the Shadow' 
				e.other:ScribeSpell(1626, 144);--'Levant'
				e.other:ScribeSpell(1734, 145);--'Infusion'   
				--56
				e.other:ScribeSpell(1527, 146);--'Trepidation'  
				e.other:ScribeSpell(1611, 147);--'Demi Lich'  
				e.other:ScribeSpell(1615, 148);--'Cessation of Cor' 
				e.other:ScribeSpell(1622, 149);--'Servant of Bones' 
				e.other:ScribeSpell(1718, 150);--'Sedulous Subversion' 
				--57
				e.other:ScribeSpell(1528, 151);--'Exile Undead'  
				e.other:ScribeSpell(1616, 152);--'Vexing Replenishment' aka mordinia?
				e.other:ScribeSpell(1773, 153);--'Conjure Corpse' 
				--58
				e.other:ScribeSpell(132, 154);--'Immobilize'  
				e.other:ScribeSpell(1612, 155);--'Quivering Veil of Xarn'  
				e.other:ScribeSpell(1617, 156);--'Pyrocruor'  
				--59
				e.other:ScribeSpell(1618, 157);--'Touch of Night' 
				e.other:ScribeSpell(1619, 158);--'Devouring Darkness' 
				e.other:ScribeSpell(1623, 159);--'Emissary of Thule' 
				--60
				e.other:ScribeSpell(1393, 160);--'Gangrenous Touch of Zum`uul'
				e.other:ScribeSpell(1530, 161);--'Banishment of Shadows' 
				e.other:ScribeSpell(1629, 162);--'Enslave Death' 
				e.other:ScribeSpell(1735, 163);--'Trucidation'
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--32
				e.other:ScribeSpell(1415, 164);--'Torbas\' Acid Blast' 
				--36
				e.other:ScribeSpell(1412, 165);--'Chilling Embrace' 
				--40
				e.other:ScribeSpell(1285, 166);--'Summon Companion'
				--43
				e.other:ScribeSpell(1413, 167);--'Corporeal Empathy' 
				--50
				e.other:ScribeSpell(1411, 168);--'Improved Invisibility to Undead'
				--55
				e.other:ScribeSpell(1414, 169);--'Augmentation of Death' 
				e.other:ScribeSpell(2015, 170);--'Conglaciation of Bone' 
				--60
				e.other:ScribeSpell(1416, 171);--'Arch Lich'  
				e.other:ScribeSpell(1460, 172);--'Death Peace' 
				e.other:ScribeSpell(2114, 173);--'Ancient: Master of Death' 
				e.other:ScribeSpell(2115, 174);--'Ancient: Lifebane' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--11
				e.other:ScribeSpell(2541, 175);--'Focus Death'
				--17
				e.other:ScribeSpell(2542, 176);--'Shackle of Bone'
				--27 
				e.other:ScribeSpell(2543, 177);--'Eternities Torment' 
				--38
				e.other:ScribeSpell(2544, 178);--'Shackle of Spirit' 
				--46
				e.other:ScribeSpell(2545, 179);--'Insidious Retrogression'
				--52
				e.other:ScribeSpell(2546, 180);--'Degeneration'  
				--54
				e.other:ScribeSpell(2547, 181);--'Succussion of Shadows' 
				--56
				e.other:ScribeSpell(2548, 182);--'Crippling Claudication'
				--58
				e.other:ScribeSpell(2549, 183);--'Mind Wrack'  
				--60
				e.other:ScribeSpell(2550, 184);--'Zevfeer\'s Theft of Vitae'
				e.other:ScribeSpell(2885, 185);--'Funeral Pyre of Kelador'
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--19
				e.other:ScribeSpell(3583, 186);--'Tiny Companion' 
				--49
				e.other:ScribeSpell(3571, 187);--'Torbas\' Poison Blast'
				--54
				e.other:ScribeSpell(3572, 188);--'Torbas\' Venom Blast'
				--61
				e.other:ScribeSpell(3032, 189);--'Touch of Mujaki' 
				e.other:ScribeSpell(3035, 190);--'Neurotoxin' 
				e.other:ScribeSpell(3300, 191);--'Shield of the Arcane'
				e.other:ScribeSpell(3304, 192);--'Legacy of Zek' 
				e.other:ScribeSpell(3315, 193);--'Dark Plague' 
				--62
				e.other:ScribeSpell(3196, 194);--'Petrifying Earth' 
				e.other:ScribeSpell(3305, 195);--'Rune of Death' 
				e.other:ScribeSpell(3306, 196);--'Saryrn\'s Kiss' 
				e.other:ScribeSpell(3344, 197);--'Imbue Nightmare' 
				--63
				e.other:ScribeSpell(3195, 198);--'Greater Immobilize'
				e.other:ScribeSpell(3301, 199);--'Force Shield' 
				e.other:ScribeSpell(3308, 200);--'Death\'s Silence' 
				e.other:ScribeSpell(3309, 201);--'Embracing Darkness'
				e.other:ScribeSpell(3310, 202);--'Saryrn\'s Companion'
				e.other:ScribeSpell(3591, 203);--'Imbue Disease' 
				e.other:ScribeSpell(3594, 204);--'Imbue Torment' 
				--64
				e.other:ScribeSpell(3302, 205);--'Shield of Maelin' 
				e.other:ScribeSpell(3311, 206);--'Seduction of Saryrn' 
				e.other:ScribeSpell(3312, 207);--'Touch of Death' 
				--65
				e.other:ScribeSpell(3303, 208);--'Blood of Thule' 
				e.other:ScribeSpell(3314, 209);--'Child of Bertoxxulous'
				e.other:ScribeSpell(3316, 210);--'Word of Terris' 
				e.other:ScribeSpell(3468, 211);--'Destroy Undead' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--45
				e.other:ScribeSpell(3702, 212);--'Auspice'  
				--52
				e.other:ScribeSpell(3685, 213);--'Comatose' 
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--13
				e.other:ScribeSpell(4255, 214);--'Wuggan\'s Lesser Appraisal' 
				e.other:ScribeSpell(4273, 215);--'Reebo\'s Lesser Exorcism' 
				--14
				e.other:ScribeSpell(4261, 216);--'Reebo\'s Lesser Augury' 
				e.other:ScribeSpell(4267, 217);--'Wuggan\'s Lesser Discombobulation'
				e.other:ScribeSpell(4279, 218);--'Wuggan\'s Lesser Extrication' 
				e.other:ScribeSpell(4285, 219);--'Reebo\'s Lesser Cleansing' 
				--23
				e.other:ScribeSpell(4256, 220);--'Wuggan\'s Appraisal'  
				e.other:ScribeSpell(4274, 221);--'Reebo\'s Exorcism'  
				--24
				e.other:ScribeSpell(4262, 222);--'Reebo\'s Augury'  
				e.other:ScribeSpell(4268, 223);--'Wuggan\'s Discombobulation' 
				e.other:ScribeSpell(4280, 224);--'Wuggan\'s Extrication' 
				e.other:ScribeSpell(4286, 225);--'Reebo\'s Cleansing'  
				--33
				e.other:ScribeSpell(4257, 226);--'Wuggan\'s Greater Appraisal' 
				e.other:ScribeSpell(4275, 227);--'Reebo\'s Greater Exorcism' 
				--34
				e.other:ScribeSpell(4263, 228);--'Reebo\'s Greater Augury' 
				e.other:ScribeSpell(4269, 229);--'Wuggan\'s Greater Discombobulation'
				e.other:ScribeSpell(4281, 230);--'Wuggan\'s Greater Extrication' 
				e.other:ScribeSpell(4287, 231);--'Reebo\'s Greater Cleansing' 
				--39
				e.other:ScribeSpell(4096, 232);--'Dark Soul' 
				--44
				e.other:ScribeSpell(4099, 233);--'Bounce'  
				--49
				e.other:ScribeSpell(4079, 234);--'Ward of Calliav' 
				--54
				e.other:ScribeSpell(4097, 235);--'Imprecation' 
				--58
				e.other:ScribeSpell(4080, 236);--'Guard of Calliav' 
				e.other:ScribeSpell(4100, 237);--'Reflect'  
				--63
				e.other:ScribeSpell(4098, 238);--'Horror'  
				--64
				e.other:ScribeSpell(4081, 239);--'Protection of Calliav'
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4889, 240);--'Night Stalker'  
				e.other:ScribeSpell(4890, 241);--'Night Fire'   
				e.other:ScribeSpell(4891, 242);--'Night\'s Beckon' 
				e.other:ScribeSpell(4978, 243);--'Ancient: Seduction of Chaos'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5420, 244);--'Acikin'    
				e.other:ScribeSpell(5421, 245);--'Shadow Guard'  
				e.other:ScribeSpell(5423, 246);--'Chaos Plague'  
				e.other:ScribeSpell(6994, 247);--'Eidolon Howl'  
				--67
				e.other:ScribeSpell(5419, 248);--'Soulspike'   
				e.other:ScribeSpell(5424, 249);--'Grip of Mori'  
				e.other:ScribeSpell(5425, 250);--'Glyph of Darkness' 
				e.other:ScribeSpell(5431, 251);--'Lost Soul' 
				e.other:ScribeSpell(5432, 252);--'Dark Nightmare'  
				e.other:ScribeSpell(6982, 253);--'Unholy Howl'  
				--68
				e.other:ScribeSpell(5426, 254);--'Fang of Death'  
				e.other:ScribeSpell(5427, 255);--'Scent of Midnight' 
				e.other:ScribeSpell(5430, 256);--'Desecrating Darkness' 
				e.other:ScribeSpell(6124, 257);--'Shadow of Death' 
				--69
				e.other:ScribeSpell(5428, 258);--'Dull Pain'   
				e.other:ScribeSpell(5429, 259);--'Dark Hold'   
				e.other:ScribeSpell(5435, 260);--'Dark Salve'   
				e.other:ScribeSpell(5436, 261);--'Bulwark of Calliav' 
				e.other:ScribeSpell(5437, 262);--'Pyre of Mori'  
				--70
				e.other:ScribeSpell(5433, 263);--'Chaos Venom'  
				e.other:ScribeSpell(5434, 264);--'Dark Possession' 
				e.other:ScribeSpell(5438, 265);--'Dark Assassin'
				e.other:ScribeSpell(5439, 266);--'Word of Chaos'
				e.other:ScribeSpell(5440, 267);--'Desolate Undead' 
				e.other:ScribeSpell(5441, 268);--'Ancient: Curse of Mori' 
				e.other:ScribeSpell(6143, 269);--'Ancient: Touch of Orshilak' 
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--56
				e.other:ScribeSpell(6992, 270);--'Eidolon Voice' 
				--57
				e.other:ScribeSpell(6980, 271);--'Unholy Voice'  
				--61
				e.other:ScribeSpell(6736, 272);--'Soul Orb' 
				e.other:ScribeSpell(6993, 273);--'Eidolon Bellow'
				--62
				e.other:ScribeSpell(6981, 274);--'Unholy Bellow' 
				--69
				e.other:ScribeSpell(6668, 275);--'Shadow Orb'   
				
				-- :Later
				--699, 276);--'Defoliate' test server spell? 
				--7674, 277);--'Focus Primitive Spellcaster\'s Empowering Essence' 
				--7675, 278);--'Focus Rudimentary Spellcaster\'s Empowering Essence'
				--7676, 279);--'Focus Crude Spellcaster\'s Empowering Essence' 
				--7677, 280);--'Focus Makeshift Spellcaster\'s Empowering Essence' 
				--7678, 281);--'Focus Elementary Spellcaster\'s Empowering Essence'
				--7679, 282);--'Focus Modest Spellcaster\'s Empowering Essence' 
				--7680, 283);--'Focus Simple Spellcaster\'s Empowering Essence' 
				--7681, 284);--'Focus Spellcaster\'s Empowering Essence'  '
				--7682, 285);--'Focus Refined Spellcaster\'s Empowering Essence' 
				--7683, 286);--'Focus Intricate Spellcaster\'s Empowering Essence' 
				--7684, 287);--'Focus Elaborate Spellcaster\'s Empowering Essence' 
				--7685, 288);--'Focus Ornate Spellcaster\'s Empowering Essence' 
				--7687, 289);--'Focus Mass Primitive Spellcaster\'s Empowering Essence'
				--7688, 290);--'Focus Mass Rudimentary Spellcaster\'s Empowering Essenc
				--7689, 291);--'Focus Mass Crude Spellcaster\'s Empowering Essence' 
				--7690, 292);--'Focus Mass Makeshift Spellcaster\'s Empowering Essence'
				--7691, 293);--'Focus Mass Elementary Spellcaster\'s Empowering Essence
				--7692, 294);--'Focus Mass Modest Spellcaster\'s Empowering Essence' 
				--7693, 295);--'Focus Mass Simple Spellcaster\'s Empowering Essence'
				--7694, 296);--'Focus Mass Spellcaster\'s Empowering Essence' 
				--7695, 297);--'Focus Mass Refined Spellcaster\'s Empowering Essence' 
				--7696, 298);--'Focus Mass Intricate Spellcaster\'s Empowering Essence'
				--7697, 299);--'Focus Mass Elaborate Spellcaster\'s Empowering Essence'
				--7994, 300);--'Dread Pyre'   
				--7995, 301);--'Call for Blood'  
				--7999, 302);--'Corath Venom'   
				--8520, 303);--'Grave Pact'   
				--8522, 304);--'Mind Flay'    
				--8523, 305);--'Death Rune'  
				--8934, 306);--'Dark Rune'
				--9987, 307);--'Form of Chilled Bone' 
				--9988, 308);--'Form of Bleached Bone' 
				--9989, 309);--'Form of Mottled Bone' 
				--9990, 310);--'Form of Restless Spirits' 
				--9991, 311);--'Form of Rotting Flesh' 
				--10042, 312);--'Exhumer\'s Call'  
				--10470, 313);--'Venin'    
				--10471, 314);--'Venin Rk. II'   
				--10472, 315);--'Venin Rk. III'  
				--10476, 316);--'Shield of Darkness' 
				--10477, 317);--'Shield of Darkness Rk. II' 
				--10478, 318);--'Shield of Darkness Rk. III' 
				--10479, 319);--'Severan\'s Rot'  
				--10480, 320);--'Severan\'s Rot Rk. II' 
				--10481, 321);--'Severan\'s Rot Rk. III' 
				--10482, 322);--'Demand for Blood'  
				--10483, 323);--'Demand for Blood Rk. II' 
				--10484, 324);--'Demand for Blood Rk. III' 
				--10488, 325);--'Drink of Vitae'  
				--10489, 326);--'Drink of Vitae Rk. II' 
				--10490, 327);--'Drink of Vitae Rk. III' 
				--10494, 328);--'Drain Life'   
				--10495, 329);--'Drain Life Rk. II' 
				--10496, 330);--'Drain Life Rk. III' 
				--10503, 331);--'Sigil of the Unnatural' 
				--10504, 332);--'Sigil of the Unnatural Rk. II'
				--10505, 333);--'Sigil of the Unnatural Rk. III'
				--10506, 334);--'Riza`farr\'s Shadow' 
				--10507, 335);--'Curse of Mortality' 
				--10508, 336);--'Curse of Mortality Rk. II' 
				--10509, 337);--'Curse of Mortality Rk. III' 
				--10510, 338);--'Dyn`leth\'s Grasp' 
				--10511, 339);--'Dyn`leth\'s Grasp Rk. II' 
				--10512, 340);--'Dyn`leth\'s Grasp Rk. III' 
				--10516, 341);--'Scent of Twilight' 
				--10517, 342);--'Scent of Twilight Rk. II' 
				--10518, 343);--'Scent of Twilight Rk. III'
				--10519, 344);--'Coruscating Darkness' 
				--10520, 345);--'Coruscating Darkness Rk. II'
				--10521, 346);--'Coruscating Darkness Rk. III'
				--10522, 347);--'Bloodcurdling Shriek' 
				--10523, 348);--'Bloodcurdling Shriek Rk. II'
				--10524, 349);--'Bloodcurdling Shriek Rk. III'
				--10525, 350);--'Form of Burnt Bone' 
				--10526, 351);--'Form of Ancient Spirits' 
				--10527, 352);--'Form of a Fallen Empire' 
				--10528, 353);--'Spectral Guard'  
				--10529, 354);--'Spectral Guard Rk. II' 
				--10530, 355);--'Spectral Guard Rk. III' 
				--10531, 356);--'Wraithskin'   
				--10532, 357);--'Wraithskin Rk. II' 
				--10533, 358);--'Wraithskin Rk. III' 
				--10534, 359);--'Rimebone Shackles' 
				--10535, 360);--'Rimebone Shackles Rk. II' 
				--10536, 361);--'Rimebone Shackles Rk. III'
				--10537, 362);--'Chilling Renewal' 
				--10538, 363);--'Chilling Renewal Rk. II' 
				--10539, 364);--'Chilling Renewal Rk. III'
				--10543, 365);--'Ashengate Pyre'  
				--10544, 366);--'Ashengate Pyre Rk. II' 
				--10545, 367);--'Ashengate Pyre Rk. III' 
				--10546, 368);--'Wilting Foliage'  
				--10547, 369);--'Wilting Foliage Rk. II' 
				--10548, 370);--'Wilting Foliage Rk. III' 
				--10555, 371);--'Vakk`dra\'s Sickly Mists' 
				--10556, 372);--'Vakk`dra\'s Sickly Mists Rk. II'
				--10557, 373);--'Vakk`dra\'s Sickly Mists Rk. III'
				--10558, 374);--'Otherside'    
				--10559, 375);--'Otherside Rk. II'  
				--10560, 376);--'Otherside Rk. III'  
				--10561, 377);--'Putrescent Servant'  
				--10562, 378);--'Vakk`dra\'s Command' 
				--10563, 379);--'Vakk`dra\'s Command Rk. II' 
				--10564, 380);--'Vakk`dra\'s Command Rk. III' 
				--10565, 381);--'Annihilate Undead'  
				--10566, 382);--'Annihilate Undead Rk. II' 
				--10567, 383);--'Annihilate Undead Rk. III' 
				--10741, 384);--'Aegis of Calliav'  
				--10742, 385);--'Aegis of Calliav Rk. II' 
				--10743, 386);--'Aegis of Calliav Rk. III' 
				--11789, 387);--'Kedgefish Venom'  
				--11790, 388);--'Kedgefish Venom Rk. II' 
				--11791, 389);--'Kedgefish Venom Rk. III' 
				--11792, 390);--'Umbra Orb'    
				--11793, 391);--'Umbra Orb Rk. II'  
				--11794, 392);--'Umbra Orb Rk. III'  
				--11798, 393);--'Bonestitch Fetish'  
				--11799, 394);--'Bonestitch Fetish Rk. II' 
				--11800, 395);--'Bonestitch Fetish Rk. III' 
				--11804, 396);--'Mind Dissection'  
				--11805, 397);--'Mind Dissection Rk. II' 
				--11806, 398);--'Mind Dissection Rk. III' 
				--11810, 399);--'Pyre of the Fallen'  
				--11811, 400);--'Pyre of the Fallen Rk. II' 
				--11812, 401);--'Pyre of the Fallen Rk. III' 
				--21399, 402);--'Eradicate Disease'  
				--32397, 403);--'Convergence'   
			end 
		end  
	end
	if (e.other:GetClass() == 12) then --wiz
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(205, 0);--'True North'
			e.other:ScribeSpell(288, 1);--'Minor Shielding'
			e.other:ScribeSpell(372, 2);--'Blast of Cold'  
			e.other:ScribeSpell(373, 3);--'Sphere of Light'
			e.other:ScribeSpell(374, 4);--'Numbing Cold' 
			e.other:ScribeSpell(54, 5);--'Frost Bolt'
			--2
			e.other:ScribeSpell(378, 6);--'O`Keil\'s Radiation'
			e.other:ScribeSpell(51, 7);--'Glimpse' 
			--3
			e.other:ScribeSpell(230, 8);--'Root'
			e.other:ScribeSpell(375, 9);--'Fade'
			--4
			e.other:ScribeSpell(36, 10);--'Gate'
			e.other:ScribeSpell(376, 11);--'Shock of Fire'
			e.other:ScribeSpell(80, 12);--'See Invisible'
			--5
			e.other:ScribeSpell(379, 13);--'Fingers of Fire'
			e.other:ScribeSpell(477, 14);--'Fire Bolt'
			--6
			e.other:ScribeSpell(246, 15);--'Lesser Shielding'
			e.other:ScribeSpell(377, 16);--'Icestrike'
			--7
			e.other:ScribeSpell(232, 17);--'Sense Summoned'
			e.other:ScribeSpell(354, 18);--'Shadow Step'
			--8
			e.other:ScribeSpell(323, 19);--'Eye of Zomm' 
			e.other:ScribeSpell(380, 20);--'Column of Frost' 
			e.other:ScribeSpell(656, 21);--'Shock of Ice'
			--9
			e.other:ScribeSpell(234, 22);--'Halo of Light'
			e.other:ScribeSpell(381, 23);--'Resistant Skin'
			--10
			e.other:ScribeSpell(383, 24);--'Shock of Lightning'
			--11
			e.other:ScribeSpell(48, 25);--'Cancel Magic'
			e.other:ScribeSpell(529, 26);--'Gaze'
			--12
			e.other:ScribeSpell(35, 27);--'Bind Affinity'
			e.other:ScribeSpell(382, 28);--'Frost Spiral of Al\'Kabor'
			e.other:ScribeSpell(85, 29);--'Firestorm' 
			--13
			e.other:ScribeSpell(236, 30);--'Shieldskin' 
			--14
			e.other:ScribeSpell(305, 31);--'Identify' 
			e.other:ScribeSpell(385, 32);--'Project Lightning'
			--15
			e.other:ScribeSpell(309, 33);--'Shielding'
			e.other:ScribeSpell(386, 34);--'Pillar of Fire'
			e.other:ScribeSpell(657, 35);--'Flame Shock' 
			--16
			e.other:ScribeSpell(38, 36);--'Lightning Bolt'
			e.other:ScribeSpell(42, 37);--'Invisibility' 
			e.other:ScribeSpell(500, 38);--'Bind Sight' 
			e.other:ScribeSpell(679, 39);--'Heat Sight'  
			--17
			e.other:ScribeSpell(131, 40);--'Instill' 
			e.other:ScribeSpell(22, 41);--'Force Snap' 
			--18
			e.other:ScribeSpell(2184, 42);--'Lesser Evacuate' 
			e.other:ScribeSpell(458, 43);--'Fire Spiral of Al\'Kabor' 
			e.other:ScribeSpell(542, 44);--'North Gate'
			--19
			e.other:ScribeSpell(503, 45);--'Tishan\'s Clash'
			e.other:ScribeSpell(541, 46);--'Tox Gate'
			e.other:ScribeSpell(578, 47);--'Sight' 
			--20
			e.other:ScribeSpell(108, 48);--'Elemental Shield'
			e.other:ScribeSpell(543, 49);--'Fay Gate' 
			--21
			e.other:ScribeSpell(387, 50);--'Leatherskin'
			e.other:ScribeSpell(544, 51);--'Common Gate'
			--22
			e.other:ScribeSpell(261, 52);--'Levitate'
			e.other:ScribeSpell(545, 53);--'Nek Gate'
			e.other:ScribeSpell(547, 54);--'Ro Gate'
			--23
			e.other:ScribeSpell(546, 55);--'Cazic Gate'
			e.other:ScribeSpell(548, 56);--'West Gate'
			e.other:ScribeSpell(65, 57);--'Major Shielding'
			--24
			e.other:ScribeSpell(461, 58);--'Cast Force'
			e.other:ScribeSpell(462, 59);--'Column of Lightning'
			e.other:ScribeSpell(464, 60);--'Frost Shock'
			--25
			e.other:ScribeSpell(528, 61);--'Yonder'
			e.other:ScribeSpell(562, 62);--'North Portal'
			--26
			e.other:ScribeSpell(1899, 63);--'Imbue Fire Opal' 
			e.other:ScribeSpell(465, 64);--'Inferno Shock'
			e.other:ScribeSpell(468, 65);--'Energy Storm'
			e.other:ScribeSpell(602, 66);--'Evacuate: North'
			--27
			e.other:ScribeSpell(563, 67);--'Fay Portal' 
			e.other:ScribeSpell(636, 68);--'Bonds of Force'
			--28
			e.other:ScribeSpell(3999, 69);--'Mass Imbue Fire Opal'  '
			e.other:ScribeSpell(459, 70);--'Shock Spiral of Al\'Kabor' 
			e.other:ScribeSpell(470, 71);--'Thunder Strike'
			e.other:ScribeSpell(561, 72);--'Tox Portal'
			--29
			e.other:ScribeSpell(579, 73);--'Magnify'
			--30
			e.other:ScribeSpell(393, 74);--'Steelskin'
			e.other:ScribeSpell(471, 75);--'Thunderclap'
			--31
			e.other:ScribeSpell(463, 76);--'Circle of Force'
			--32
			e.other:ScribeSpell(469, 77);--'Lava Storm'
			e.other:ScribeSpell(564, 78);--'Nek Portal' 
			e.other:ScribeSpell(603, 79);--'Evacuate: Fay'
			--33
			e.other:ScribeSpell(565, 80);--'Cazic Portal'
			e.other:ScribeSpell(66, 81);--'Greater Shielding'
			--34
			e.other:ScribeSpell(49, 82);--'Nullify Magic'
			e.other:ScribeSpell(658, 83);--'Ice Shock'
			--35
			e.other:ScribeSpell(1338, 84);--'Translocate: North'
			e.other:ScribeSpell(460, 85);--'Force Spiral of Al\'Kabor'
			e.other:ScribeSpell(566, 86);--'Common Portal' 
			--36
			e.other:ScribeSpell(1336, 87);--'Translocate: Fay'
			e.other:ScribeSpell(567, 88);--'Ro Portal' 
			--37
			e.other:ScribeSpell(1337, 89);--'Translocate: Tox' 
			e.other:ScribeSpell(466, 90);--'Lightning Shock'
			e.other:ScribeSpell(568, 91);--'West Portal'
			--38
			e.other:ScribeSpell(539, 92);--'Chill Sight' 
			e.other:ScribeSpell(604, 93);--'Evacuate: Ro' 
			e.other:ScribeSpell(84, 94);--'Shifting Sight'
			--39
			e.other:ScribeSpell(132, 95);--'Immobilize'
			--40
			e.other:ScribeSpell(1372, 96);--'Translocate: Common'
			e.other:ScribeSpell(394, 97);--'Diamondskin'
			--41
			e.other:ScribeSpell(1371, 98);--'Translocate: Nek'
			e.other:ScribeSpell(23, 99);--'Force Strike'
			e.other:ScribeSpell(660, 100);--'Frost Storm'
			--42
			e.other:ScribeSpell(109, 101);--'Elemental Armor'
			e.other:ScribeSpell(1374, 102);--'Translocate: West' 
			e.other:ScribeSpell(605, 103);--'Evacuate: Nek' 
			--43
			e.other:ScribeSpell(1373, 104);--'Translocate: Ro' 
			e.other:ScribeSpell(659, 105);--'Conflagration' 
			e.other:ScribeSpell(73, 106);--'Gravity Flux'
			--44
			e.other:ScribeSpell(1375, 107);--'Translocate: Cazic'
			e.other:ScribeSpell(67, 108);--'Arch Shielding' 
			--45
			e.other:ScribeSpell(733, 109);--'Supernova' 
			--46
			e.other:ScribeSpell(666, 110);--'Alter Plane: Hate' 
			e.other:ScribeSpell(674, 111);--'Alter Plane: Sky'  
			--47
			e.other:ScribeSpell(606, 112);--'Evacuate: West'
			e.other:ScribeSpell(612, 113);--'Markar\'s Clash'
			e.other:ScribeSpell(755, 114);--'Rend' 
			--48
			e.other:ScribeSpell(133, 115);--'Paralyzing Earth'
			e.other:ScribeSpell(731, 116);--'Wrath of Al\'Kabor'
			--49
			e.other:ScribeSpell(732, 117);--'Ice Comet' 
		end 	
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--24
				e.other:ScribeSpell(1325, 118);--'Combine Gate' 
				--32
				e.other:ScribeSpell(1744, 119);--'Harvest' 
				--34
				e.other:ScribeSpell(1516, 120);--'Combine Portal'
				--36
				e.other:ScribeSpell(1738, 121);--'Tishan\'s Relocation'
				--37
				e.other:ScribeSpell(1739, 122);--'Markar\'s Relocation'
				e.other:ScribeSpell(752, 123);--'Concussion' 
				--38
				e.other:ScribeSpell(1339, 124);--'Translocate: Combine'
				--51
				e.other:ScribeSpell(1631, 125);--'Atol\'s Spectral Shackles' 
				e.other:ScribeSpell(1634, 126);--'Tishan\'s Discord' 
				e.other:ScribeSpell(1637, 127);--'Draught of Fire' 
				e.other:ScribeSpell(1646, 128);--'Pillar of Frost'
				--52
				e.other:ScribeSpell(1609, 129);--'Manaskin' 
				e.other:ScribeSpell(1627, 130);--'Abscond'
				e.other:ScribeSpell(1642, 131);--'Lure of Frost'
				e.other:ScribeSpell(1649, 132);--'Tears of Druzzil'
				--53
				e.other:ScribeSpell(1526, 133);--'Annul Magic' 
				e.other:ScribeSpell(1650, 134);--'Inferno of Al\'Kabor'
				e.other:ScribeSpell(1653, 135);--'Jyll\'s Static Pulse' 
				--54
				e.other:ScribeSpell(1610, 136);--'Shield of the Magi'
				e.other:ScribeSpell(1639, 137);--'Voltaic Draught'
				e.other:ScribeSpell(1645, 138);--'Pillar of Lightning'
				e.other:ScribeSpell(1656, 139);--'Thunderbolt'
				--55
				e.other:ScribeSpell(1632, 453); --Plainsight'
				e.other:ScribeSpell(1638, 140);--'Lure of Flame'
				e.other:ScribeSpell(1643, 141);--'Draught of Jiva'
				e.other:ScribeSpell(1648, 142);--'Tears of Solusek' 
				--56
				e.other:ScribeSpell(1635, 143);--'Markar\'s Discord' 
				e.other:ScribeSpell(1651, 144);--'Retribution of Al\'Kabor' 
				e.other:ScribeSpell(1654, 145);--'Jyll\'s Zephyr of Ice' 
				--57
				e.other:ScribeSpell(1628, 146);--'Evacuate'
				e.other:ScribeSpell(1641, 147);--'Draught of Ice' 
				e.other:ScribeSpell(1644, 148);--'Pillar of Flame' 
				e.other:ScribeSpell(1720, 149);--'Eye of Tallon'
				--58
				e.other:ScribeSpell(1633, 150);--'Fetter' 
				e.other:ScribeSpell(1640, 151);--'Lure of Lightning'
				e.other:ScribeSpell(1647, 152);--'Tears of Prexus' 
				--59
				e.other:ScribeSpell(1636, 153);--'Invert Gravity'
				e.other:ScribeSpell(1652, 154);--'Vengeance of Al\'Kabor' 
				e.other:ScribeSpell(1655, 155);--'Jyll\'s Wave of Heat' 
				e.other:ScribeSpell(1722, 156);--'Flaming Sword of Xuzl' 
				--60
				e.other:ScribeSpell(1657, 157);--'Winds of Gelid' 
				e.other:ScribeSpell(1658, 158);--'Sunstrike' 
				e.other:ScribeSpell(1724, 159);--'Disintegrate'
				e.other:ScribeSpell(1769, 160);--'Lure of Ice' 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--31
				e.other:ScribeSpell(1419, 161);--'O`Keil\'s Flickering Flame' 
				--32
				e.other:ScribeSpell(1417, 162);--'Iceclad Gate'
				--33
				e.other:ScribeSpell(1418, 163);--'Iceclad Portal'
				--34
				e.other:ScribeSpell(2026, 164);--'Great Divide Gate'
				--36
				e.other:ScribeSpell(1423, 165);--'Great Divide Portal' 
				--38
				e.other:ScribeSpell(2027, 166);--'Wakening Lands Gate'  
				--39
				e.other:ScribeSpell(1420, 167);--'Invisibility to Undead' 
				e.other:ScribeSpell(2028, 168);--'Cobalt Scar Gate'
				--42
				e.other:ScribeSpell(1399, 169);--'Wakening Lands Portal' 
				--43
				e.other:ScribeSpell(1425, 170);--'Cobalt Scar Portal' 
				--44
				e.other:ScribeSpell(1421, 171);--'Enticement of Flame'
				--45
				e.other:ScribeSpell(2022, 172);--'Translocate: Iceclad' 
				--46
				e.other:ScribeSpell(2023, 173);--'Translocate: Great Divide' 
				--47
				e.other:ScribeSpell(2024, 174);--'Translocate: Wakening Lands' 
				--48
				e.other:ScribeSpell(2025, 175);--'Translocate: Cobalt Scar' 
				--50
				e.other:ScribeSpell(1422, 176);--'Translocate' 
				--52
				e.other:ScribeSpell(1334, 177);--'Translocate: Group' 
				--55
				e.other:ScribeSpell(1406, 178);--'Improved Invisibility'  
				--60
				e.other:ScribeSpell(1310, 179);--'Porlos\' Fury'  
				e.other:ScribeSpell(1311, 180);--'Hsagra\'s Wrath'
				e.other:ScribeSpell(1426, 181);--'Ice Spear of Solist'
				e.other:ScribeSpell(2116, 182);--'Ancient: Destruction of Ice' 
				e.other:ScribeSpell(2117, 183);--'Ancient: Greater Concussion' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--10
				e.other:ScribeSpell(2551, 184);--'O`Keil\'s Embers' 
				--17
				e.other:ScribeSpell(2945, 185);--'Nexus Gate'
				--18
				e.other:ScribeSpell(2552, 186);--'Garrison\'s Mighty Mana Shock' 
				--20
				e.other:ScribeSpell(2418, 187);--'Grimling Gate'
				--22
				e.other:ScribeSpell(2423, 188);--'Twilight Gate'
				--25
				e.other:ScribeSpell(2553, 189);--'Minor Familiar'
				e.other:ScribeSpell(3581, 190);--'O`Keil\'s Levity' 
				--29
				e.other:ScribeSpell(2420, 191);--'Grimling Portal' 
				e.other:ScribeSpell(2428, 192);--'Dawnshroud Gate'
				e.other:ScribeSpell(2944, 193);--'Nexus Portal' 
				--33
				e.other:ScribeSpell(2425, 194);--'Twilight Portal' 
				--35
				e.other:ScribeSpell(2883, 195);--'Elnerick\'s Electrical Rending' 
				--36
				e.other:ScribeSpell(2943, 196);--'Translocate: Nexus' 
				--39
				e.other:ScribeSpell(2421, 197);--'Translocate: Grimling' 
				e.other:ScribeSpell(2430, 198);--'Dawnshroud Portal' 
				--41
				e.other:ScribeSpell(2426, 199);--'Translocate: Twilight' 
				--45
				e.other:ScribeSpell(2555, 200);--'Lesser Familiar' 
				--49
				e.other:ScribeSpell(2431, 201);--'Translocate: Dawnshroud' 
				--50
				e.other:ScribeSpell(2894, 202);--'Levitation' 
				--54
				e.other:ScribeSpell(2557, 203);--'Familiar'
				--56
				e.other:ScribeSpell(2558, 204);--'Decession' 
				--58
				e.other:ScribeSpell(2559, 205);--'Spellshield' 
				--60
				e.other:ScribeSpell(2560, 206);--'Greater Familiar'
				e.other:ScribeSpell(2554, 207);--'Elnerick\'s Entombment of Ice' 
				e.other:ScribeSpell(2884, 208);--'Garrison\'s Superior Sundering' 
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--27
				e.other:ScribeSpell(3183, 209);--'Knowledge Gate' 
				--38
				e.other:ScribeSpell(3180, 210);--'Knowledge Portal'
				--45
				e.other:ScribeSpell(3181, 211);--'Translocate: Knowledge'
				--54
				e.other:ScribeSpell(3582, 212);--'Elemental Cloak'
				--61
				e.other:ScribeSpell(3194, 213);--'Greater Fetter' 
				e.other:ScribeSpell(3300, 214);--'Shield of the Arcane'
				e.other:ScribeSpell(3326, 215);--'Resistant Armor'
				e.other:ScribeSpell(3327, 216);--'Tears of Ro' 
				e.other:ScribeSpell(3328, 217);--'Lure of Thunder'
				--62
				e.other:ScribeSpell(3243, 218);--'Teleport'
				e.other:ScribeSpell(3329, 219);--'Elemental Barrier'
				e.other:ScribeSpell(3330, 220);--'Draught of Ro' 
				e.other:ScribeSpell(3331, 221);--'Lure of Ro'
				--63
				e.other:ScribeSpell(3301, 222);--'Force Shield' 
				e.other:ScribeSpell(3334, 223);--'Draught of Thunder' 
				e.other:ScribeSpell(3335, 224);--'Agnarr\'s Thunder'
				e.other:ScribeSpell(3337, 225);--'Iceflame of E`ci'
				e.other:ScribeSpell(3976, 226);--'Draught of Lightning'
				--64
				e.other:ScribeSpell(3189, 227);--'Tears of Arlyxir'
				e.other:ScribeSpell(3302, 228);--'Shield of Maelin'
				e.other:ScribeSpell(3333, 229);--'Telekin'
				e.other:ScribeSpell(3336, 230);--'Draught of E`ci'
				--65
				e.other:ScribeSpell(3191, 231);--'Shock of Magic' 
				e.other:ScribeSpell(3244, 232);--'Greater Decession'
				e.other:ScribeSpell(3332, 233);--'Tears of Marr' 
				e.other:ScribeSpell(3339, 234);--'Strike of Solusek' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--21
				e.other:ScribeSpell(3795, 235);--'Stonebrunt Gate'
				--27
				e.other:ScribeSpell(3793, 236);--'Stonebrunt Portal'
				--35
				e.other:ScribeSpell(3833, 237);--'Translocate: Stonebrunt' 
				--40
				e.other:ScribeSpell(3811, 238);--'Vision Shift' 
				--52
				e.other:ScribeSpell(3706, 239);--'Frozen Harpoon' 
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--13
				e.other:ScribeSpell(4252, 240);--'Xalirilan\'s Lesser Appraisal' 
				--14
				e.other:ScribeSpell(4264, 241);--'Xalirilan\'s Lesser Discombobulation'
				e.other:ScribeSpell(4276, 242);--'Xalirilan\'s Lesser Extrication'
				--23
				e.other:ScribeSpell(4253, 243);--'Xalirilan\'s Appraisal' 
				e.other:ScribeSpell(467, 244);--'Lightning Storm'
				--24
				e.other:ScribeSpell(4265, 245);--'Xalirilan\'s Discombobulation' 
				e.other:ScribeSpell(4277, 246);--'Xalirilan\'s Extrication' 
				--33
				e.other:ScribeSpell(4254, 247);--'Xalirilan\'s Greater Appraisal' 
				--34
				e.other:ScribeSpell(4266, 248);--'Xalirilan\'s Greater Discombobulation'
				e.other:ScribeSpell(4278, 249);--'Xalirilan\'s Greater Extrication'
				--44
				e.other:ScribeSpell(4099, 250);--'Bounce' 
				--49
				e.other:ScribeSpell(4067, 251);--'Ward of Calrena'
				--54
				e.other:ScribeSpell(4070, 252);--'Magi Ward' 
				--57
				e.other:ScribeSpell(4068, 253);--'Guard of Calrena' 
				--58
				e.other:ScribeSpell(1728, 254);--'Manasink' 
				e.other:ScribeSpell(4100, 255);--'Reflect' 
				--63
				e.other:ScribeSpell(4071, 256);--'Mana Ward' 
				--64
				e.other:ScribeSpell(4066, 257);--'Ice Meteor' 
				e.other:ScribeSpell(4069, 258);--'Protection of Calrena'  
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--52
				e.other:ScribeSpell(4963, 259);--'Natimbi Gate'
				e.other:ScribeSpell(5734, 260);--'Barindu Gate' 
				--54
				e.other:ScribeSpell(4965, 261);--'Natimbi Portal'
				--55
				e.other:ScribeSpell(5732, 262);--'Barindu Portal' 
				--57
				e.other:ScribeSpell(4964, 263);--'Translocate: Natimbi'
				--60
				e.other:ScribeSpell(5735, 264);--'Translocate: Barindu' 
				--65
				e.other:ScribeSpell(4905, 265);--'Black Ice'  
				e.other:ScribeSpell(4906, 266);--'White Fire' 
				e.other:ScribeSpell(4907, 267);--'Telaka' 
				e.other:ScribeSpell(4981, 268);--'Ancient: Strike of Chaos' 
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--53
				e.other:ScribeSpell(6181, 269);--'Bloodfields Gate'
				--55
				e.other:ScribeSpell(6183, 270);--'Bloodfields Portal'
				--58
				e.other:ScribeSpell(6182, 271);--'Translocate: Bloodfields' 
				--62
				e.other:ScribeSpell(6176, 272);--'Slaughter Gate'
				--64
				e.other:ScribeSpell(6178, 273);--'Slaughter Portal' 
				--66
				e.other:ScribeSpell(5442, 274);--'Icebane'  
				e.other:ScribeSpell(5443, 275);--'Ether Shield' 
				e.other:ScribeSpell(5444, 276);--'Tears of the Sun' 
				e.other:ScribeSpell(5446, 277);--'Spark of Fire'
				--67
				e.other:ScribeSpell(5445, 278);--'Lightningbane'
				e.other:ScribeSpell(5455, 279);--'Circle of Fire'
				e.other:ScribeSpell(6120, 280);--'Phase Walk'
				e.other:ScribeSpell(6177, 281);--'Translocate: Slaughter
				--68
				e.other:ScribeSpell(5447, 282);--'Firebane'     
				e.other:ScribeSpell(5448, 283);--'Ether Skin'    
				e.other:ScribeSpell(5449, 284);--'Spark of Thunder'   
				e.other:ScribeSpell(5450, 285);--'Thundaka'     
				e.other:ScribeSpell(5452, 286);--'Spark of Lightning'  
				--69
				e.other:ScribeSpell(5453, 287);--'Ether Ward'    
				e.other:ScribeSpell(5454, 288);--'Meteor Storm'   
				e.other:ScribeSpell(5457, 289);--'Spark of Ice'   
				e.other:ScribeSpell(5458, 290);--'Gelidin Comet'    
				e.other:ScribeSpell(5460, 291);--'Solist\'s Frozen Sword' 
				--70
				e.other:ScribeSpell(5451, 292);--'Circle of Thunder'
				e.other:ScribeSpell(5456, 293);--'Telekara' 
				e.other:ScribeSpell(5459, 294);--'Bulwark of Calrena'  
				e.other:ScribeSpell(5461, 295);--'Gelid Rains'  
				e.other:ScribeSpell(5462, 296);--'Corona Flare' 
				e.other:ScribeSpell(5463, 297);--'Ancient: Core Fire' 
				e.other:ScribeSpell(6146, 298);--'Ancient: Spear of Gelaqua' 
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--61
				e.other:ScribeSpell(6737, 299);--'Claw of Frost'
				--69
				e.other:ScribeSpell(6669, 300);--'Claw of Vox' 
				
				-- :Later
				--3849, 301);--'Alter Plane: Hate II'  
				--7674, 302);--'Focus Primitive Spellcaster\'s Empow
				--7675, 303);--'Focus Rudimentary Spellcaster\'s Emp
				--7676, 304);--'Focus Crude Spellcaster\'s Empowerin
				--7677, 305);--'Focus Makeshift Spellcaster\'s Empow
				--7678, 306);--'Focus Elementary Spellcaster\'s Empo
				--7679, 307);--'Focus Modest Spellcaster\'s Empoweri
				--7680, 308);--'Focus Simple Spellcaster\'s Empoweri
				--7681, 309);--'Focus Spellcaster\'s Empowering Esse
				--7682, 310);--'Focus Refined Spellcaster\'s Empower
				--7683, 311);--'Focus Intricate Spellcaster\'s Empow
				--7684, 312);--'Focus Elaborate Spellcaster\'s Empow
				--7685, 313);--'Focus Ornate Spellcaster\'s Empoweri
				--7687, 314);--'Focus Mass Primitive Spellcaster\'s 
				--7688, 315);--'Focus Mass Rudimentary Spellcaster\'
				--7689, 316);--'Focus Mass Crude Spellcaster\'s Empo
				--7690, 317);--'Focus Mass Makeshift Spellcaster\'s 
				--7691, 318);--'Focus Mass Elementary Spellcaster\'s
				--7692, 319);--'Focus Mass Modest Spellcaster\'s Emp
				--7693, 320);--'Focus Mass Simple Spellcaster\'s Emp
				--7694, 321);--'Focus Mass Spellcaster\'s Empowering
				--7695, 322);--'Focus Mass Refined Spellcaster\'s Em
				--7696, 323);--'Focus Mass Intricate Spellcaster\'s 
				--7697, 324);--'Focus Mass Elaborate Spellcaster\'s 
				--8041, 325);--'Clinging Frost'   
				--8043, 326);--'Ether Flame'    
				--8044, 327);--'Mana Weave'    
				--8236, 328);--'Undershore Portal'  
				--8238, 329);--'Undershore Gate' 
				--8239, 330);--'Translocate: Undershore' 
				--8511, 331);--'Ice Block'     
				--8512, 332);--'Chaos Flame'    
				--8513, 333);--'Fire Rune' 
				--8932, 334);--'Fire Mark' 
				--8966, 335);--'Arcstone Portal'
				--8968, 336);--'Arcstone Gate' 
				--8969, 337);--'Translocate: Arcstone' 
				--10540, 338);--'Ethereal Conflagration' 
				--10541, 339);--'Ethereal Conflagration Rk. II' 
				--10542, 340);--'Ethereal Conflagration Rk. III' 
				--10770, 341);--'Rimelure'     
				--10771, 342);--'Rimelure Rk. II'   
				--10772, 343);--'Rimelure Rk. III'   
				--10773, 344);--'Shield of the Crystalwing' 
				--10774, 345);--'Shield of the Crystalwing Rk. II' 
				--10775, 346);--'Shield of the Crystalwing Rk. III'
				--10776, 347);--'Tears of the Betrayed' 
				--10777, 348);--'Tears of the Betrayed Rk. II' 
				--10778, 349);--'Tears of the Betrayed Rk. III' 
				--10782, 350);--'Concussive Blast'   
				--10783, 351);--'Concussive Blast Rk. II' 
				--10784, 352);--'Concussive Blast Rk. III' 
				--10788, 353);--'Magmaraug\'s Presence' 
				--10789, 354);--'Magmaraug\'s Presence Rk. II' 
				--10790, 355);--'Magmaraug\'s Presence Rk. III' 
				--10792, 356);--'Patient Harvest'   
				--10793, 357);--'Patient Harvest Rk. II' 
				--10794, 358);--'Patient Harvest Rk. III' 
				--10798, 359);--'Cloudburst Strike'  
				--10799, 360);--'Cloudburst Strike Rk. II' 
				--10800, 361);--'Cloudburst Strike Rk. III' 
				--10804, 362);--'Impel'     
				--10805, 363);--'Impel Rk. II' 
				--10806, 364);--'Impel Rk. III'
				--10807, 365);--'Lavalure'   
				--10808, 366);--'Lavalure Rk. II' 
				--10809, 367);--'Lavalure Rk. III'
				--10810, 368);--'Scales of the Crystalwing' 
				--10811, 369);--'Scales of the Crystalwing Rk. II' 
				--10812, 370);--'Scales of the Crystalwing Rk. III'
				--10813, 371);--'Leap of Shocking Bolts' 
				--10814, 372);--'Leap of Shocking Bolts Rk. II' 
				--10815, 373);--'Leap of Shocking Bolts Rk. III' 
				--10816, 374);--'Ball Lightning' 
				--10817, 375);--'Ball Lightning Rk. II' 
				--10818, 376);--'Ball Lightning Rk. III' 
				--10819, 377);--'Leap of Sparks'  
				--10820, 378);--'Leap of Sparks Rk. II' 
				--10821, 379);--'Leap of Sparks Rk. III' 
				--10822, 380);--'Cold Snap'  
				--10823, 381);--'Cold Snap Rk. II'  
				--10824, 382);--'Cold Snap Rk. III' 
				--10828, 383);--'Crystalwing Ward'  
				--10829, 384);--'Crystalwing Ward Rk. II' 
				--10830, 385);--'Crystalwing Ward Rk. III' 
				--10831, 386);--'Volcanic Eruption'  
				--10832, 387);--'Volcanic Eruption Rk. II' 
				--10833, 388);--'Volcanic Eruption Rk. III' 
				--10837, 389);--'Icefall Avalanche'  
				--10838, 390);--'Icefall Avalanche Rk. II' 
				--10839, 391);--'Icefall Avalanche Rk. III' 
				--10840, 392);--'Ethantis\'s Burning Blade' 
				--10841, 393);--'Flashfires' 
				--10842, 394);--'Flashfires Rk. II'  
				--10843, 395);--'Flashfires Rk. III'  
				--10847, 396);--'Claw of Selay'  
				--10848, 397);--'Claw of Selay Rk. II'  
				--10849, 398);--'Claw of Selay Rk. III' 
				--10850, 399);--'Telakisz'    
				--10851, 400);--'Telakisz Rk. II'  
				--10852, 401);--'Telakisz Rk. III'  
				--10853, 402);--'Defense of Calrena'
				--10854, 403);--'Defense of Calrena Rk. II' 
				--10855, 404);--'Defense of Calrena Rk. III' 
				--10856, 405);--'Icicle Deluge'  
				--10857, 406);--'Icicle Deluge Rk. II'  
				--10858, 407);--'Icicle Deluge Rk. III' 
				--10859, 408);--'Sothgar\'s Flame' 
				--10860, 409);--'Sothgar\'s Flame Rk. II' 
				--10861, 410);--'Sothgar\'s Flame Rk. III' 
				--10862, 411);--'Tendrilmist Guard' 
				--10863, 412);--'Tefndrilmist Guard Rk. II' 
				--10864, 413);--'Tendrilmist Guard Rk. III' 
				--10877, 414);--'Translocate: Sunderock Springs' 
				--10878, 415);--'Sunderock Springs Portal' 
				--10879, 416);--'Sunderock Springs Gate' 
				--10880, 417);--'Translocate: Blightfire Moors' 
				--10881, 418);--'Blightfire Moors Portal' 
				--10882, 419);--'Blightfire Moors Gate' 
				--11828, 420);--'Intertwining Energy'  
				--11829, 421);--'Intertwining Energy Rk. II' 
				--11830, 422);--'Intertwining Energy Rk. III' 
				--11831, 423);--'Chaos Immolation'  
				--11832, 424);--'Chaos Immolation Rk. II' 
				--11833, 425);--'Chaos Immolation Rk. III' 
				--11834, 426);--'Beam of Solteris'  
				--11835, 427);--'Beam of Solteris Rk. II' 
				--11836, 428);--'Beam of Solteris Rk. III' 
				--11839, 429);--'Wildmagic Strike'  
				--11840, 430);--'Wildmagic Strike Rk. II' 
				--11841, 431);--'Wildmagic Strike Rk. III' 
				--11842, 432);--'Pure Wildmagic' 
				--11843, 433);--'Pure Wildmagic Rk. II' 
				--11844, 434);--'Pure Wildmagic Rk. III' 
				--11983, 435);--'Translocate: Katta Castrum' 
				--11984, 436);--'Katta Castrum Portal'  
				--11985, 437);--'Katta Castrum Gate' 
				--15889, 438);--'Translocate: Dragonscale Hills'
				--15890, 439);--'Dragonscale Hills Portal' 
				--15891, 440);--'Dragonscale Hills Gate' 
				--27749, 441);--'Primary Anchor Gate'  
				--27750, 442);--'Translocate: Primary Anchor' 
				--27751, 443);--'Primary Anchor Portal' 
				--27752, 444);--'Teleport Primary Anchor'
				--27753, 445);--'Secondary Anchor Gate' 
				--27754, 446);--'Translocate: Secondary Anchor' 
				--27755, 447);--'Secondary Anchor Portal' 
				--27756, 448);--'Teleport Secondary Anchor'
				--27757, 449);--'Primary Anchor Push'  
				--27758, 450);--'Secondary Anchor Push' 
				--33099, 451);--'Teleport Guild Hall Anchor' 
				--41188, 452);--'Teleport Guild Hall Anchor' 
			end 
		end  
	end
	if (e.other:GetClass() == 13) then --mag
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(205, 0);--'True North'  
			e.other:ScribeSpell(211, 1);--'Summon Drink' 
			e.other:ScribeSpell(288, 2);--'Minor Shielding' 
			e.other:ScribeSpell(310, 3);--'Flare'
			e.other:ScribeSpell(311, 4);--'Summon Dagger' 
			e.other:ScribeSpell(313, 5);--'Fire Flux'  '
			e.other:ScribeSpell(331, 6);--'Reclaim Energy' 
			e.other:ScribeSpell(50, 7);--'Summon Food'  
			e.other:ScribeSpell(93, 8);--'Burst of Flame' 
			--2
			e.other:ScribeSpell(315, 9);--'Elementalkin: Water' 
			e.other:ScribeSpell(318, 10);--'Summon Bandages' 
			--3
			e.other:ScribeSpell(232, 11);--'Sense Summoned' 
			e.other:ScribeSpell(316, 12);--'Elementalkin: Fire' 
			e.other:ScribeSpell(321, 13);--'Summon Wisp' 
			--4
			e.other:ScribeSpell(317, 14);--'Elementalkin: Air' 
			e.other:ScribeSpell(36, 15);--'Gate'
			e.other:ScribeSpell(94, 16);--'Burn'
			--5
			e.other:ScribeSpell(246, 17);--'Lesser Shielding' 
			e.other:ScribeSpell(322, 18);--'Flame Bolt' '
			e.other:ScribeSpell(58, 19);--'Elementalkin: Earth' 
			--6
			e.other:ScribeSpell(323, 20);--'Eye of Zomm' 
			e.other:ScribeSpell(325, 21);--'Dimensional Pocket' 
			e.other:ScribeSpell(398, 22);--'Elementaling: Water' 
			--7
			e.other:ScribeSpell(324, 23);--'Shock of Blades' 
			e.other:ScribeSpell(332, 24);--'Shield of Fire' 
			e.other:ScribeSpell(399, 25);--'Elementaling: Fire' 
			--8
			e.other:ScribeSpell(400, 26);--'Elementaling: Air' 
			e.other:ScribeSpell(42, 27);--'Invisibility' 
			e.other:ScribeSpell(613, 28);--'Staff of Tracing' 
			--9
			e.other:ScribeSpell(248, 29);--'Ward Summoned' 
			e.other:ScribeSpell(319, 30);--'Summon Fang' 
			e.other:ScribeSpell(397, 31);--'Elementaling: Earth' 
			--10
			e.other:ScribeSpell(330, 32);--'Rain of Blades' 
			e.other:ScribeSpell(402, 33);--'Elemental: Water' 
			e.other:ScribeSpell(48, 34);--'Cancel Magic' 
			--11
			e.other:ScribeSpell(327, 35);--'Burnout'
			e.other:ScribeSpell(403, 36);--'Elemental: Fire' 
			--12
			e.other:ScribeSpell(328, 37);--'Column of Fire' 
			e.other:ScribeSpell(35, 38);--'Bind Affinity' 
			e.other:ScribeSpell(404, 39);--'Elemental: Air' 
			--13
			e.other:ScribeSpell(305, 40);--'Identify'  ''
			e.other:ScribeSpell(333, 41);--'Phantom Leather' 
			e.other:ScribeSpell(401, 42);--'Elemental: Earth' 
			--14
			e.other:ScribeSpell(336, 43);--'Minor Summoning: Water'
			e.other:ScribeSpell(614, 44);--'Staff of Warding' 
			--15
			e.other:ScribeSpell(100, 45);--'Summon Throwing Dagger'
			e.other:ScribeSpell(320, 46);--'Summon Heatstone' 
			e.other:ScribeSpell(334, 47);--'Shock of Flame' 
			e.other:ScribeSpell(395, 48);--'Minor Summoning: Fire'
			--16
			e.other:ScribeSpell(309, 49);--'Shielding'
			e.other:ScribeSpell(396, 50);--'Minor Summoning: Air'
			e.other:ScribeSpell(80, 51);--'See Invisible' 
			--17
			e.other:ScribeSpell(335, 52);--'Minor Summoning: Earth'
			e.other:ScribeSpell(4, 53);--'Summon Waterstone' 
			e.other:ScribeSpell(83, 54);--'Rain of Fire' 
			--18
			e.other:ScribeSpell(497, 55);--'Lesser Summoning: Water'
			e.other:ScribeSpell(663, 56);--'Expulse Summoned' 
			e.other:ScribeSpell(68, 57);--'Bolt of Flame'
			--19
			e.other:ScribeSpell(108, 58);--'Elemental Shield' 
			e.other:ScribeSpell(411, 59);--'Shield of Flame' 
			e.other:ScribeSpell(498, 60);--'Lesser Summoning: Fire' 
			--20
			e.other:ScribeSpell(101, 61);--'Summon Arrows' 
			e.other:ScribeSpell(102, 62);--'Spear of Warding' 
			e.other:ScribeSpell(499, 63);--'Lesser Summoning: Air'
			--21
			e.other:ScribeSpell(496, 64);--'Lesser Summoning: Earth'
			e.other:ScribeSpell(55, 65);--'Cornucopia'
			--22
			e.other:ScribeSpell(110, 66);--'Malaise'
			e.other:ScribeSpell(189, 67);--'Flame Flux'
			e.other:ScribeSpell(56, 68);--'Everfount'
			e.other:ScribeSpell(570, 69);--'Summoning: Water' 
			--23
			e.other:ScribeSpell(113, 70);--'Shock of Spikes' 
			e.other:ScribeSpell(571, 71);--'Summoning: Fire' 
			--24
			e.other:ScribeSpell(572, 72);--'Summoning: Air'
			e.other:ScribeSpell(615, 73);--'Staff of Runes' 
			e.other:ScribeSpell(65, 74);--'Major Shielding' 
			--25
			e.other:ScribeSpell(115, 75);--'Dismiss Summoned' 
			e.other:ScribeSpell(569, 76);--'Summoning: Earth'
			e.other:ScribeSpell(81, 77);--'Phantom Chain' 
			--26
			e.other:ScribeSpell(409, 78);--'Rain of Spikes' 
			e.other:ScribeSpell(574, 79);--'Greater Summoning: Water' 
			e.other:ScribeSpell(617, 80);--'Sword of Runes' 
			--27
			e.other:ScribeSpell(575, 81);--'Greater Summoning: Fire'
			--28
			e.other:ScribeSpell(479, 82);--'Inferno Shield' 
			e.other:ScribeSpell(576, 83);--'Greater Summoning: Air'
			e.other:ScribeSpell(664, 84);--'Expel Summoned'  
			--29
			e.other:ScribeSpell(103, 85);--'Summon Coldstone' 
			e.other:ScribeSpell(106, 86);--'Burnout II'
			e.other:ScribeSpell(573, 87);--'Greater Summoning: Earth' 
			--30
			e.other:ScribeSpell(618, 88);--'Dimensional Hole' 
			--31
			e.other:ScribeSpell(120, 89);--'Blaze'
			e.other:ScribeSpell(621, 90);--'Minor Conjuration: Water'
			--32
			e.other:ScribeSpell(49, 91);--'Nullify Magic' 
			e.other:ScribeSpell(622, 92);--'Minor Conjuration: Fire'
			e.other:ScribeSpell(66, 93);--'Greater Shielding' 
			--33
			e.other:ScribeSpell(616, 94);--'Staff of Symbols' 
			e.other:ScribeSpell(623, 95);--'Minor Conjuration: Air'
			e.other:ScribeSpell(69, 96);--'Cinder Bolt
			--34
			e.other:ScribeSpell(620, 97);--'Minor Conjuration: Earth' 
			--35
			e.other:ScribeSpell(104, 98);--'Dagger of Symbols' 
			e.other:ScribeSpell(121, 99);--'Rain of Lava' 
			--36
			e.other:ScribeSpell(625, 100);--'Lesser Conjuration: Water'
			--37
			e.other:ScribeSpell(105, 101);--'Summon Ring of Flight'
			e.other:ScribeSpell(626, 102);--'Lesser Conjuration: Fire'
			--38
			e.other:ScribeSpell(627, 103);--'Lesser Conjuration: Air'
			e.other:ScribeSpell(680, 104);--'Barrier of Combustion' 
			--39
			e.other:ScribeSpell(122, 105);--'Flame Arc'
			e.other:ScribeSpell(624, 106);--'Lesser Conjuration: Earth'
			--40
			--N/A
			--41
			e.other:ScribeSpell(109, 107);--'Elemental Armor' 
			e.other:ScribeSpell(114, 108);--'Shock of Swords' 
			e.other:ScribeSpell(629, 109);--'Conjuration: Water'
			e.other:ScribeSpell(82, 110);--'Phantom Plate' 
			--42
			e.other:ScribeSpell(630, 111);--'Conjuration: Fire'
			--43
			e.other:ScribeSpell(631, 112);--'Conjuration: Air' 
			e.other:ScribeSpell(67, 113);--'Arch Shielding' 
			--44
			e.other:ScribeSpell(111, 114);--'Malaisement' 
			e.other:ScribeSpell(628, 115);--'Conjuration: Earth'
			--45
			e.other:ScribeSpell(412, 116);--'Shield of Lava' 
			--46
			e.other:ScribeSpell(632, 117);--'Greater Conjuration: Earth' 
			--47
			e.other:ScribeSpell(107, 118);--'Burnout III' ' 
			e.other:ScribeSpell(634, 119);--'Greater Conjuration: Fire'
			e.other:ScribeSpell(70, 120);--'Lava Bolt'
			--48
			e.other:ScribeSpell(116, 121);--'Banish Summoned' 
			e.other:ScribeSpell(635, 122);--'Greater Conjuration: Air'
			--49
			e.other:ScribeSpell(410, 123);--'Rain of Swords' 
			e.other:ScribeSpell(633, 124);--'Greater Conjuration: Water' 
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--7
				e.other:ScribeSpell(1504, 125);--'Renew Elements' 
				--18
				e.other:ScribeSpell(1505, 126);--'Renew Summoning' 
				--44
				e.other:ScribeSpell(1503, 127);--'Modulating Rod' 
				--45
				e.other:ScribeSpell(1944, 128);--'Summon Orb'
				--51
				e.other:ScribeSpell(112, 129);--'Malosi' 
				e.other:ScribeSpell(1659, 130);--'Scintillation'  
				e.other:ScribeSpell(1671, 131);--'Vocarate: Earth' 
				e.other:ScribeSpell(1680, 132);--'Gift of Xev'
				--52
				e.other:ScribeSpell(1660, 133);--'Char'
				e.other:ScribeSpell(1666, 134);--'Phantom Armor'  
				e.other:ScribeSpell(1673, 135);--'Vocarate: Fire' 
				e.other:ScribeSpell(1681, 136);--'Bristlebane\'s Bundle' 
				--53
				e.other:ScribeSpell(1526, 137);--'Annul Magic'
				e.other:ScribeSpell(1668, 138);--'Boon of Immolation' 
				e.other:ScribeSpell(1674, 139);--'Vocarate: Air'  
				e.other:ScribeSpell(1682, 140);--'Quiver of Marr' 
				--54
				e.other:ScribeSpell(1610, 141);--'Shield of the Magi' 
				e.other:ScribeSpell(1661, 142);--'Scars of Sigil' 
				e.other:ScribeSpell(1672, 143);--'Vocarate: Water' 
				e.other:ScribeSpell(1683, 144);--'Bandoleer of Luclin' 
				--55
				e.other:ScribeSpell(1662, 145);--'Sirocco'
				e.other:ScribeSpell(1684, 146);--'Pouch of Quellious' 
				e.other:ScribeSpell(1770, 147);--'Rage of Zomm'
				e.other:ScribeSpell(1771, 148);--'Call of the Hero' 
				--56
				e.other:ScribeSpell(1529, 149);--'Exile Summoned' 
				e.other:ScribeSpell(1667, 150);--'Cadeau of Flame' 
				e.other:ScribeSpell(1679, 151);--'Dyzil\'s Deafening Decoy'
				e.other:ScribeSpell(1685, 152);--'Muzzle of Mardu' 
				--57
				e.other:ScribeSpell(1663, 153);--'Shock of Steel' 
				e.other:ScribeSpell(1675, 154);--'Greater Vocaration: Earth' 
				e.other:ScribeSpell(1720, 155);--'Eye of Tallon'  
				--58
				e.other:ScribeSpell(1577, 156);--'Malosini'
				e.other:ScribeSpell(1670, 157);--'Velocity'
				e.other:ScribeSpell(1677, 158);--'Greater Vocaration: Fire'
				--59
				e.other:ScribeSpell(1664, 159);--'Seeking Flame of Seukor'
				e.other:ScribeSpell(1665, 160);--'Manastorm'
				e.other:ScribeSpell(1678, 161);--'Greater Vocaration: Air'
				e.other:ScribeSpell(1936, 162);--'Manifest Elements' 
				--60
				e.other:ScribeSpell(1531, 163);--'Banishment' 
				e.other:ScribeSpell(1669, 164);--'Aegis of Ro'
				e.other:ScribeSpell(1676, 165);--'Greater Vocaration: Water' 
				e.other:ScribeSpell(1772, 166);--'Mala' 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--27
				e.other:ScribeSpell(1286, 167);--'Expedience'
				--30
				e.other:ScribeSpell(1400, 168);--'Monster Summoning I' 
				--31
				e.other:ScribeSpell(1401, 169);--'Summon Shard of the Core'
				--36
				e.other:ScribeSpell(1285, 170);--'Summon Companion' 
				--43
				e.other:ScribeSpell(1403, 171);--'Elemental Maelstrom' 
				--50
				e.other:ScribeSpell(1402, 172);--'Monster Summoning II' 
				--55
				e.other:ScribeSpell(1405, 173);--'Wrath of the Elements' 
				e.other:ScribeSpell(1472, 174);--'Burnout IV'
				--59
				e.other:ScribeSpell(1284, 175);--'Valiant Companion' 
				--60
				e.other:ScribeSpell(1404, 176);--'Monster Summoning III' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--2
				e.other:ScribeSpell(2230, 177);--'Summon Brass Choker' 
				--8
				e.other:ScribeSpell(2233, 178);--'Summon Linen Mantle' 
				--10
				e.other:ScribeSpell(2242, 179);--'Summon Tarnished Bauble'
				--11
				e.other:ScribeSpell(2531, 180);--'Summon Elemental Defender' 
				--16
				e.other:ScribeSpell(2239, 181);--'Summon Tiny Ring' 
				--17
				e.other:ScribeSpell(2532, 182);--'Summon Phantom Leather' 
				--20
				e.other:ScribeSpell(2236, 183);--'Summon Jade Bracelet' 
				--21
				e.other:ScribeSpell(2231, 184);--'Summon Silver Choker' 
				--25
				e.other:ScribeSpell(2533, 185);--'Summon Phantom Chain' 
				--27
				e.other:ScribeSpell(2234, 186);--'Summon Leather Mantle' 
				--30
				e.other:ScribeSpell(2243, 187);--'Summon Shiny Bauble' 
				--37
				e.other:ScribeSpell(2240, 188);--'Summon Twisted Ring' 
				--38
				e.other:ScribeSpell(2534, 189);--'Summon Phantom Plate' 
				--42
				e.other:ScribeSpell(2237, 190);--'Summon Opal Bracelet' 
				--44
				e.other:ScribeSpell(4028, 191);--'Summon Stone Bracelet' 
				--48
				e.other:ScribeSpell(2535, 192);--'Summon Elemental Blanket'
				--50
				e.other:ScribeSpell(2232, 193);--'Summon Golden Choker' 
				--51
				e.other:ScribeSpell(2235, 194);--'Summon Silken Mantle' 
				--52
				e.other:ScribeSpell(2244, 195);--'Summon Brilliant Bauble'
				e.other:ScribeSpell(2536, 196);--'Transon\'s Elemental Infusion'
				--53
				e.other:ScribeSpell(2241, 197);--'Summon Studded Ring' 
				--54
				e.other:ScribeSpell(2238, 198);--'Summon Ruby Bracelet' 
				e.other:ScribeSpell(2537, 199);--'Veil of Elements' 
				e.other:ScribeSpell(2879, 200);--'Phantasmal Armor' 
				e.other:ScribeSpell(4029, 201);--'Summon Iron Bracelet' 
				--56
				e.other:ScribeSpell(2538, 202);--'Mass Mystical Transvergence'
				e.other:ScribeSpell(3188, 203);--'Rod of Mystical Transvergence'
				--58
				e.other:ScribeSpell(2539, 204);--'Transon\'s Phantasmal Protection'
				--60
				e.other:ScribeSpell(1394, 205);--'Maelstrom of Electricity'
				e.other:ScribeSpell(2118, 206);--'Ancient: Shock of Sun' 
				e.other:ScribeSpell(2119, 207);--'Ancient: Burnout Blaze' 
				e.other:ScribeSpell(2540, 208);--'Shock of Fiery Blades' 
				e.other:ScribeSpell(2896, 209);--'Transon\'s Elemental Renewal
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--19
				e.other:ScribeSpell(3583, 210);--'Tiny Companion' 
				--34
				e.other:ScribeSpell(3584, 211);--'Refresh Summoning' 
				--54
				e.other:ScribeSpell(3582, 212);--'Elemental Cloak' 
				--61
				e.other:ScribeSpell(3040, 213);--'Belt of Magi`Kot' 
				e.other:ScribeSpell(3041, 214);--'Blade of Walnan' 
				e.other:ScribeSpell(3198, 215);--'Flameshield of Ro' 
				e.other:ScribeSpell(3205, 216);--'Summon Platinum Choker' 
				e.other:ScribeSpell(3206, 217);--'Summon Runed Mantle' 
				e.other:ScribeSpell(3207, 218);--'Summon Sapphire Bracelet'
				e.other:ScribeSpell(3208, 219);--'Summon Spiked Ring' 
				e.other:ScribeSpell(3209, 220);--'Summon Glowing Bauble' 
				e.other:ScribeSpell(3300, 221);--'Shield of the Arcane' 
				e.other:ScribeSpell(3317, 222);--'Ward of Xegony' 
				e.other:ScribeSpell(3318, 223);--'Firebolt of Tallon'
				e.other:ScribeSpell(3329, 224);--'Elemental Barrier' 
				e.other:ScribeSpell(4030, 225);--'Summon Steel Bracelet' 
				--62
				e.other:ScribeSpell(3031, 226);--'Xegony\'s Phantasmal Guard'
				e.other:ScribeSpell(3042, 227);--'Fist of Ixiblat' 
				e.other:ScribeSpell(3045, 228);--'Talisman of Return' 
				e.other:ScribeSpell(3237, 229);--'Burnout V'
				e.other:ScribeSpell(3319, 230);--'Sun Storm'
				e.other:ScribeSpell(3320, 231);--'Servant of Marr' 
				e.other:ScribeSpell(3352, 232);--'Imbue Earth'
				--63
				e.other:ScribeSpell(3043, 233);--'Blade of The Kedge' 
				e.other:ScribeSpell(3210, 234);--'Summon Jewelry Bag' 
				e.other:ScribeSpell(3321, 235);--'Black Steel'
				e.other:ScribeSpell(3322, 236);--'Child of Ro'
				e.other:ScribeSpell(3387, 237);--'Malosinia'
				e.other:ScribeSpell(3483, 238);--'Elemental Silence' 
				e.other:ScribeSpell(3486, 239);--'Maelstrom of Ro' 
				--64
				e.other:ScribeSpell(3044, 240);--'Girdle of Magi`Kot' 
				e.other:ScribeSpell(3238, 241);--'Destroy Summoned' 
				e.other:ScribeSpell(3239, 424);--'Planar Renewal' 
				e.other:ScribeSpell(3302, 242);--'Shield of Maelin' 
				e.other:ScribeSpell(3323, 243);--'Maelstrom of Thunder' 
				e.other:ScribeSpell(3353, 244);--'Imbue Air'  '' 
				--65
				e.other:ScribeSpell(3324, 245);--'Rathe\'s Son'
				e.other:ScribeSpell(3325, 246);--'Sun Vortex' 
				e.other:ScribeSpell(3356, 247);--'Imbue Fire' 
				e.other:ScribeSpell(3357, 248);--'Imbue Water'
				e.other:ScribeSpell(3484, 249);--'Call of the Arch Mage' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--44
				e.other:ScribeSpell(3699, 250);--'Primal Remedy'  
				--52
				e.other:ScribeSpell(3700, 251);--'Elemental Empathy' 
				--54
				e.other:ScribeSpell(4011, 252);--'Kindle'
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--13
				e.other:ScribeSpell(4255, 253);--'Wuggan\'s Lesser Appraisal'
				--14
				e.other:ScribeSpell(4267, 254);--'Wuggan\'s Lesser Discombobulation' 
				e.other:ScribeSpell(4279, 255);--'Wuggan\'s Lesser Extrication' 
				--20
				e.other:ScribeSpell(4027, 256);--'Summon Wooden Bracelet' 
				--23
				e.other:ScribeSpell(4256, 257);--'Wuggan\'s Appraisal'
				--24
				e.other:ScribeSpell(4268, 258);--'Wuggan\'s Discombobulation' 
				e.other:ScribeSpell(4280, 259);--'Wuggan\'s Extrication'  
				--33
				e.other:ScribeSpell(4257, 260);--'Wuggan\'s Greater Appraisal' 
				--34
				e.other:ScribeSpell(4269, 261);--'Wuggan\'s Greater Discombobulation'
				e.other:ScribeSpell(4281, 262);--'Wuggan\'s Greater Extrication' 
				--42
				e.other:ScribeSpell(4082, 263);--'Summon: Orb of Exploration'
				e.other:ScribeSpell(4099, 264);--'Bounce'
				--46
				e.other:ScribeSpell(4079, 265);--'Ward of Calliav' 
				--58
				e.other:ScribeSpell(4080, 266);--'Guard of Calliav' 
				e.other:ScribeSpell(4100, 267);--'Reflect'
				--60
				e.other:ScribeSpell(4078, 268);--'Wind of the Desert' 
				--62
				e.other:ScribeSpell(4110, 269);--'Burning Sand'
				--64
				e.other:ScribeSpell(4081, 270);--'Protection of Calliav' 
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--54
				e.other:ScribeSpell(5133, 271);--'Elemental Draw'
				--65
				e.other:ScribeSpell(4886, 272);--'Elemental Siphon'
				e.other:ScribeSpell(4887, 273);--'Rock of Taelosia'
				e.other:ScribeSpell(4888, 274);--'Monster Summoning IV' 
				e.other:ScribeSpell(4976, 275);--'Ancient: Chaos Vortex'  
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5464, 276);--'Summon Calliav\'s Runed Mantle' 
				e.other:ScribeSpell(5466, 277);--'Fireskin'
				e.other:ScribeSpell(5467, 278);--'Summon Fireblade'  
				e.other:ScribeSpell(5468, 279);--'Summon Calliav\'s Jeweled Bracelet'
				e.other:ScribeSpell(5469, 280);--'Summon Calliav\'s Spiked Ring' 
				e.other:ScribeSpell(5470, 281);--'Summon Calliav\'s Glowing Bauble'
				e.other:ScribeSpell(5471, 282);--'Summon Calliav\'s Steel Bracelet'
				e.other:ScribeSpell(5472, 283);--'Elemental Aura' 
				e.other:ScribeSpell(5473, 284);--'Child of Wind'  
				e.other:ScribeSpell(5474, 285);--'Bolt of Jerikor'
				e.other:ScribeSpell(5475, 286);--'Summon Calliav\'s Platinum Choker' 
				--67
				e.other:ScribeSpell(5465, 287);--'Summon Staff of the North Wind' 
				e.other:ScribeSpell(5477, 288);--'Summon Dagger of the Deep' 
				e.other:ScribeSpell(5479, 289);--'Rain of Jerikor'
				e.other:ScribeSpell(5480, 290);--'Child of Water' 
				e.other:ScribeSpell(5486, 291);--'Summon Sphere of Air' 
				e.other:ScribeSpell(5489, 292);--'Summon Crystal Belt' 
				--68
				e.other:ScribeSpell(5476, 293);--'Phantom Shield' 
				e.other:ScribeSpell(5483, 294);--'Summon Pouch of Jerikor' 
				e.other:ScribeSpell(5484, 295);--'Blade Strike' 
				e.other:ScribeSpell(5485, 296);--'Child of Fire' 
				e.other:ScribeSpell(5492, 297);--'Pyrilen Skin' 
				--69
				e.other:ScribeSpell(5478, 298);--'Elemental Fury' 
				e.other:ScribeSpell(5481, 299);--'Burning Earth' 
				e.other:ScribeSpell(5490, 300);--'Desolate Summoned' 
				e.other:ScribeSpell(5491, 301);--'Renewal of Jerikor' 
				e.other:ScribeSpell(5494, 302);--'Bulwark of Calliav' 
				--70
				e.other:ScribeSpell(5488, 303);--'Circle of Fireskin' 
				e.other:ScribeSpell(5493, 304);--'Star Scream'  
				e.other:ScribeSpell(5495, 305);--'Child of Earth' 
				e.other:ScribeSpell(5496, 306);--'Star Strike'  
				e.other:ScribeSpell(5497, 307);--'Elemental Simulacrum' 
				e.other:ScribeSpell(5498, 308);--'Ancient: Nova Strike' 
				e.other:ScribeSpell(6145, 309);--'Ancient: Veil of Pyrilonus
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--61
				e.other:ScribeSpell(6738, 310);--'Summon: Lava Orb' 
				
				-- :Later
				--e.other:ScribeSpell(6670, 311);--'Summon: Molten Orb' 
				--e.other:ScribeSpell(7674, 312);--'Focus Primitive Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7675, 313);--'Focus Rudimentary Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7676, 314);--'Focus Crude Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7677, 315);--'Focus Makeshift Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7678, 316);--'Focus Elementary Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7679, 317);--'Focus Modest Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7680, 318);--'Focus Simple Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7681, 319);--'Focus Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7682, 320);--'Focus Refined Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7683, 321);--'Focus Intricate Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7684, 322);--'Focus Elaborate Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7685, 323);--'Focus Ornate Spellcaster\'s Empowering Essence' 
				--e.other:ScribeSpell(7687, 324);--'Focus Mass Primitive Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7688, 325);--'Focus Mass Rudimentary Spellcaster\'s Empowering Essence
				--e.other:ScribeSpell(7689, 326);--'Focus Mass Crude Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7690, 327);--'Focus Mass Makeshift Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7691, 328);--'Focus Mass Elementary Spellcaster\'s Empowering Essence
				--e.other:ScribeSpell(7692, 329);--'Focus Mass Modest Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7693, 330);--'Focus Mass Simple Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7694, 331);--'Focus Mass Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7695, 332);--'Focus Mass Refined Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7696, 333);--'Focus Mass Intricate Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(7697, 334);--'Focus Mass Elaborate Spellcaster\'s Empowering Essence'
				--e.other:ScribeSpell(8037, 335);--'Raging Servant' 
				--e.other:ScribeSpell(8038, 336);--'Burning Aura'
				--e.other:ScribeSpell(8040, 337);--'Fickle Fire' 
				--e.other:ScribeSpell(8515, 338);--'Spear of Ro'
				--e.other:ScribeSpell(8517, 339);--'Iceflame Guard' 
				--e.other:ScribeSpell(8518, 340);--'Rathe\'s Strength' 
				--e.other:ScribeSpell(8933, 341);--'Earthen Strength' 
				--e.other:ScribeSpell(9980, 342);--'Malosinise' 
				--e.other:ScribeSpell(9981, 343);--'Malosinise Rk. II' 
				--e.other:ScribeSpell(9982, 344);--'Malosinise Rk. III'
				--e.other:ScribeSpell(10684, 345);--'Magmaskin'  
				--e.other:ScribeSpell(10685, 346);--'Magmaskin Rk. II'  
				--e.other:ScribeSpell(10686, 347);--'Magmaskin Rk. III'  
				--e.other:ScribeSpell(10688, 348);--'Summon Wintry Paradox' 
				--e.other:ScribeSpell(10689, 349);--'Summon Wintry Paradox Rk. II'
				--e.other:ScribeSpell(10690, 350);--'Summon Wintry Paradox Rk. III' 
				--e.other:ScribeSpell(10692, 351);--'Prime Shielding'  
				--e.other:ScribeSpell(10693, 352);--'Prime Shielding Rk. II' 
				--e.other:ScribeSpell(10694, 353);--'Prime Shielding Rk. III' 
				--e.other:ScribeSpell(10695, 354);--'Essence of Air'  
				--e.other:ScribeSpell(10696, 355);--'Bolt of Molten Slag'
				--e.other:ScribeSpell(10697, 356);--'Bolt of Molten Slag Rk. II'
				--e.other:ScribeSpell(10698, 357);--'Bolt of Molten Slag Rk. III'
				--e.other:ScribeSpell(10700, 358);--'Wand of Elemental Transvergence'
				--e.other:ScribeSpell(10702, 359);--'Summon Plate of the Elements'
				--e.other:ScribeSpell(10704, 360);--'Summon Elemental Armaments' 
				--e.other:ScribeSpell(10705, 361);--'Rain of Molten Slag' 
				--e.other:ScribeSpell(10706, 362);--'Rain of Molten Slag Rk. II' 
				--e.other:ScribeSpell(10707, 363);--'Rain of Molten Slag Rk. III' 
				--e.other:ScribeSpell(10708, 364);--'Essence of Water' 
				--e.other:ScribeSpell(10710, 365);--'Summon Muzzle of Mowcha' 
				--e.other:ScribeSpell(10712, 366);--'Phantasmal Warden'  
				--e.other:ScribeSpell(10713, 367);--'Phantasmal Warden Rk. II' 
				--e.other:ScribeSpell(10714, 368);--'Phantasmal Warden Rk. III' 
				--e.other:ScribeSpell(10715, 369);--'Summon Aenda\'s Trinkets' 
				--e.other:ScribeSpell(10716, 370);--'Shock of Silvered Steel' 
				--e.other:ScribeSpell(10717, 371);--'Shock of Silvered Steel Rk. II'
				--e.other:ScribeSpell(10718, 372);--'Shock of Silvered Steel Rk. III'
				--e.other:ScribeSpell(10719, 373);--'Essence of Fire'
				--e.other:ScribeSpell(10720, 374);--'Scorching Skin' 
				--e.other:ScribeSpell(10721, 375);--'Scorching Skin Rk. II' 
				--e.other:ScribeSpell(10722, 376);--'Scorching Skin Rk. III' 
				--e.other:ScribeSpell(10726, 377);--'Granite Stance'  
				--e.other:ScribeSpell(10727, 378);--'Granite Stance Rk. II' 
				--e.other:ScribeSpell(10728, 379);--'Granite Stance Rk. III' 
				--e.other:ScribeSpell(10729, 380);--'Burnout VI'  
				--e.other:ScribeSpell(10730, 381);--'Burnout VI Rk. II'  
				--e.other:ScribeSpell(10731, 382);--'Burnout VI Rk. III' 
				--e.other:ScribeSpell(10732, 383);--'Scalding Sands' 
				--e.other:ScribeSpell(10733, 384);--'Scalding Sands Rk. II' 
				--e.other:ScribeSpell(10734, 385);--'Scalding Sands Rk. III' 
				--e.other:ScribeSpell(10735, 386);--'Annihilate the Unnatural' 
				--e.other:ScribeSpell(10736, 387);--'Annihilate the Unnatural Rk. II'
				--e.other:ScribeSpell(10737, 388);--'Annihilate the Unnatural Rk. III'
				--e.other:ScribeSpell(10738, 389);--'Renewal of Aenda' 
				--e.other:ScribeSpell(10739, 390);--'Renewal of Aenda Rk. II' 
				--e.other:ScribeSpell(10740, 391);--'Renewal of Aenda Rk. III' 
				--e.other:ScribeSpell(10741, 392);--'Aegis of Calliav' 
				--e.other:ScribeSpell(10742, 393);--'Aegis of Calliav Rk. II' 
				--e.other:ScribeSpell(10743, 394);--'Aegis of Calliav Rk. III' 
				--e.other:ScribeSpell(10747, 395);--'Circle of Magmaskin' 
				--e.other:ScribeSpell(10748, 396);--'Circle of Magmaskin Rk. II' 
				--e.other:ScribeSpell(10749, 397);--'Circle of Magmaskin Rk. III' 
				--e.other:ScribeSpell(10750, 398);--'Rain of Thunderbolts' 
				--e.other:ScribeSpell(10751, 399);--'Rain of Thunderbolts Rk. II' 
				--e.other:ScribeSpell(10752, 400);--'Rain of Thunderbolts Rk. III'
				--e.other:ScribeSpell(10753, 401);--'Essence of Earth'  
				--e.other:ScribeSpell(10754, 402);--'Fickle Inferno' 
				--e.other:ScribeSpell(10755, 403);--'Fickle Inferno Rk. II' 
				--e.other:ScribeSpell(10756, 404);--'Fickle Inferno Rk. III' 
				--e.other:ScribeSpell(10757, 405);--'Elemental Symbiosis' 
				--e.other:ScribeSpell(10758, 406);--'Elemental Symbiosis Rk. II' 
				--e.other:ScribeSpell(10759, 407);--'Elemental Symbiosis Rk. III' 
				--e.other:ScribeSpell(10763, 408);--'Mass Elemental Transvergence' 
				--e.other:ScribeSpell(10764, 409);--'Mass Elemental Transvergence Rk. II'
				--e.other:ScribeSpell(10765, 410);--'Mass Elemental Transvergence Rk. III'
				--e.other:ScribeSpell(10766, 411);--'Blazing Stance'  
				--e.other:ScribeSpell(10767, 412);--'Blazing Stance Rk. II'  
				--e.other:ScribeSpell(10768, 413);--'Blazing Stance Rk. III'  
				--e.other:ScribeSpell(10769, 414);--'Monster Summoning V' 
				--e.other:ScribeSpell(11816, 415);--'Beam of Molten Slag'
				--e.other:ScribeSpell(11817, 416);--'Beam of Molten Slag Rk. II' 
				--e.other:ScribeSpell(11818, 417);--'Beam of Molten Slag Rk. III' 
				--e.other:ScribeSpell(11819, 418);--'Iceflame Body' 
				--e.other:ScribeSpell(11820, 419);--'Iceflame Body Rk. II' 
				--e.other:ScribeSpell(11821, 420);--'Iceflame Body Rk. III'
				--e.other:ScribeSpell(11825, 421);--'Rampaging Servant'
				--e.other:ScribeSpell(11826, 422);--'Rampaging Servant Rk. II' 
				--e.other:ScribeSpell(11827, 423);--'Rampaging Servant Rk. III' 
			end 
		end  
	end
	if (e.other:GetClass() == 3) then --pal
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(5011, 0);--'Salve'
			--2
			e.other:ScribeSpell(201, 1);--'Flash of Light' 
			--3
			e.other:ScribeSpell(205, 2);--'True North' 
			--4
			e.other:ScribeSpell(221, 3);--'Sense the Dead' 
			--5
			e.other:ScribeSpell(203, 4);--'Cure Poison' 
			--6
			e.other:ScribeSpell(200, 5);--'Minor Healing' 
			--7
			--N/A
			--8
			e.other:ScribeSpell(202, 6);--'Courage'  
			--9
			e.other:ScribeSpell(209, 7);--'Spook the Dead' 
			e.other:ScribeSpell(210, 8);--'Yaulp'  
			--10
			e.other:ScribeSpell(208, 9);--'Lull'
			--11
			e.other:ScribeSpell(213, 10);--'Cure Disease' 
			--12
			e.other:ScribeSpell(17, 11);--'Light Healing' 
			--13
			--N/A
			--14
			e.other:ScribeSpell(218, 12);--'Ward Undead' 
			e.other:ScribeSpell(223, 13);--'Hammer of Wrath' 
			--15
			e.other:ScribeSpell(11, 14);--'Holy Armor' 
			--16
			e.other:ScribeSpell(234, 15);--'Halo of Light' 
			--17
			e.other:ScribeSpell(235, 16);--'Invisibility versus Undead',
			--18
			e.other:ScribeSpell(215, 17);--'Reckless Strength'
			--19
			e.other:ScribeSpell(230, 18);--'Root'  
			--20
			e.other:ScribeSpell(219, 19);--'Center'  
			--21
			e.other:ScribeSpell(227, 20);--'Endure Poison' 
			--22
			e.other:ScribeSpell(2168, 21);--'Reanimation' 
			--23
			e.other:ScribeSpell(37, 22);--'Hammer of Striking'
			--24
			e.other:ScribeSpell(485, 23);--'Symbol of Transal'
			--25
			e.other:ScribeSpell(501, 24);--'Soothe' 
			--26
			--N/A
			--27
			e.other:ScribeSpell(12, 25);--'Healing'  '
			--28
			e.other:ScribeSpell(216, 26);--'Stun'  '',
			--29
			e.other:ScribeSpell(228, 27);--'Endure Magic' 
			--30
			e.other:ScribeSpell(2169, 28);--'Reconstitution' 
			e.other:ScribeSpell(233, 29);--'Expulse Undead' 
			e.other:ScribeSpell(368, 30);--'Spirit Armor' 
			--31
			e.other:ScribeSpell(2170, 31);--'Reparation' 
			--32
			e.other:ScribeSpell(48, 32);--'Cancel Magic' 
			--33
			e.other:ScribeSpell(486, 33);--'Symbol of Ryltan', 
			--34
			e.other:ScribeSpell(95, 34);--'Counteract Poison' 
			--35
			--N/A
			--36
			e.other:ScribeSpell(15, 35);--'Greater Healing' 
			--37
			e.other:ScribeSpell(89, 36);--'Daring'  
			--38
			e.other:ScribeSpell(226, 37);--'Endure Disease' 
			e.other:ScribeSpell(43, 38);--'Yaulp II'  
			--39
			e.other:ScribeSpell(18, 39);--'Guard'  '',
			e.other:ScribeSpell(391, 40);--'Revive' 
			--40
			--N/A
			--41
			--N/A
			--42
			e.other:ScribeSpell(123, 41);--'Holy Might' 
			--43
			e.other:ScribeSpell(47, 42);--'Calm'
			--44
			--N/A
			--45
			--N/A
			--46
			e.other:ScribeSpell(117, 43);--'Dismiss Undead' 
			e.other:ScribeSpell(487, 44);--'Symbol of Pinzarn',
			--47
			e.other:ScribeSpell(312, 45);--'Valor' 
			--48
			e.other:ScribeSpell(19, 46);--'Armor of Faith' 
			e.other:ScribeSpell(207, 47);--'Divine Aura' 
			e.other:ScribeSpell(9, 48);--'Superior Healing' 
			--49
			e.other:ScribeSpell(2171, 49);--'Renewal' 
			e.other:ScribeSpell(45, 50);--'Pacify'  ''
			--50
			e.other:ScribeSpell(63, 51);--'Resist Disease' 
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--45
				e.other:ScribeSpell(693, 52);--'Divine Might' 
				--52
				e.other:ScribeSpell(124, 53);--'Force'  
				e.other:ScribeSpell(504, 54);--'Frenzied Strength'
				--54
				e.other:ScribeSpell(131, 55);--'Instill'  
				e.other:ScribeSpell(662, 56);--'Expel Undead' 
				--55
				e.other:ScribeSpell(1743, 57);--'Divine Favor' 
				e.other:ScribeSpell(2172, 58);--'Restoration' 
				e.other:ScribeSpell(64, 59);--'Resist Magic' 
				--56
				e.other:ScribeSpell(44, 60);--'Yaulp III'
				e.other:ScribeSpell(96, 61);--'Counteract Disease'
				--58
				e.other:ScribeSpell(488, 62);--'Symbol of Naltron'
				e.other:ScribeSpell(49, 63);--'Nullify Magic' 
				--59
				e.other:ScribeSpell(392, 64);--'Resurrection' 
				--60
				e.other:ScribeSpell(1534, 65);--'Yaulp IV'  
				e.other:ScribeSpell(20, 66);--'Shield of Words'
				e.other:ScribeSpell(314, 67);--'Resolution' 
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--37
				e.other:ScribeSpell(1453, 68);--'Divine Purpose' 
				--50
				e.other:ScribeSpell(1454, 69);--'Flame of Light' 
				--53
				e.other:ScribeSpell(1288, 70);--'Divine Glory' 
				--55
				e.other:ScribeSpell(1455, 71);--'Wave of Healing' 
				--60
				e.other:ScribeSpell(1456, 72);--'Divine Strength' 
				e.other:ScribeSpell(1411, 73);--'Improved Invisibility to Undead'
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--7
				e.other:ScribeSpell(2581, 74);--'Cease'  
				--13
				e.other:ScribeSpell(2582, 75);--'Desist'  
				--26
				e.other:ScribeSpell(2583, 76);--'Instrument of Nife', 
				--35
				e.other:ScribeSpell(2584, 77);--'Divine Vigor' 
				--44
				e.other:ScribeSpell(2585, 78);--'Valor of Marr' 
				--45
				e.other:ScribeSpell(2946, 79);--'Remove Curse'  
				--47
				e.other:ScribeSpell(2586, 80);--'Thunder of Karana'
				--54
				e.other:ScribeSpell(2587, 81);--'Quellious\' Word of Tranquility' 
				--56
				e.other:ScribeSpell(2588, 82);--'Breath of Tunare'
				--58
				e.other:ScribeSpell(2589, 83);--'Healing Wave of Prexus'
				--59
				e.other:ScribeSpell(1283, 84);--'Celestial Cleansing'
				--60
				e.other:ScribeSpell(2590, 85);--'Brell\'s Mountainous Barrier'
				e.other:ScribeSpell(2880, 86);--'Remove Greater Curse' 
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--39
				e.other:ScribeSpell(3577, 87);--'Wave of Life'  
				--49
				e.other:ScribeSpell(3578, 88);--'Brell\'s Steadfast Aegis'
				--53
				e.other:ScribeSpell(3975, 89);--'Force of Akera'  
				--61
				e.other:ScribeSpell(1533, 90);--'Heroism' 
				e.other:ScribeSpell(3195, 91);--'Greater Immobilize' 
				e.other:ScribeSpell(3429, 92);--'Touch of Nife'
				e.other:ScribeSpell(62, 93);--'Resist Poison'   
				--62
				e.other:ScribeSpell(3190, 94);--'Crusader\'s Touch' 
				e.other:ScribeSpell(1535, 95);--'Symbol of Marzin'
				e.other:ScribeSpell(3245, 96);--'Force of Akilae' 
				e.other:ScribeSpell(3422, 97);--'Ward of Nife'
				e.other:ScribeSpell(3428, 98);--'Deny Undead'
				--63
				e.other:ScribeSpell(3424, 99);--'Pious Might' 
				e.other:ScribeSpell(3430, 100);--'Light of Nife'
				--64
				e.other:ScribeSpell(1538, 101);--'Heroic Bond' 
				e.other:ScribeSpell(3247, 102);--'Aura of the Crusader' 
				e.other:ScribeSpell(3426, 103);--'Quellious\' Word of Serenity'
				e.other:ScribeSpell(3485, 104);--'Supernal Cleansing' 
				--65
				e.other:ScribeSpell(1537, 105);--'Bulwark of Faith'
				e.other:ScribeSpell(3246, 106);--'Shackles of Tunare' 
				e.other:ScribeSpell(3427, 107);--'Wave of Marr'
				e.other:ScribeSpell(3432, 108);--'Brell\'s Stalwart Shield'
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--44
				e.other:ScribeSpell(3683, 109);--'Ethereal Cleansing' 
				--52
				e.other:ScribeSpell(3684, 110);--'Light of Life' 
				

			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--19
				e.other:ScribeSpell(4056, 111);--'Remove Minor Curse' 
				--34
				e.other:ScribeSpell(4057, 112);--'Remove Lesser Curse' 
				--55
				e.other:ScribeSpell(4064, 113);--'Austerity' 
				--58
				e.other:ScribeSpell(4065, 114);--'Blessing of Austerity' 
				--65
				e.other:ScribeSpell(4109, 115);--'Guidance'  
				

			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4893, 116);--'Wave of Trushar' 
				e.other:ScribeSpell(4894, 117);--'Light of Order'  
				e.other:ScribeSpell(4895, 118);--'Holy Order'  '', 
				e.other:ScribeSpell(4977, 119);--'Ancient: Force of Chaos' 
				

			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5280, 120);--'Direction'
				e.other:ScribeSpell(5282, 121);--'Touch of Piety'  
				e.other:ScribeSpell(5284, 122);--'Force of Piety'  
				--67
				e.other:ScribeSpell(5283, 123);--'Crusader\'s Purity' 
				e.other:ScribeSpell(5285, 124);--'Silvered Fury'
				e.other:ScribeSpell(5286, 125);--'Spurn Undead' 
				e.other:ScribeSpell(5287, 126);--'Symbol of Jeron' 
				--68
				e.other:ScribeSpell(5288, 127);--'Pious Fury'
				e.other:ScribeSpell(5289, 128);--'Light of Piety'  
				e.other:ScribeSpell(5292, 129);--'Serene Command'  
				e.other:ScribeSpell(5295, 130);--'Jeron\'s Mark'
				--69
				e.other:ScribeSpell(5290, 131);--'Hand of Direction' 
				e.other:ScribeSpell(5291, 132);--'Armor of the Champion' 
				e.other:ScribeSpell(5293, 133);--'Pious Cleansing' 
				e.other:ScribeSpell(5294, 134);--'Bulwark of Piety' 
				--70
				e.other:ScribeSpell(5296, 135);--'Wave of Piety'  '
				e.other:ScribeSpell(5297, 136);--'Brell\'s Brawny Bulwark' 
				e.other:ScribeSpell(5298, 137);--'Affirmation'  '',
				e.other:ScribeSpell(5299, 138);--'Ancient: Force of Jeron' 
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--56
				e.other:ScribeSpell(7004, 139);--'Guard of Piety' 
				--61
				e.other:ScribeSpell(6731, 140);--'Guard of Humility' 
				--69
				e.other:ScribeSpell(6663, 141);--'Guard of Righteousness' 
				
				-- :Later
				--8027, 142);--'Last Rites'  
				--8029, 143);--'Silent Piety' 
				--8479, 144);--'Ward of Tunare'  
				--8481, 145);--'Blessed Aura' 
				--8925, 146);--'Holy Aura'
				--9700, 147);--'Cure Corruption' '
				--9701, 148);--'Cure Corruption Rk. II' 
				--9702, 149);--'Cure Corruption Rk. III' 
				--10155, 150);--'Sacred Touch'  '
				--10156, 151);--'Sacred Touch Rk. II' 
				--10157, 152);--'Sacred Touch Rk. III' 
				--10158, 153);--'Sacred Force'
				--10159, 154);--'Sacred Force Rk. II' 
				--10160, 155);--'Sacred Force Rk. III' 
				--10161, 156);--'Burst of Sunlight' 
				--10162, 157);--'Burst of Sunlight Rk. II'
				--10163, 158);--'Burst of Sunlight Rk. III'
				--10170, 159);--'Absolve'
				--10171, 160);--'Absolve Rk. II'
				--10172, 161);--'Absolve Rk. III' '
				--10173, 162);--'Challenge for Honor' 
				--10174, 163);--'Challenge for Honor Rk. II'
				--10175, 164);--'Challenge for Honor Rk. III'
				--10185, 165);--'Gleaming Light' 
				--10186, 166);--'Gleaming Light Rk. II' 
				--10187, 167);--'Gleaming Light Rk. III' 
				--10188, 168);--'Lesson of Penitence' 
				--10189, 169);--'Lesson of Penitence Rk. II'
				--10190, 170);--'Lesson of Penitence Rk. III'
				--10194, 171);--'Fenegar\'s Mark' 
				--10195, 172);--'Fenegar\'s Mark Rk. II' 
				--10196, 173);--'Fenegar\'s Mark Rk. III'
				--10197, 174);--'Armor of Unrelenting Faith'
				--10198, 175);--'Armor of Unrelenting Faith Rk. II'
				--10199, 176);--'Armor of Unrelenting Faith Rk. III'
				--10200, 177);--'Sacred Cleansing' 
				--10201, 178);--'Sacred Cleansing Rk. II' 
				--10202, 179);--'Sacred Cleansing Rk. III'
				--10206, 180);--'Wave of Forgiveness' 
				--10207, 181);--'Wave of Forgiveness Rk. II'
				--10208, 182);--'Wave of Forgiveness Rk. III'
				--10209, 183);--'Brell\'s Stony Guard' 
				--10210, 184);--'Brell\'s Stony Guard Rk. II'
				--10211, 185);--'Brell\'s Stony Guard Rk. III'
				--10212, 186);--'Sworn Protector' 
				--10213, 187);--'Sworn Protector Rk. II' 
				--10214, 188);--'Sworn Protector Rk. III' 
				--10215, 189);--'Remorse for the Fallen'
				--10216, 190);--'Remorse for the Fallen Rk. II'
				--10217, 191);--'Remorse for the Fallen Rk. III'
				--10224, 192);--'Wraithguard\'s Vengeance' 
				--10225, 193);--'Wraithguard\'s Vengeance Rk. II'
				--10226, 194);--'Wraithguard\'s Vengeance Rk. III'
				--11851, 195);--'Force of Prexus' 
				--11852, 196);--'Force of Prexus Rk. II' 
				--11853, 197);--'Force of Prexus Rk. III' 
				--11854, 198);--'Armor of Righteousness' 
				--11855, 199);--'Armor of Righteousness Rk. II'
				--11856, 200);--'Armor of Righteousness Rk. III'
				--11857, 201);--'Burial Rites' 
				--11858, 202);--'Burial Rites Rk. II' 
				--11859, 203);--'Burial Rites Rk. III' 
				--21398, 204);--'Eradicate Poison'
				--21399, 205);--'Eradicate Disease'
				--21400, 206);--'Eradicate Curse'
			end 
		end  
	end
	if (e.other:GetClass() == 4) then --rng
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			e.other:ScribeSpell(5011, 0);--'Salve'
			--2
			e.other:ScribeSpell(51, 1);--'Glimpse'
			--3
			e.other:ScribeSpell(239, 2);--'Flame Lick'
			--4
			e.other:ScribeSpell(240, 3);--'Lull Animal'
			--5
			--N/A
			--6
			e.other:ScribeSpell(242, 4);--'Snare'
			--7
			e.other:ScribeSpell(26, 5);--'Skin like Wood' 
			--8
			e.other:ScribeSpell(200, 6);--'Minor Healing' 
			--9
			e.other:ScribeSpell(224, 7);--'Endure Fire' 
			--10
			e.other:ScribeSpell(237, 8);--'Dance of the Fireflies' 
			--11
			--N/A
			--12
			e.other:ScribeSpell(269, 9);--'Feet like Cat'  
			--13
			e.other:ScribeSpell(203, 10);--'Cure Poison' 
			e.other:ScribeSpell(515, 11);--'Thistlecoat' 
			--14
			e.other:ScribeSpell(247, 12);--'Camouflage'  
			e.other:ScribeSpell(92, 13);--'Burst of Fire'
			--15
			e.other:ScribeSpell(249, 14);--'Grasping Roots'  
			e.other:ScribeSpell(252, 15);--'Invoke Lightning' 
			--16
			e.other:ScribeSpell(241, 16);--'Panic Animal' 
			e.other:ScribeSpell(248, 17);--'Ward Summoned'
			--17
			e.other:ScribeSpell(254, 18);--'Firefist'  
			e.other:ScribeSpell(500, 19);--'Bind Sight'
			--18
			e.other:ScribeSpell(225, 20);--'Endure Cold'  
			--19
			e.other:ScribeSpell(91, 21);--'Ignite'
			--20
			e.other:ScribeSpell(17, 22);--'Light Healing' 
			e.other:ScribeSpell(86, 23);--'Enduring Breath'
			--21
			e.other:ScribeSpell(263, 24);--'Skin like Rock'  
			--22
			e.other:ScribeSpell(213, 25);--'Cure Disease' 
			e.other:ScribeSpell(250, 26);--'Harmony'  
			--23
			--N/A
			--24
			e.other:ScribeSpell(256, 27);--'Shield of Thistles' 
			--25
			e.other:ScribeSpell(264, 28);--'Stinging Swarm'  
			--26
			e.other:ScribeSpell(268, 29);--'Strength of Earth' 
			--27
			e.other:ScribeSpell(655, 30);--'Eyes of the Cat'  
			--28
			e.other:ScribeSpell(278, 31);--'Spirit of Wolf'  
			--29
			--N/A
			--30
			e.other:ScribeSpell(48, 32);--'Cancel Magic'  
			e.other:ScribeSpell(516, 33);--'Barbcoat'  
			--31
			e.other:ScribeSpell(513, 34);--'Calm Animal'  
			--32
			e.other:ScribeSpell(12, 35);--'Healing'  
			e.other:ScribeSpell(80, 36);--'See Invisible'
			--33
			e.other:ScribeSpell(115, 37);--'Dismiss Summoned' 
			--34
			e.other:ScribeSpell(517, 38);--'Bramblecoat' 
			--35
			e.other:ScribeSpell(261, 39);--'Levitate' 
			--36
			--N/A
			--37
			e.other:ScribeSpell(419, 40);--'Careless Lightning' 
			--38
			e.other:ScribeSpell(421, 41);--'Skin like Steel'  
			--39
			--N/A
			--40
			--N/A
			--41
			--N/A
			--42
			e.other:ScribeSpell(518, 42);--'Spikecoat'
			--43
			e.other:ScribeSpell(129, 43);--'Shield of Brambles' 
			--44
			e.other:ScribeSpell(15, 44);--'Greater Healing'  
			e.other:ScribeSpell(78, 45);--'Immolate' 
			--45
			e.other:ScribeSpell(76, 46);--'Ensnaring Roots'  
			--46
			e.other:ScribeSpell(60, 47);--'Resist Fire'
			--47
			e.other:ScribeSpell(34, 48);--'Superior Camouflage' 
			--48
			e.other:ScribeSpell(425, 49);--'Wolf Form' 
			--49
			e.other:ScribeSpell(691, 50);--'Call of Flame' 
			--50
			end
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--50
				e.other:ScribeSpell(1741, 51);--'Jolt'
				--51
				e.other:ScribeSpell(512, 52);--'Ensnare'
				--52
				e.other:ScribeSpell(57, 53);--'Firestrike' 
				--53
				e.other:ScribeSpell(430, 54);--'Storm Strength'  
				--54
				e.other:ScribeSpell(259, 55);--'Drones of Doom' 
				e.other:ScribeSpell(422, 56);--'Skin like Diamond' 
				--55
				e.other:ScribeSpell(145, 57);--'Chloroplast'
				e.other:ScribeSpell(61, 58);--'Resist Cold' 
				--56
				e.other:ScribeSpell(426, 59);--'Greater Wolf Form' 
				e.other:ScribeSpell(539, 60);--'Chill Sight'
				--58
				e.other:ScribeSpell(432, 61);--'Shield of Spikes' 
				e.other:ScribeSpell(49, 62);--'Nullify Magic'  
				--59
				e.other:ScribeSpell(423, 63);--'Skin like Nature' 
				--60
				e.other:ScribeSpell(490, 64);--'Enveloping Roots' 
				e.other:ScribeSpell(519, 65);--'Thorncoat'
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--36
				e.other:ScribeSpell(1461, 66);--'Call of Sky' 
				--50
				e.other:ScribeSpell(1462, 67);--'Call of Earth'  
				--51
				e.other:ScribeSpell(1397, 68);--'Strength of Nature' 
				--55
				e.other:ScribeSpell(1296, 69);--'Cinder Jolt'  
				e.other:ScribeSpell(1463, 70);--'Call of Fire' 
				--60
				e.other:ScribeSpell(1464, 71);--'Call of the Predator' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--5
				e.other:ScribeSpell(2591, 72);--'Tangling Weeds'  
				--11
				e.other:ScribeSpell(2592, 73);--'Hawk Eye'
				--29
				e.other:ScribeSpell(2593, 74);--'Riftwind\'s Protection' 
				--37
				e.other:ScribeSpell(2594, 75);--'Nature\'s Precision' 
				--48
				e.other:ScribeSpell(2595, 76);--'Force of Nature' 
				--51
				e.other:ScribeSpell(5571, 77);--'Tangle' 
				--52
				e.other:ScribeSpell(2596, 78);--'Falcon Eye'  
				--54
				e.other:ScribeSpell(2597, 79);--'Jolting Blades'  
				--56
				e.other:ScribeSpell(2598, 80);--'Mark of the Predator' 
				--58
				e.other:ScribeSpell(2599, 81);--'Eagle Eye' 
				--59
				e.other:ScribeSpell(1740, 82);--'Dustdevil' 
				--60
				e.other:ScribeSpell(2600, 83);--'Warder\'s Protection' 
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--29
				e.other:ScribeSpell(3565, 84);--'Flaming Arrow'  
				--39
				e.other:ScribeSpell(3564, 85);--'Burning Arrow' 
				e.other:ScribeSpell(3601, 86);--'Harmony of Nature' 
				--61
				e.other:ScribeSpell(95, 87);--'Counteract Poison' 
				e.other:ScribeSpell(96, 88);--'Counteract Disease' 
				e.other:ScribeSpell(1526, 89);--'Annul Magic' 
				e.other:ScribeSpell(1529, 90);--'Exile Summoned'  
				e.other:ScribeSpell(1551, 91);--'Circle of Winter' 
				e.other:ScribeSpell(5572, 92);--'Entangle'
				--62
				e.other:ScribeSpell(356, 93);--'Shield of Thorns' 
				e.other:ScribeSpell(665, 94);--'Drifting Death'
				e.other:ScribeSpell(1290, 95);--'Chloroblast'
				e.other:ScribeSpell(3419, 96);--'Call of the Rathe' 
				e.other:ScribeSpell(3487, 97);--'Strength of Tunare'
				--63
				e.other:ScribeSpell(1552, 98);--'Circle of Summer' 
				e.other:ScribeSpell(1558, 99);--'Bladecoat'
				e.other:ScribeSpell(3192, 100);--'Earthen Roots' 
				e.other:ScribeSpell(3418, 101);--'Frozen Wind'
				--64
				e.other:ScribeSpell(1568, 102);--'Regrowth' 
				e.other:ScribeSpell(3415, 103);--'Nature\'s Rebuke' 
				e.other:ScribeSpell(3417, 104);--'Spirit of the Predator' 
				e.other:ScribeSpell(3431, 105);--'Brushfire' 
				e.other:ScribeSpell(3039, 106);--'Protection of the Wild' 
				e.other:ScribeSpell(3420, 107);--'Cry of Thunder'  
				--65
				e.other:ScribeSpell(1559, 108);--'Natureskin'
				e.other:ScribeSpell(2517, 109);--'Spirit of Eagle' 
				e.other:ScribeSpell(2887, 110);--'Mask of the Stalker' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--40
				e.other:ScribeSpell(3687, 111);--'Swarm of Pain'
				--52
				e.other:ScribeSpell(3688, 112);--'Icewind'
				

			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--41
				e.other:ScribeSpell(4054, 113);--'Spirit of the Shrew' 
				--49
				e.other:ScribeSpell(4055, 114);--'Pack Shrew'
				--55
				e.other:ScribeSpell(4111, 115);--'Fire Swarm' 
				--58
				e.other:ScribeSpell(4059, 116);--'Call of Ice'
				--64
				e.other:ScribeSpell(4107, 117);--'Feral Form' 
				

			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4896, 118);--'Sylvan Light'
				e.other:ScribeSpell(4897, 119);--'Sylvan Burn' 
				e.other:ScribeSpell(4898, 120);--'Sylvan Call' 
				e.other:ScribeSpell(4980, 121);--'Ancient: Burning Chaos' 
				

			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5300, 122);--'Nature Veil' 
				e.other:ScribeSpell(5301, 123);--'Displace Summoned' 
				e.other:ScribeSpell(5302, 124);--'Shield of Briar' 
				--67
				e.other:ScribeSpell(5303, 125);--'Locust Swarm' 
				e.other:ScribeSpell(5304, 126);--'Sylvan Water' 
				e.other:ScribeSpell(5305, 127);--'Guard of the Earth' 
				e.other:ScribeSpell(5306, 128);--'Strength of the Hunter' 
				--68
				e.other:ScribeSpell(5307, 129);--'Briarcoat' 
				e.other:ScribeSpell(5309, 130);--'Frost Wind'
				e.other:ScribeSpell(5310, 131);--'Hunter\'s Vigor' 
				e.other:ScribeSpell(5316, 132);--'Tranquility of the Glade'
				--69
				e.other:ScribeSpell(5311, 133);--'Nature\'s Denial' 
				e.other:ScribeSpell(5312, 134);--'Howl of the Predator' 
				e.other:ScribeSpell(5313, 135);--'Hearth Embers' 
				e.other:ScribeSpell(5314, 136);--'Nature\'s Balance' 
				--70
				e.other:ScribeSpell(5315, 137);--'Onyx Skin'
				e.other:ScribeSpell(5317, 138);--'Ward of the Hunter' 
				e.other:ScribeSpell(5318, 139);--'Call of Lightning' 
				e.other:ScribeSpell(5319, 140);--'Ancient: North Wind' 
				

			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--61
				e.other:ScribeSpell(6732, 141);--'Earthen Embrace' 
				--69
				e.other:ScribeSpell(6664, 142);--'Earthen Shackles' 
				
				-- :Later
				--8019, 143);--'Warder\'s Wrath' 
				--8020, 144);--'Hail of Arrows'  
				--8490, 145);--'Scorched Earth'  
				--8491, 146);--'Elddar\'s Grasp' 
				--9896, 147);--'Summer\'s Dew Burn' 
				--9897, 148);--'Summer\'s Dew Burn' 
				--9898, 149);--'Summer\'s Dew Burn' 
				--9917, 150);--'Vinelash Cascade' 
				--9918, 151);--'Vinelash Cascade Rk. II' 
				--9919, 152);--'Vinelash Cascade Rk. III'
				--10077, 153);--'Potameid Salve' 
				--10078, 154);--'Potameid Salve Rk. II' 
				--10079, 155);--'Potameid Salve Rk. III' 
				--10080, 156);--'Shield of Needles' 
				--10081, 157);--'Shield of Needles Rk. II'
				--10082, 158);--'Shield of Needles Rk. III', 
				--10086, 159);--'Jolting Kicks'  
				--10087, 160);--'Jolting Kicks Rk. II' 
				--10088, 161);--'Jolting Kicks Rk. III' 
				--10089, 162);--'Cloud of Wasps' 
				--10090, 163);--'Cloud of Wasps Rk. II' 
				--10091, 164);--'Cloud of Wasps Rk. III' 
				--10092, 165);--'Sunderock Springwater' 
				--10093, 166);--'Sunderock Springwater Rk. II', 
				--10094, 167);--'Sunderock Springwater Rk. III',
				--10098, 168);--'Strength of the Forest Stalker'
				--10099, 169);--'Strength of the Forest Stalker Rk. II'
				--10100, 170);--'Strength of the Forest Stalker Rk. III'
				--10104, 171);--'Icefall Chill' 
				--10105, 172);--'Icefall Chill Rk. II',
				--10106, 173);--'Icefall Chill Rk. III'
				--10110, 174);--'Drifting Fog' 
				--10111, 175);--'Drifting Fog Rk. II', 
				--10112, 176);--'Drifting Fog Rk. III',
				--10113, 177);--'Snarl of the Predator'
				--10114, 178);--'Snarl of the Predator Rk. II'
				--10115, 179);--'Snarl of the Predator Rk. III'
				--10116, 180);--'Volcanic Ash'
				--10117, 181);--'Volcanic Ash Rk. II' 
				--10118, 182);--'Volcanic Ash Rk. III' 
				--10119, 183);--'Heartshot' 
				--10120, 184);--'Heartshot Rk. II' 
				--10121, 185);--'Heartshot Rk. III' 
				--10122, 186);--'Summer\'s Dew'  ''
				--10123, 187);--'Summer\'s Dew Rk. II' 
				--10124, 188);--'Summer\'s Dew Rk. III' 
				--10125, 189);--'Summer\'s Dew Splash' 
				--10126, 190);--'Summer\'s Dew Splash Rk. II'
				--10127, 191);--'Summer\'s Dew Splash Rk. III'
				--10128, 192);--'Obsidian Skin'  
				--10129, 193);--'Obsidian Skin Rk. II' 
				--10130, 194);--'Obsidian Skin Rk. III' 
				--10131, 195);--'Protection of the Minohten'
				--10132, 196);--'Protection of the Minohten Rk. II',
				--10133, 197);--'Protection of the Minohten Rk. III'
				--10134, 198);--'Thundering Blades' 
				--10135, 199);--'Thundering Blades Rk. II'
				--10136, 200);--'Thundering Blades Rk. III'
				--10140, 201);--'Eyes of the Owl' 
				--10141, 202);--'Eyes of the Owl Rk. II' 
				--10142, 203);--'Eyes of the Owl Rk. III'
				--10146, 204);--'Consumed by the Hunt'
				--10147, 205);--'Consumed by the Hunt Rk. II'
				--10148, 206);--'Consumed by the Hunt Rk. III'
				--11845, 207);--'Nature\'s Entropy' 
				--11846, 208);--'Nature\'s Entropy Rk. II'
				--11847, 209);--'Nature\'s Entropy Rk. III'
				--31991, 210);--'Heroic Leap'  
				--33000, 211);--'Heroic Leap*'  
				--40809, 212);--'Jolt'	
			end 
		end  
	end
	if (e.other:GetClass() == 5) then --shd
			if (e.message:findi("classic"))  then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '1');
			--1
			--N/A
			--2
			e.other:ScribeSpell(221, 0);--'Sense the Dead'
			--3
			e.other:ScribeSpell(342, 1);--'Locate Corpse'  
			--4
			e.other:ScribeSpell(235, 2);--'Invisibility versus Undead'
			--5
			e.other:ScribeSpell(340, 3);--'Disease Cloud'  
			--6
			e.other:ScribeSpell(343, 4);--'Siphon Strength' 
			--7
			e.other:ScribeSpell(491, 5);--'Leering Corpse' 
			--8
			e.other:ScribeSpell(341, 6);--'Lifetap'
			--9
			e.other:ScribeSpell(347, 7);--'Numb the Dead'  
			--10
			e.other:ScribeSpell(225, 8);--'Endure Cold'
			--11
			e.other:ScribeSpell(344, 9);--'Clinging Darkness' 
			--12
			e.other:ScribeSpell(2213, 10);--'Lesser Summon Corpse'
			e.other:ScribeSpell(229, 11);--'Fear' 
			--13
			e.other:ScribeSpell(354, 12);--'Shadow Step'
			--14
			e.other:ScribeSpell(351, 13);--'Bone Walk'
			--15
			e.other:ScribeSpell(502, 14);--'Lifespike'  
			--16
			e.other:ScribeSpell(346, 15);--'Grim Aura'  
			--17
			e.other:ScribeSpell(352, 16);--'Deadeye'
			--18
			e.other:ScribeSpell(218, 17);--'Ward Undead'
			--19
			e.other:ScribeSpell(213, 18);--'Cure Disease'
			--20
			e.other:ScribeSpell(209, 19);--'Spook the Dead'
			e.other:ScribeSpell(355, 20);--'Engulfing Darkness' 
			--21
			e.other:ScribeSpell(357, 21);--'Dark Empathy'  
			--22
			e.other:ScribeSpell(359, 22);--'Vampiric Embrace' 
			e.other:ScribeSpell(362, 23);--'Convoke Shadow' 
			--23
			--N/A
			--24
			e.other:ScribeSpell(366, 24);--'Feign Death' 
			--25
			--N/A
			--26
			e.other:ScribeSpell(226, 25);--'Endure Disease'
			--27
			e.other:ScribeSpell(363, 26);--'Wave of Enfeeblement' 
			--28
			e.other:ScribeSpell(360, 27);--'Heat Blood'
			--29
			e.other:ScribeSpell(445, 28);--'Lifedraw'
			--30
			e.other:ScribeSpell(492, 29);--'Restless Bones' 
			e.other:ScribeSpell(522, 30);--'Gather Shadows' 
			--31
			e.other:ScribeSpell(236, 31);--'Shieldskin'
			--32
			--N/A
			--33
			--N/A
			--34
			--N/A
			--35
			e.other:ScribeSpell(3, 32);--'Summon Corpse'
			e.other:ScribeSpell(61, 33);--'Resist Cold'
			--36
			e.other:ScribeSpell(367, 34);--'Heart Flutter'  
			e.other:ScribeSpell(48, 35);--'Cancel Magic'
			--37
			e.other:ScribeSpell(370, 36);--'Shadow Vortex'  
			--38
			e.other:ScribeSpell(440, 37);--'Animate Dead'  
			--39
			e.other:ScribeSpell(233, 38);--'Expulse Undead'
			--40
			e.other:ScribeSpell(90, 39);--'Shadow Sight'
			--41
			--N/A
			--42
			--N/A
			--43
			e.other:ScribeSpell(127, 40);--'Invoke Fear'
			--44
			e.other:ScribeSpell(452, 41);--'Dooming Darkness' 
			--45
			e.other:ScribeSpell(414, 42);--'Word of Spirit' 
			e.other:ScribeSpell(478, 43);--'Breath of the Dead' 
			--46
			e.other:ScribeSpell(441, 44);--'Summon Dead'
			--47
			e.other:ScribeSpell(692, 45);--'Life Leech' 
			--48
			--N/A
			--49
			e.other:ScribeSpell(117, 46);--'Dismiss Undead'
			--50
			e.other:ScribeSpell(199, 47);--'Harmshield'
		end 	
		if (e.message:findi("kunark"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
				eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '2');
				--51
				e.other:ScribeSpell(446, 48);--'Siphon Life' 
				--52
				e.other:ScribeSpell(442, 49);--'Malignant Dead' 
				e.other:ScribeSpell(448, 50);--'Rest the Dead'  
				--53
				e.other:ScribeSpell(451, 51);--'Boil Blood'
				--54
				e.other:ScribeSpell(364, 52);--'Banshee Aura'
				e.other:ScribeSpell(59, 53);--'Panic the Dead'
				--55
				e.other:ScribeSpell(1376, 54);--'Shroud of Undeath' 
				e.other:ScribeSpell(1742, 55);--'Bobbing Corpse' 
				e.other:ScribeSpell(524, 56);--'Spirit Tap' 
				e.other:ScribeSpell(662, 57);--'Expel Undead'
				--56
				e.other:ScribeSpell(393, 58);--'Steelskin'
				--57
				e.other:ScribeSpell(1773, 59);--'Conjure Corpse' 
				e.other:ScribeSpell(454, 60);--'Vampiric Curse' 
				e.other:ScribeSpell(525, 61);--'Drain Spirit' 
				--58
				e.other:ScribeSpell(49, 62);--'Nullify Magic'
				e.other:ScribeSpell(495, 63);--'Cackling Bones' 
				--59
				e.other:ScribeSpell(394, 64);--'Diamondskin' 
				e.other:ScribeSpell(453, 65);--'Cascading Darkness' 
				--60
				e.other:ScribeSpell(1508, 66);--'Asystole'  
				e.other:ScribeSpell(447, 67);--'Drain Soul'
				e.other:ScribeSpell(661, 68);--'Augment Death'  
			end  
		end 			 
		if (e.message:findi("velious"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '3');
				--29
				e.other:ScribeSpell(1289, 69);--'Strengthen Death' 
				--35
				e.other:ScribeSpell(1457, 70);--'Shroud of Hate' 
				--50
				e.other:ScribeSpell(1458, 71);--'Shroud of Pain' 
				--52
				e.other:ScribeSpell(1285, 72);--'Summon Companion' 
				--55
				e.other:ScribeSpell(1459, 73);--'Shroud of Death' 
				--60
				e.other:ScribeSpell(1460, 74);--'Death Peace' 
			end  
		end 			 
		if (e.message:findi("luclin"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '4');
				--1
				e.other:ScribeSpell(5012, 75);--'Spike of Disease' 
				--9
				e.other:ScribeSpell(2571, 76);--'Despair'
				--15
				e.other:ScribeSpell(2572, 77);--'Scream of Hate' 
				--23
				e.other:ScribeSpell(2573, 78);--'Scream of Pain' 
				--33
				e.other:ScribeSpell(1221, 79);--'Terror of Darkness' 
				--37
				e.other:ScribeSpell(2574, 80);--'Scream of Death' 
				--39
				e.other:ScribeSpell(1225, 81);--'Voice of Darkness' 
				--42
				e.other:ScribeSpell(1222, 82);--'Terror of Shadows' 
				--46
				e.other:ScribeSpell(1226, 83);--'Voice of Shadows' 
				--52
				e.other:ScribeSpell(2575, 84);--'Abduction of Strength'
				e.other:ScribeSpell(2576, 85);--'Mental Corruption' 
				--53
				e.other:ScribeSpell(1223, 86);--'Terror of Death' 
				--54
				e.other:ScribeSpell(2577, 87);--'Torrent of Hate' 
				--55
				e.other:ScribeSpell(1227, 88);--'Voice of Death' 
				--56
				e.other:ScribeSpell(2578, 89);--'Torrent of Pain' 
				--58
				e.other:ScribeSpell(2579, 90);--'Torrent of Fatigue' 
				e.other:ScribeSpell(2892, 91);--'Deathly Temptation' 
				--59
				e.other:ScribeSpell(1224, 92);--'Terror of Terris' 
				--60
				e.other:ScribeSpell(1228, 93);--'Voice of Terris' 
				e.other:ScribeSpell(2580, 94);--'Cloak of the Akheva'
			end  
		end 			 
		if (e.message:findi("planes"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '5');
				--19
				e.other:ScribeSpell(3583, 95);--'Tiny Companion' 
				--34
				e.other:ScribeSpell(3561, 96);--'Spear of Disease' 
				--48
				e.other:ScribeSpell(3560, 97);--'Spear of Pain' 
				--54
				e.other:ScribeSpell(3562, 98);--'Spear of Plague' 
				--61
				e.other:ScribeSpell(6, 99);--'Ignite Blood'
				e.other:ScribeSpell(1411, 100);--'Improved Invisibility to Undead' 
				e.other:ScribeSpell(3400, 101);--'Festering Darkness' 
				e.other:ScribeSpell(3406, 102);--'Aura of Darkness' 
				--62
				e.other:ScribeSpell(456, 103);--'Bond of Death'  
				e.other:ScribeSpell(3401, 104);--'Touch of Volatis' 
				e.other:ScribeSpell(3408, 105);--'Zevfeer\'s Bite' 
				e.other:ScribeSpell(3428, 106);--'Deny Undead' 
				--63
				e.other:ScribeSpell(3227, 107);--'Shroud of Chaos' 
				e.other:ScribeSpell(3403, 108);--'Aura of Pain' 
				e.other:ScribeSpell(3405, 109);--'Terror of Thule' 
				e.other:ScribeSpell(3489, 110);--'Blood of Hate' 
				--64
				e.other:ScribeSpell(443, 111);--'Invoke Death'
				e.other:ScribeSpell(1414, 112);--'Augmentation of Death', 
				e.other:ScribeSpell(3488, 113);--'Pact of Hate' 
				e.other:ScribeSpell(3491, 114);--'Spear of Decay' 
				--65
				e.other:ScribeSpell(3410, 115);--'Voice of Thule' 
				e.other:ScribeSpell(3411, 116);--'Aura of Hate' 
				e.other:ScribeSpell(3413, 117);--'Touch of Innoruuk' 
				e.other:ScribeSpell(3490, 118);--'Cloak of Luclin' 
			end  
		end 			 
		if (e.message:findi("ykesha"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '6');
				--41
				e.other:ScribeSpell(3686, 119);--'Blood of Pain' 
				e.other:ScribeSpell(3685, 120);--'Comatose'  
			end  
		end 			 
		if (e.message:findi("dungeons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '7');
				--32
				e.other:ScribeSpell(4062, 121);--'Dark Temptation' 
				--47
				e.other:ScribeSpell(4102, 122);--'Scythe of Darkness' 
				--54
				e.other:ScribeSpell(4063, 123);--'Call of Darkness' 
				e.other:ScribeSpell(4103, 124);--'Scythe of Death' 
				--64
				e.other:ScribeSpell(4101, 125);--'Scythe of Innoruuk' 
			end  
		end 			 
		if (e.message:findi("gates"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '8');
				--65
				e.other:ScribeSpell(4902, 126);--'Mental Horror' 
				e.other:ScribeSpell(4903, 127);--'Black Shroud' 
				e.other:ScribeSpell(4904, 128);--'Miasmic Spear' 
				e.other:ScribeSpell(4982, 129);--'Ancient: Bite of Chaos'
			end  
		end 			 
		if (e.message:findi("omens"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '9');
				--66
				e.other:ScribeSpell(5320, 130);--'Blood of Discord' 
				e.other:ScribeSpell(5322, 131);--'Dark Constriction' 
				e.other:ScribeSpell(5323, 132);--'Bond of Inruku' 
				e.other:ScribeSpell(6997, 133);--'Soulless Terror' 
				--67
				e.other:ScribeSpell(5324, 134);--'Touch of Inruku' 
				e.other:ScribeSpell(5325, 135);--'Inruku\'s Bite' 
				e.other:ScribeSpell(5327, 136);--'Shroud of Discord' 
				e.other:ScribeSpell(5329, 137);--'Terror of Discord' 
				e.other:ScribeSpell(6988, 138);--'Shadow Howl' 
				--68
				e.other:ScribeSpell(5328, 139);--'Theft of Pain' 
				e.other:ScribeSpell(5330, 140);--'Blood of Inruku' 
				e.other:ScribeSpell(5331, 141);--'Son of Decay' 
				e.other:ScribeSpell(5335, 142);--'Scythe of Inruku' 
				--69
				e.other:ScribeSpell(5334, 143);--'Spear of Muram' 
				e.other:ScribeSpell(5332, 144);--'Rune of Decay' 
				e.other:ScribeSpell(5333, 145);--'Pact of Decay' 
				e.other:ScribeSpell(5336, 146);--'Dread Gaze' 
				--70
				e.other:ScribeSpell(5337, 147);--'Theft of Hate' 
				e.other:ScribeSpell(5338, 148);--'Touch of the Devourer'
				e.other:ScribeSpell(5339, 149);--'Cloak of Discord' 
				e.other:ScribeSpell(5340, 150);--'Ancient: Bite of Muram'
			end  
		end 			 
		if (e.message:findi("dragons"))  then
			if (eq.get_data(e.other:GetCleanName() .. "_Progression") >= "10") then
			eq.set_data(e.other:GetCleanName() .. "_Training_Progression", '10');
				--56
				e.other:ScribeSpell(6995, 151);--'Soulless Fear' 
				e.other:ScribeSpell(7005, 152);--'Ichor Guard' 
				--57
				e.other:ScribeSpell(6986, 153);--'Shadow Voice' 
				--61
				e.other:ScribeSpell(6741, 154);--'Soul Guard' 
				e.other:ScribeSpell(6996, 155);--'Soulless Panic' 
				--62
				e.other:ScribeSpell(6987, 156);--'Shadow Bellow' 
				--69
				e.other:ScribeSpell(6673, 157);--'Soul Shield' 
				
				-- :Later
				--8022, 158);--'Fickle Shadows' 
				--8025, 159);--'Touch of Draygun' 
				--8483, 160);--'Theft of Agony' 
				--8484, 161);--'Decrepit Skin' 
				--10042, 162);--'Exhumer\'s Call' 
				--10227, 163);--'Touch of the Wailing Three'
				--10228, 164);--'Touch of the Wailing Three Rk. II'
				--10229, 165);--'Touch of the Wailing Three Rk. III'
				--10233, 166);--'Bond of the Blacktalon'
				--10234, 167);--'Bond of the Blacktalon Rk. II'
				--10235, 168);--'Bond of the Blacktalon Rk. III'
				--10245, 169);--'Blacktalon Bite'  
				--10246, 170);--'Blacktalon Bite Rk. II' 
				--10247, 171);--'Blacktalon Bite Rk. III' 
				--10251, 172);--'Shroud of the Nightborn' 
				--10252, 173);--'Shroud of the Nightborn Rk. II'
				--10253, 174);--'Shroud of the Nightborn Rk. III'
				--10257, 175);--'Terror of Vergalid' 
				--10258, 176);--'Terror of Vergalid Rk. II'
				--10259, 177);--'Terror of Vergalid Rk. III'
				--10260, 178);--'Challenge for Power' 
				--10261, 179);--'Challenge for Power Rk. II'
				--10262, 180);--'Challenge for Power Rk. III'
				--10272, 181);--'Blood of the Blacktalon'
				--10273, 182);--'Blood of the Blacktalon Rk. II'
				--10274, 183);--'Blood of the Blacktalon Rk. III'
				--10275, 184);--'Shambling Minion'  
				--10276, 185);--'Drink of Decomposition' 
				--10277, 186);--'Drink of Decomposition Rk. II'
				--10278, 187);--'Drink of Decomposition Rk. III'
				--10282, 188);--'Amplify Death' 
				--10283, 189);--'Amplify Death Rk. II'
				--10284, 190);--'Amplify Death Rk. III'
				--10285, 191);--'Dark Bargain' 
				--10286, 192);--'Dark Bargain Rk. II' 
				--10287, 193);--'Dark Bargain Rk. III'
				--10288, 194);--'Rotroot Spear' 
				--10289, 195);--'Rotroot Spear Rk. II'
				--10290, 196);--'Rotroot Spear Rk. III'
				--10291, 197);--'Vilify'
				--10292, 198);--'Vilify Rk. II' 
				--10293, 199);--'Vilify Rk. III' 
				--10300, 200);--'Cloak of Corruption' 
				--10301, 201);--'Cloak of Corruption Rk. II'
				--10302, 202);--'Cloak of Corruption Rk. III'
				--10306, 203);--'Last Breath'  
				--10307, 204);--'Last Breath Rk. II' 
				--10308, 205);--'Last Breath Rk. III' 
				--10315, 206);--'Remorseless Demeanor'
				--10316, 207);--'Remorseless Demeanor Rk. II'
				--10317, 208);--'Remorseless Demeanor Rk. III'
				--10327, 209);--'Touch of Severan' 
				--10328, 210);--'Touch of Severan Rk. II' 
				--10329, 211);--'Touch of Severan Rk. III'
				--11863, 212);--'Marrowthirst Horror' 
				--11864, 213);--'Marrowthirst Horror Rk. II'
				--11865, 214);--'Marrowthirst Horror Rk. III'
				--11866, 215);--'Soul Carapace' 
				--11867, 216);--'Soul Carapace Rk. II' 
				--11868, 217);--'Soul Carapace Rk. III' 
			end 
		end
	end
end