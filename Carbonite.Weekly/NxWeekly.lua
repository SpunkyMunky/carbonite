---------------------------------------------------------------------------------------
-- NxWeekly - Weekly Objective Tracker
-- Copyright 2013 Rythal
--------

local _G = getfenv(0)

CarboniteWeekly = LibStub("AceAddon-3.0"):NewAddon("CarboniteWeekly","AceEvent-3.0","AceComm-3.0")

local L = LibStub("AceLocale-3.0"):GetLocale("Carbonite.Weekly", true)

Nx.VERSIONWeek			= .1				-- Warehouse data

local defaults = {
	profile = {
		Weekly = {
			ResetDate = 1,
			SecondsToReset = 0,
		},
		Track = {
			Mob = {
				Sha = true,
				Galleon = true,
				Nalak = true,
				Oondasta = true,
			},
			Loot = { 
				Ritual = true,
				LootKey = true,
				OutdoorChest = true,
			},
			Quest = {
				MoguRune = true,
				Chamberlain = true,
			},
		},
	},
}

Nx.Weekly = {}

local weeklyopts
local function WeeklyOptions()
	if not weeklyopts then
		weeklyopts = {
			type = "group",
			name = "Weekly Status Options",
			childGroups	= "tab",
			args = {
				general = {
					type = "group",
					name = "General",
					order = 1,
					args = {
						dateset = {
							order = 1,
							type = "select",
							name = "Day Reset Occurs",
							get = function()						
								local num = Nx.wkdb.profile.Weekly.ResetDate
								return num
							end,
							set = function(info,name)
								Nx.wkdb.profile.Weekly.ResetDate = name
							end,
							values = function()
								return {"Tuesday","Wednesday","Thursday"}
							end,
						},
					},
				},
				Mobs = {
					type = "group",
					name = "Mobs",
					order = 2,
					args = {
						mdesc = {
							order = 1,
							type = "description",
							name = "Place check boxes in the mobs you wish to track weekly kills.",
						},
						sha = {
							order = 2,
							type = "toggle",
							width = "full",
							name = "Sha of Anger",
							get = function()						
								return Nx.wkdb.profile.Track.Mob.Sha								
							end,
							set = function()
								Nx.wkdb.profile.Track.Mob.Sha = not Nx.wkdb.profile.Track.Mob.Sha
							end,
						},
						galleon = {
							order = 3,
							type = "toggle",
							width = "full",
							name = "Galleon",
							get = function()						
								return Nx.wkdb.profile.Track.Mob.Galleon	
							end,
							set = function()
								Nx.wkdb.profile.Track.Mob.Galleon = not Nx.wkdb.profile.Track.Mob.Galleon
							end,
						},
						nalak = {
							order = 4,
							type = "toggle",
							width = "full",
							name = "Nalak",
							get = function()						
								return Nx.wkdb.profile.Track.Mob.Nalak
							end,
							set = function()
								Nx.wkdb.profile.Track.Mob.Nalak = not Nx.wkdb.profile.Track.Mob.Nalak
							end,
						},
						oondasta = {
							order = 5,
							type = "toggle",
							width = "full",
							name = "Oondasta",
							get = function()						
								return Nx.wkdb.profile.Track.Mob.Oondasta
							end,
							set = function()
								Nx.wkdb.profile.Track.Mob.Oondasta = not Nx.wkdb.profile.Track.Mob.Oondasta
							end,
						},						
					},					
				},
				Loot = {
					type = "group",
					name = "Lootables",
					order = 3,
					args = {
						ldesc = {
							order = 1,
							type = "description",
							name = "Place check boxes in the weekly drops you wish to track.",
						},
						ritual = {
							order = 2,
							type = "toggle",
							width = "full",
							name = "Shan'ze Ritual Stone",
							get = function()						
								return Nx.wkdb.profile.Track.Loot.Ritual								
							end,
							set = function()
								Nx.wkdb.profile.Track.Loot.Ritual = not Nx.wkdb.profile.Track.Loot.Ritual
							end,
						},
						lootkey = {
							order = 3,
							type = "toggle",
							width = "full",
							name = "Lei Shen Palace Key",
							get = function()						
								return Nx.wkdb.profile.Track.Loot.LootKey	
							end,
							set = function()
								Nx.wkdb.profile.Track.Loot.LootKey = not Nx.wkdb.profile.Track.Loot.LootKey
							end,
						},
						ochest = {
							order = 4,
							type = "toggle",
							width = "full",
							name = "Thunder King Trove",
							get = function()						
								return Nx.wkdb.profile.Track.Loot.OutdoorChest
							end,
							set = function()
								Nx.wkdb.profile.Track.Loot.OutdoorChest = not Nx.wkdb.profile.Track.Loot.OutdoorChest
							end,
						},
					},					
				},
				Quests = {
					type = "group",
					name = "Quests",
					order = 4,
					args = {
						qdesc = {
							order = 1,
							type = "description",
							name = "Place check boxes in the weekly quests you want to track.",
						},
						mogurune = {
							order = 2,
							type = "toggle",
							width = "full",
							name = "Mogu Runes of Fate",
							get = function()						
								return Nx.wkdb.profile.Track.Quest.MoguRune								
							end,
							set = function()
								Nx.wkdb.profile.Track.Quest.MoguRune = not Nx.wkdb.profile.Track.Quest.MoguRune
							end,
						},
						chamberlain = {
							order = 3,
							type = "toggle",
							width = "full",
							name = "The Crumbled Chamberlain",
							get = function()						
								return Nx.wkdb.profile.Track.Quest.Chamberlain	
							end,
							set = function()
								Nx.wkdb.profile.Track.Quest.Chamberlain = not Nx.wkdb.profile.Track.Quest.Chamberlain
							end,
						},
					},													
				},				
				Raids = {
					type = "group",
					name = "Raids",
					order = 5,
					args = {
						rdesc = {
							order = 1,
							type = "description",
							name = "Place check boxes in the raid progress you want to track.",
						},
					},													
				},								
			},
		}
	end
	return weeklyopts
