function event_say(e)
    if (e.message:findi("hail")) then
		e.other:Message(315, "Hello there, " .. e.other:GetCleanName() .. ".  I can send you to many far off lands, either tell me the shortname of your desired destination or I can tell you where I can send you in [" .. eq.say_link("Classic",false,"Classic") .. "], [" .. eq.say_link("Kunark",false,"Kunark") .. "], [" .. eq.say_link("Velious",false,"Velious") .. "], [" .. eq.say_link("Luclin",false,"Luclin") .. "], [" .. eq.say_link("Planes",false,"Planes") .. "], [" .. eq.say_link("Ykesha",false,"Ykesha") .. "], [" .. eq.say_link("Dungeons",false,"Dungeons") .. "], [" .. eq.say_link("Gates",false,"Gates") .. "], or [" .. eq.say_link("Omens",false,"Omens") .. "].");
	end
    if (e.message:findi("classic")) then
		e.other:Message(315, "I can send you to [" .. eq.say_link("kaladim",false,"kaladim") .. "], [" .. eq.say_link("kelethin",false,"kelethin") .. "], [" .. eq.say_link("abysmal",false,"abysmal") .. "], [" .. eq.say_link("lobby",false,"lobby") .. "], [" .. eq.say_link("akanon",false,"akanon") .. "], [" .. eq.say_link("nektulos",false,"nektulos") .. "], [" .. eq.say_link("grobb",false,"grobb") .. "], [" .. eq.say_link("oggok",false,"oggok") .. "], [" .. eq.say_link("felwithe",false,"felwithe") .. "], [" .. eq.say_link("east freeport",false,"east freeport") .. "], [" .. eq.say_link("west freeport",false,"west freeport") .. "], [" .. eq.say_link("qeynos",false,"qeynos") .. "], [" .. eq.say_link("neriak",false,"neriak") .. "], [" .. eq.say_link("halas",false,"halas") .. "], [" .. eq.say_link("erudin",false,"erudin") .. "], [" .. eq.say_link("rivervale",false,"rivervale") .. "], [" .. eq.say_link("lavastorm",false,"lavastorm") .. "], or [" .. eq.say_link("surefall",false,"surefall") .. "].");
	end
    if (e.message:findi("kunark")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "I can send you to [" .. eq.say_link("citymist",false,"citymist") .. "], [" .. eq.say_link("sebilis",false,"sebilis") .. "], [" .. eq.say_link("kurn",false,"kurn") .. "], [" .. eq.say_link("karnor",false,"karnor") .. "], [" .. eq.say_link("dreadlands",false,"dreadlands") .. "], [" .. eq.say_link("emeraldjungle",false,"emeraldjungle") .. "], [" .. eq.say_link("burningwood",false,"burningwood") .. "], [" .. eq.say_link("fieldofbone",false,"fieldofbone") .. "], [" .. eq.say_link("lakeofillomen",false,"lakeofillomen") .. "], [" .. eq.say_link("timorousdeep",false,"timorousdeep") .. "], or [" .. eq.say_link("overthere",false,"overthere") .. "]");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("velious")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message (315, "I can send you to [" .. eq.say_link("cobaltscar",false,"cobaltscar") .. "], [" .. eq.say_link("crystal",false,"crystal") .. "], [" .. eq.say_link("necropolis",false,"necropolis") .. "], [" .. eq.say_link("eastwastes",false,"eastwastes") .. "], [" .. eq.say_link("greatdivide",false,"greatdivide") .. "],[" .. eq.say_link("iceclad",false,"iceclad") .. "], [" .. eq.say_link("kael",false,"kael") .. "], [" .. eq.say_link("thurgadin",false,"thurgadin") .. "], [" .. eq.say_link("velketor",false,"velketor") .. "],[" .. eq.say_link("wakening",false,"wakening") .. "], or [" .. eq.say_link("westwastes",false,"westwastes") .. "]?");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("luclin")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
		e.other:Message(315, "I can send you to [" .. eq.say_link("umbral",false,"umbral") .. "], [" .. eq.say_link("twilight",false,"twilight ") .. "], [" .. eq.say_link("nexus",false,"nexus") .. "], [" .. eq.say_link("thegrey",false,"thegrey") .. "], [" .. eq.say_link("thedeep",false,"thedeep") .. "], [" .. eq.say_link("shadeweaver",false,"shadeweaver") .. "], [" .. eq.say_link("acrylia",false,"acrylia") .. "], [" .. eq.say_link("fungus",false,"fungus") .. "], [" .. eq.say_link("griegsend",false,"griegsend") .. "], [" .. eq.say_link("grimling",false,"grimling") .. "][" .. eq.say_link("hollowshade",false,"hollowshade") .. "], [" .. eq.say_link("maiden",false,"maiden") .. "], [" .. eq.say_link("netherbian",false,"netherbian") .. "] [" .. eq.say_link("paludal",false,"paludal") .. "], or [" .. eq.say_link("sseru",false,"sseru") .."]?");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("planes")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			e.other:Message(315, "I can send you to [" .. eq.say_link("potranquility",false,"potranquility") .. "], or [" .. eq.say_link("poknowledge",false,"poknowledge") .. "]");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "5") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("ykesha")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "6") then
			e.other:Message(315, "I can send you to [" .. eq.say_link("kaladim",false,"kaladim") .. "], [" .. eq.say_link("kelethin",false,"kelethin") .. "], [" .. eq.say_link("abysmal",false,"abysmal") .. "], [" .. eq.say_link("lobby",false,"lobby") .. "], [" .. eq.say_link("akanon",false,"akanon") .. "], [" .. eq.say_link("nektulos",false,"nektulos") .. "], [" .. eq.say_link("grobb",false,"grobb") .. "], [" .. eq.say_link("oggok",false,"oggok") .. "], [" .. eq.say_link("felwithe",false,"felwithe") .. "], [" .. eq.say_link("east freeport",false,"east freeport") .. "], [" .. eq.say_link("west freeport",false,"west freeport") .. "], [" .. eq.say_link("qeynos",false,"qeynos") .. "], [" .. eq.say_link("neriak",false,"neriak") .. "], [" .. eq.say_link("halas",false,"halas") .. "], [" .. eq.say_link("erudin",false,"erudin") .. "], [" .. eq.say_link("rivervale",false,"rivervale") .. "], [" .. eq.say_link("lavastorm",false,"lavastorm") .. "], or [" .. eq.say_link("surefall",false,"surefall") .. "].");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "6") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("dungeons")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "7") then
			e.other:Message(315, "I can send you to [" .. eq.say_link("kaladim",false,"kaladim") .. "], [" .. eq.say_link("kelethin",false,"kelethin") .. "], [" .. eq.say_link("abysmal",false,"abysmal") .. "], [" .. eq.say_link("lobby",false,"lobby") .. "], [" .. eq.say_link("akanon",false,"akanon") .. "], [" .. eq.say_link("nektulos",false,"nektulos") .. "], [" .. eq.say_link("grobb",false,"grobb") .. "], [" .. eq.say_link("oggok",false,"oggok") .. "], [" .. eq.say_link("felwithe",false,"felwithe") .. "], [" .. eq.say_link("east freeport",false,"east freeport") .. "], [" .. eq.say_link("west freeport",false,"west freeport") .. "], [" .. eq.say_link("qeynos",false,"qeynos") .. "], [" .. eq.say_link("neriak",false,"neriak") .. "], [" .. eq.say_link("halas",false,"halas") .. "], [" .. eq.say_link("erudin",false,"erudin") .. "], [" .. eq.say_link("rivervale",false,"rivervale") .. "], [" .. eq.say_link("lavastorm",false,"lavastorm") .. "], or [" .. eq.say_link("surefall",false,"surefall") .. "].");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "7") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("gates")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "8") then
		e.other:Message(315, "I can send you to [" .. eq.say_link("kaladim",false,"kaladim") .. "], [" .. eq.say_link("kelethin",false,"kelethin") .. "], [" .. eq.say_link("abysmal",false,"abysmal") .. "], [" .. eq.say_link("lobby",false,"lobby") .. "], [" .. eq.say_link("akanon",false,"akanon") .. "], [" .. eq.say_link("nektulos",false,"nektulos") .. "], [" .. eq.say_link("grobb",false,"grobb") .. "], [" .. eq.say_link("oggok",false,"oggok") .. "], [" .. eq.say_link("felwithe",false,"felwithe") .. "], [" .. eq.say_link("east freeport",false,"east freeport") .. "], [" .. eq.say_link("west freeport",false,"west freeport") .. "], [" .. eq.say_link("qeynos",false,"qeynos") .. "], [" .. eq.say_link("neriak",false,"neriak") .. "], [" .. eq.say_link("halas",false,"halas") .. "], [" .. eq.say_link("erudin",false,"erudin") .. "], [" .. eq.say_link("rivervale",false,"rivervale") .. "], [" .. eq.say_link("lavastorm",false,"lavastorm") .. "], or [" .. eq.say_link("surefall",false,"surefall") .. "].");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "8") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
    if (e.message:findi("omens")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "9") then
			e.other:Message(315, "I can send you to [" .. eq.say_link("kaladim",false,"kaladim") .. "], [" .. eq.say_link("kelethin",false,"kelethin") .. "], [" .. eq.say_link("abysmal",false,"abysmal") .. "], [" .. eq.say_link("lobby",false,"lobby") .. "], [" .. eq.say_link("akanon",false,"akanon") .. "], [" .. eq.say_link("nektulos",false,"nektulos") .. "], [" .. eq.say_link("grobb",false,"grobb") .. "], [" .. eq.say_link("oggok",false,"oggok") .. "], [" .. eq.say_link("felwithe",false,"felwithe") .. "], [" .. eq.say_link("east freeport",false,"east freeport") .. "], [" .. eq.say_link("west freeport",false,"west freeport") .. "], [" .. eq.say_link("qeynos",false,"qeynos") .. "], [" .. eq.say_link("neriak",false,"neriak") .. "], [" .. eq.say_link("halas",false,"halas") .. "], [" .. eq.say_link("erudin",false,"erudin") .. "], [" .. eq.say_link("rivervale",false,"rivervale") .. "], [" .. eq.say_link("lavastorm",false,"lavastorm") .. "], or [" .. eq.say_link("surefall",false,"surefall") .. "].");
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "9") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
	-- Classic
	if (e.message:findi("kaladim")) then
		e.other:Message(315, "".. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(68,100,2700,0,0);
	end
	if (e.message:findi("kelethin")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(54,8,-47,0,0);
	end
	if (e.message:findi("abysmal")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(279,-199,0,114,0);
	end
	if (e.message:findi("lobby")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(151,-71,-250,34,0);
	end
	if (e.message:findi("akanon")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(56,800,-1600,-99,0);
	end
	if (e.message:findi("nektulos")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(25,-700,1800,22,0);
	end
	if (e.message:findi("grobb")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(46,-600,-2500,0,0);
	end
	if (e.message:findi("oggok")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(47,1100,1100,25,0);
	end
	if (e.message:findi("felwithe")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(54,-2100,-2300,20,0);
	end
		if (e.message:findi("east freeport")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(10,-364,-536,-52.22,0);
	end
	if (e.message:findi("west freeport")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(9,245,142,-24.25,0);
	end
	if (e.message:findi("qeynos")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(2,-74,428,3.8,0);
	end
	if (e.message:findi("neriak")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(40,5.42,94.14,26.70,0);
	end
	if (e.message:findi("halas")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(30,682.74,3139.01,-60.16,0);
	end
	if (e.message:findi("rivervale")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(33,-2300,500,0,0);
	end
	if (e.message:findi("surefall")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(4,0,4700,0,0);
	end
	if (e.message:findi("lavastorm")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(27,-666.5,358.6,-95.7,0);
	end
	if (e.message:findi("erudin")) then
		e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
		e.self:Emote("mumbles in a low, arcane tongue");
		e.self:DoAnim(44);
		e.other:MovePC(24,-338,75,27.04,0);
	end
	-- Kunark
	if (e.message:findi("citymist")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(90, -734, 28, 4.38,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("sebilis")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(89, 0, 250,40,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("kurn")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(97,67.25,-258,3,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("karnor")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(102,302,118,4,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("dreadlands")) then	
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(86,9650,3050,1050,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("emeraldjungle")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(94,4640,-1222,-0.56,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end
	end
	if (e.message:findi("burningwood")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(87,-821,-4942,200.94,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("fieldofbone")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(78,1609.47,-1693.88,-55.30,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("lakeofillomen")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(85,-5383,5747,68.88,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("timorousdeep")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(96,2194,-5392,5.01,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("overthere")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "2") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(93,1450,-3500,310.32,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "2") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	-- Velious
	if (e.message:findi("cobaltscar")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(117,895,-99,319.25,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("crystal")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(121,303,487,-73.59,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("necropolis")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(123,1976,-86,4.38,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("eastwastes")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(116,-4296,-5049,147.32,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("greatdivide")) then	
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(118,-965,-7720,-554.25,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end		
	end	
	if (e.message:findi("iceclad")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(110,340,5330,-15.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("kael")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(113,-633,-47,124.32,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("thurgadina")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(115,0,-1222,-0.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("velketor")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(112,-65,581,-151.56,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end	
	if (e.message:findi("wakening")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(119,-5000,-673,-194.03,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("westwastes")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "3") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(120,-3499,-4099,-14.47,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "3") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	-- Luclin
	if (e.message:findi("Umbral Plains")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(176,1900,-474,24.31,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Twilight Sea")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(170,-1858,-420,-14.73);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
				e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("The Nexus")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(152,0,0,-29.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
				e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	
	end
	if (e.message:findi("The Grey")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(171,349,-1994,-25.61,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("The Deep")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(164,-700,-398,-59.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("The Bazaar")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
	
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(151,-71,-250,33.78,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Shadeweaver's Thicket")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(165,-3570,-2122,-93.78,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Acrylia Caverns")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(154,-665,20,4.38,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Fungus Grove")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(157,-1005,-2140,-307.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Grieg's End")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(163,3461,-19,-4.40,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Grimling Forest")) then	
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(167,-1020,-950,20.78,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Hollowshade Moor")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(166,2420,1241,43.82,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Maiden's Eye")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(173,1905,940,-150.50,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Netherbian Lair")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(161,14,1787,-61.93,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Paludal Caverns")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(156,-241,-3721,196.38,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end
	if (e.message:findi("Sanctus Seru")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "4") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(159,-232,1166,60.38,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "4") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end			
	end	
		-- Planes
	if (e.message:findi("potranquility")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. " , stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(203,-1507,701,-875,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "5") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
	if (e.message:findi("poknowledge")) then
		if(eq.get_data(e.other:GetCleanName() .. "_Progression") >= "5") then
			e.other:Message(315, "" .. e.other:GetCleanName() .. ", stand close to me while I cast..");
			e.self:Emote("mumbles in a low, arcane tongue");
			e.self:DoAnim(44);
			e.other:MovePC(202,-285,-148,-156.62,0);
		elseif (eq.get_data(e.other:GetCleanName() .. "_Progression") < "5") then
			e.other:Message(315, "You have not travelled to these lands yet.");
		end	
	end
end