end

function CarboniteWeekly:OnInitialize()
	if not Nx.Initialized then
		CarbWeeklyInit = Nx:ScheduleTimer(CarboniteWeekly.OnInitialize,1)
		return
	end
	Nx.wkdb = LibStub("AceDB-3.0"):New("NXWeek",defaults, true)		
	Nx.wkdb:SetProfile(Nx.db:GetCurrentProfile())
	tinsert(Nx.dbs,Nx.wkdb)	
	Nx.Weekly:Init()
	Nx.Weekly:Login()
	local function func ()
		Nx.Weekly:ToggleShow()
	end	
	Nx.NXMiniMapBut.Menu:AddItem(0, "Show Weekly Objectives", func, Nx.NXMiniMapBut)			

	CarboniteWeekly:RegisterEvent("PLAYER_LOGIN", "EventHandler")
	CarboniteWeekly:RegisterEvent("PLAYER_LOGOUT", "EventHandler")
	Nx.Button.TypeData["MapWeekly"] = {
		Up = "$Achievement_Faction_craftsman",
		SizeUp = 22,
		SizeDn = 22,
	}

	tinsert (Nx.BarData,{"MapWeekly", "-Weekly Tracker-", Nx.Weekly.OnButToggleWeekly, false })
	Nx.Map.Maps[1]:CreateToolBar()
	local resettime = Nx.Weekly:CalcEpoch()
	if resettime > Nx.wkdb.profile.Weekly.SecondsToReset then
		Nx.wkdb.profile.Weekly.SecondsToReset = resettime + Nx.Weekly:CalcReset()
		Nx.Weekly:Reset()		
	end	
	Nx:AddToConfig("Weekly Status Module",WeeklyOptions(),"Weekly Status Module")
	tinsert(Nx.BrokerMenuTemplate,{ text = "Toggle Weekly List", func = function() Nx.Weekly:ToggleShow() end })
end

function CarboniteWeekly:EventHandler(event, arg1, arg2, arg3)
	if event == "PLAYER_LOGIN" or event == "PLAYER_LOGOUT" then
		Nx.Weekly:Login(event,arg1)
	else
		Nx.prt("ERROR: Event " .. event .. " triggered without function.")
	end	
end

function Nx.Weekly:Init()
	local week = Nx.wkdb.profile.WeeklyData
	if not week or week.Version < Nx.VERSIONWeek then
		if week then
			Nx.prt ("Reset old weekly data %f", week.Version)
		end
		week = {}
		Nx.wkdb.profile.WeeklyData = week
		week.Version = Nx.VERSIONWeek
	end		
	self.ClassIcons = {
		["Druid"] = "Ability_Druid_Maul",
		["Hunter"] = "INV_Weapon_Bow_07",
		["Mage"] = "INV_Staff_13",
		["Paladin"] = "INV_Hammer_01",
		["Priest"] = "INV_Staff_30",
		["Rogue"] = "INV_ThrowingKnife_04",
		["Shaman"] = "Spell_Nature_BloodLust",
		["Warlock"] = "Spell_Nature_FaerieFire",
		["Warrior"] = "INV_Sword_27",
		["Death Knight"] = "Spell_Deathknight_ClassIcon",
		["Monk"] = "class_monk",
	}
end

--------
-- Debug print

function Nx.Weekly:Login(event, arg1)
	local ch = Nx.CurCharacter
	Nx.Weekly:CharRecord(ch)
end

function Nx.Weekly:Reset()
	for cnum, rc in ipairs (Nx.RealmChars) do
		local ch = Nx.db.global.Characters[rc]
		if not ch then
			return
		end
		if ch.Weekly then
			ch.Weekly.Sha = false
			ch.Weekly.Galleon = false
			ch.Weekly.Nalak = false
			ch.Weekly.Oondasta = false
			ch.Weekly.Ritual = false
			ch.Weekly.LootKey = false
			ch.Weekly.OutdoorChest = false
			ch.Weekly.MoguRune = false
			ch.Weekly.Chamberlain = false
		end
	end
end

function Nx.Weekly:CharRecord(ch)
  if not ch.Weekly then
    ch.Weekly = {}
  end  
  if IsQuestFlaggedCompleted(32099) then 
	ch.Weekly.Sha = true
  else
	ch.Weekly.Sha = false
  end
  if IsQuestFlaggedCompleted(32098) then 
	ch.Weekly.Galleon = true
  else
	ch.Weekly.Galleon = false
  end  
  if IsQuestFlaggedCompleted(32518) then 
	ch.Weekly.Nalak = true
  else
	ch.Weekly.Nalak = false
  end  
  if IsQuestFlaggedCompleted(32519) then 
	ch.Weekly.Oondasta = true
  else
	ch.Weekly.Oondasta = false
  end  
  if IsQuestFlaggedCompleted(32610) then 
	ch.Weekly.Ritual = true
  else
	ch.Weekly.Ritual = false
  end  
  if IsQuestFlaggedCompleted(32626) then 
	ch.Weekly.LootKey = true
  else
	ch.Weekly.LootKey = false
  end  
  if IsQuestFlaggedCompleted(32609) then 
	ch.Weekly.OutdoorChest = true
  else
	ch.Weekly.OutdoorChest = false
  end  
  if IsQuestFlaggedCompleted(32718) then
	ch.Weekly.MoguRune = true
  else
	ch.Weekly.MoguRune = false
  end
  if IsQuestFlaggedCompleted(32505) then
	ch.Weekly.Chamberlain = true
  else
	ch.Weekly.Chamberlain = false
  end  
end

--------
-- Create warehouse window

function Nx.Weekly:Create()
	self.SelectedChar = 1
	local win = Nx.Window:Create ("NxWeekly", nil, nil, nil, 1)
	self.Win = win
	win.Frm.NxInst = self
	win:CreateButtons (true, true)
	win:InitLayoutData (nil, -.25, -.15, -.5, -.6)
	win.Frm:SetToplevel (true)

	win:Show (false)

	tinsert (UISpecialFrames, win.Frm:GetName())
	-- Character List

	Nx.List:SetCreateFont ("Font.Medium", 16)

	local list = Nx.List:Create (false, 0, 0, 1, 1, win.Frm)
	self.List = list

	list:SetUser (self, self.OnListEvent)

	list:SetLineHeight (4)

	list:ColumnAdd ("", 1, 24)
	list:ColumnAdd ("Name", 2, 200)
	list:ColumnAdd ("Class", 3,250)
	win:Attach (list.Frm, 0, .5, 0, 1)

	-- Item List

	Nx.List:SetCreateFont ("Font.Medium", 16)

	local list = Nx.List:Create (false, 0, 0, 1, 1, win.Frm)
	self.WeeklyList = list	
	list:ColumnAdd ("", 1, 250)
	list:ColumnAdd ("", 2, 250)
	win:Attach (list.Frm, .5, 1, 0, 1)
	self:Update()
	self.List:Select (0)
	self.List:FullUpdate()
end

--------
-- Show or hide window

function Nx.Weekly:ToggleShow()

	if not self.Win then
		self:Create()
	end

	self.Win:Show (not self.Win:IsShown())

	if self.Win:IsShown() then		
		self:Update()
	end

--PAIDE!
end

--------
-- On list events

function Nx.Weekly:OnListEvent (eventName, sel, val2, click)
	local data = self.List:ItemGetData (sel) or 0
	local id = data % 1000
	if (id >= 1 and id <= #Nx.RealmChars) or id == 99 then
		self.SelectedChar = id
	end

	if eventName == "select" or eventName == "mid" then
		self:Update()
	end
end

--------
-- Update Warehouse

function Nx.Weekly:Update()
	local Nx = Nx
	if not Nx.CurCharacter then	-- Can even happen?
		return
	end
	if not self.Win then
		return
	end
	Nx.Weekly:CharRecord(Nx.CurCharacter)
	self.Win:SetTitle (format ("Weekly Tracker: %d characters - Reset In %s", #Nx.RealmChars,SecondsToTime(Nx.Weekly:CalcReset(), false, true,3)))
	local myName = UnitName ("player")
	local totalChars = 0
	local hicol = "|cffcfcfcf"
	local list = self.List
	list:Empty()
	local allIndex = list:ItemGetNum()
	local rn = GetRealmName()
	for cnum, rc in ipairs (Nx.RealmChars) do
		local rname, cname = strsplit (".", rc)
		local cnameCol = "|cffafdfaf"
		if cname == myName then		-- Me?
			cnameCol = "|cffdfffdf"
		end
		local ch = Nx.db.global.Characters[rc]
		if ch then
			local cls = ch["Class"] or "?"
			local lvl = tonumber (ch["Level"] or 0)
			totalChars = totalChars + 1
			list:ItemAdd (cnum)
			local s = ch["Account"] and format ("%s (%s)", cname, ch["Account"]) or cname
			list:ItemSet (2, format ("%s%s", cnameCol, s))
			list:ItemSet (3, format ("|cffff0000[|cff00ffff%s %s|cffff0000]", lvl, cls))
			if self.ClassIcons[ch["Class"]] then
				list:ItemSetButton ("Warehouse", hide, "Interface\\Icons\\" .. self.ClassIcons[ch["Class"]])
			end
		end
	end

	list:Update()
	self:DisplayWeekly()
end

function Nx.Weekly:DisplayWeekly()
	local list = self.WeeklyList
	local strng = ""
	list:Empty()
	local rc = Nx.RealmChars[self.SelectedChar]
	local rname, cname = strsplit (".", rc)
	local curline = 1
	local spacer = false
	list:ColumnSetName (1, format ("  %s's Weekly Status", cname))
	local ch = Nx.db.global.Characters[rc]	
	if Nx.wkdb.profile.Track.Mob.Sha then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Sha Of Anger")
		if ch.Weekly and ch.Weekly.Sha then
			strng = "|cff00ff00Killed"
		elseif ch.Weekly and not ch.Weekly.Sha then
			strng = "|cffff0000Not Killed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Mob.Galleon then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Galleon")
		if ch.Weekly and ch.Weekly.Galleon then
			strng = "|cff00ff00Killed"
		elseif ch.Weekly and not ch.Weekly.Galleon then
			strng = "|cffff0000Not Killed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)	
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Mob.Nalak then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Nalak")
		if ch.Weekly and ch.Weekly.Nalak then
			strng = "|cff00ff00Killed"
		elseif ch.Weekly and not ch.Weekly.Nalak then
			strng = "|cffff0000Not Killed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)	
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Mob.Oondasta then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Oondasta")
		if ch.Weekly and ch.Weekly.Oondasta then
			strng = "|cff00ff00Killed"
		elseif ch.Weekly and not ch.Weekly.Oondasta then
			strng = "|cffff0000Not Killed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)	
		curline = curline + 1
		spacer = true
	end
	if spacer then
		list:ItemAdd(curline)
		list:ItemSet(1,"|cff00ffff  -----------------------------")
		curline = curline + 1
	end
	spacer = false
	if Nx.wkdb.profile.Track.Loot.Ritual then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Shan'ze Ritual Stone")
		if ch.Weekly and ch.Weekly.Ritual then
			strng = "|cff00ff00Looted"
		elseif ch.Weekly and not ch.Weekly.Ritual then
			strng = "|cffff0000Not Looted"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)		
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Loot.LootKey then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Palace Key")
		if ch.Weekly and ch.Weekly.LootKey then
			strng = "|cff00ff00Looted"
		elseif ch.Weekly and not ch.Weekly.LootKey then
			strng = "|cffff0000Not Looted"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)		
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Loot.OutdoorChest then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Thunder King Trove")
		if ch.Weekly and ch.Weekly.OutdoorChest then
			strng = "|cff00ff00Looted"
		elseif ch.Weekly and not ch.Weekly.OutdoorChest then
			strng = "|cffff0000Not Looted"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)		
		curline = curline + 1
		spacer = true
	end
	if spacer then
		list:ItemAdd(curline)
		list:ItemSet(1,"|cff00ffff  -----------------------------")
	end
	spacer = false
	if Nx.wkdb.profile.Track.Quest.MoguRune then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  Mogu Runes Of Fate Quest")
		if ch.Weekly and ch.Weekly.MoguRune then
			strng = "|cff00ff00Completed"
		elseif ch.Weekly and not ch.Weekly.MoguRune then
			strng = "|cffff0000Not Completed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)			
		curline = curline + 1
		spacer = true
	end
	if Nx.wkdb.profile.Track.Quest.Chamberlain then
		list:ItemAdd(curline)
		list:ItemSet(1, "|cffffff00  The Crumbled Chamberlain Quest")
		if ch.Weekly and ch.Weekly.Chamberlain then
			strng = "|cff00ff00Completed"
		elseif ch.Weekly and not ch.Weekly.Chamberlain then
			strng = "|cffff0000Not Completed"			
		else
			strng = "|cffffffffUnknown"
		end
		list:ItemSet(2, strng)						
		curline = curline + 1
		spacer = true
	end
end

function Nx.Weekly:OnButToggleWeekly (but)
	Nx.Weekly:ToggleShow()
end

function Nx.Weekly:CalcEpoch()
	local anum,amonth,aday,ayear = CalendarGetDate()
	local ahour,amin = GetGameTime()		
	return time({year = ayear, month = amonth, day = aday, hour = ahour, min = amin})
end

function Nx.Weekly:CalcReset()
	local seconds = GetQuestResetTime()
	local day = CalendarGetDate()
	local dailydate = Nx.wkdb.profile.Weekly.ResetDate	
	if day - 2 == dailydate-1 then
		if seconds < 21600 then
			return seconds
		end
	end
	local tdays = 0
	if day - 2 == dailydate then tdays = 6 end
	if day - 2 == dailydate+1 then tdays = 5 end
	if day - 2 == dailydate+2 then tdays = 4 end
	if day - 2 == dailydate+3 then tdays = 3 end
	if day - 2 == dailydate+4 then tdays = 2 end
	if day - 2 == dailydate-1 then tdays = 1 end
	if day - 2 == dailydate-2 then tdays = 1 end
	if day - 2 == dailydate-3 then tdays = 2 end
	if day - 2 == dailydate-4 then tdays = 3 end
--	Nx.prt(day .. " " .. dailydate .. " " .. tdays)
	return seconds + tdays * 86400	
end