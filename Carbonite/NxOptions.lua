---------------------------------------------------------------------------------------
-- NxOptions - Options
-- Copyright 2007-2012 Carbon Based Creations, LLC
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
-- Carbonite - Addon for World of Warcraft(tm)
-- Copyright 2007-2012 Carbon Based Creations, LLC
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
---------------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Tables

local AceConfig 	= LibStub("AceConfig-3.0")
local AceConfigReg 	= LibStub("AceConfigRegistry-3.0")
local AceConfigDialog 	= LibStub("AceConfigDialog-3.0")

local modular_config = {}

local profiles

local function profilesConfig()
	if not profiles then
		profiles = {
			type = "group",
			name = "Profiles",
			args = {			
				line1 = {			
					type = "description",
					name = "You can change the active database profile, so you can have different settings for every character.",
					order = 1,
				},
				line2 = {
					type = "description",
					name = "Reset the current profile back to it's default values, in case your configuration is broken, or you simply want to start over.",
					order = 2,
				},
				bigbutton = {
					type = "execute",
					name = "Reset Profile",
					width = "normal",
					func = function () 
							for a,b in pairs (Nx.dbs) do
								b:ResetProfile(true,true)
							end	
					end,
					desc = "Reset the current profile to the defaults",
					order = 3,
				},
				current = {
					type = "description",
					name = "Current Profile: |c00ffff00" .. Nx.db:GetCurrentProfile(),
					width = "double",
					order = 4,
				},
				line3 = {
					type = "description",
					name = "You can either create a new profile by entering a name in the editbox, or choose one of the already existing profiles.",
					order = 5,
				},
				newprof = {
					type = "input",
					name = "New",
					desc = "Create a new empty profile",
					get = false,
					set = function (info, name)
						for a,b in pairs(Nx.dbs) do
							Nx.prt(name)
							b:SetProfile(name)
						end
					end,
					order = 6,
				},
				existing = {
					type = "select",
					style = "dropdown",
					name = "Existing Profiles",
					values = Nx.db:GetProfiles(),
					get = function ()
						return Nx.db:GetCurrentProfile()
					end,
					set = function (info, name)
						for a,b in pairs (Nx.dbs) do
							b:SetProfile(name)
						end
					end,
					desc = "Select one of your currently available profiles",
					order = 7,
				},
				linebrk = {
					type = "description",
					name = "",
					width = "full",
					order = 8,
				},
				line4 = {
					type = "description",
					name = "Copy the settings from one existing profile into the currently active profile.",
					order = 9,
				},
				copyfrom = {				
					type = "select",
					style = "dropdown",
					name = "Existing Profiles",
					values = Nx.db:GetProfiles(),
					get = false,
					set = function (info, name)
						for a,b in pairs(Nx.dbs) do
							b:CopyProfile(name)
						end
					end,
					desc = "Copy the settings from one existing profile into the currently active profile.",
					order = 10,			
				},
				linebrk2 = {
					type = "description",
					name = "",
					width = "full",
					order = 11,
				},
				line5 = {
					type = "description",
					name = "Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file.",
					order = 12,
				},
				delete = {				
					type = "select",
					style = "dropdown",
					name = "Delete a Profile",
					get = false,
					set = function (info, name)
						for a,b in pairs(Nx.dbs) do
							b:DeleteProfile(name)
						end
					end,					
					values = Nx.db:GetProfiles(),
					desc = "Deletes a profile from the database.",
					order = 13,			
				},				
			},
		}
	end
	return profiles
end

local config

local function mainConfig()
	if not config then	
		config = {
			type = "group",
			name = "Carbonite",
			args = {
				main = {
					order = 1,
					type = "group",
					name = "Main Options",
					args = {
						title = {
							type = "description", 
							name = "\nCarbonite is a full featured, powerful map addon providing a versitile easy to use google style map which either can replace or work with the current blizzard maps.\n\nThrough modules it can also be expanded to do even more to help make your game easier." ..
							       "\n\n\n|cff9999ffRelease Version: |cffd700ff" .. Nx.VERMAJOR .. "." .. (Nx.VERMINOR*10) .. "\n" ..
								   "|cff9999ffMaintained by: |cffd700ffRythal of Moon Guard\n" ..								   
								   "|cff9999ffWebsite: |cffd700ffhttp://www.wowinterface.com/downloads/info12965-Carbonite.html\n"..
								   "\n"..
								   "|cd700ffffFor support, please visit the forums for Carbonite on WoW Interface.\n"..
								   "|cd700ffffSpecial thanks to: \n\n"..
								   "|cff9999ffCirax for Carbonite2 Logo\n" ..
								   "|cff9999ffJimboBlue for guide location updates and checking\n",								   
						},
					},
				},
			},
		}
		for k, v in pairs(modular_config) do
			config.args[k] = (type(v) == "function") and v() or v
		end
	end
  return config
end

local battlegrounds
local function BGConfig()
	if not battlegrounds then	
		battlegrounds = {
			type = "group",
			name = "Battlegrounds",
			args = {
				bgstats = {
					type = "toggle",
					name = "Show Battleground Stats",
					width = "full",
					desc = "Turns on or off displaying your battleground k/d and honor gained in chat during a match.",
					get = function()
						return Nx.db.profile.Battleground.ShowStats 
					end,
					set = function()
						Nx.db.profile.Battleground.ShowStats = not Nx.db.profile.Battleground.ShowStats
					end,
				},
			},	  
		}
	end
	return battlegrounds
end

local general
local function generalOptions()
	if not general then
		general = {
			type = "group",
			name = "General Options",
			args = {
				loginMsg = {
					order = 1,
					type = "toggle",
					width = "full",
					name = "Show Login Message",
					desc = "When Enabled, displays the Carbonite loading messages in chat.",
					get = function()
						return Nx.db.profile.General.LoginHideVer 
					end,
					set = function()
						Nx.db.profile.General.LoginHideVer = not Nx.db.profile.General.LoginHideVer
					end,				
				},
				loginWin = {
					order = 2,
					type = "toggle",
					width = "full",
					name = "Show Login Graphic",
					desc = "When Enabled, displays the Carbonite graphic during initialization.\n",
					get = function()
						return Nx.db.profile.General.TitleOff 
					end,
					set = function()
						Nx.db.profile.General.TitleOff = not Nx.db.profile.General.TitleOff
					end,				
				},			
				loginSnd = {
					order = 3,
					type = "toggle",
					width = "full",
					name = "Play Login Sound",
					desc = "When Enabled, plays a sound when Carbonite is loaded.",
					get = function()
						return Nx.db.profile.General.TitleSoundOn
					end,
					set = function()
						Nx.db.profile.General.TitleSoundOn = not Nx.db.profile.General.TitleSoundOn
					end,				
				},		
				spacer1 = {
					order = 4,
					type = "description",
					name = "\n",
				},
				chatWindow = {
					order = 5,
					type	= "select",
					name	= "Default Chat Channel",
					desc	= "Allows selection of which chat window to display Carbonite messages",
					get	= function()
						local vals = Nx.Opts:CalcChoices("Chat")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.General.ChatMsgFrm) then
						     return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("Chat")						
						Nx.db.profile.General.ChatMsgFrm = vals[name]
						Nx.Opts:NXCmdUIChange()
					end,
					values	= function()
					    return Nx.Opts:CalcChoices("Chat")
					end,
				},				
				spacer2 = {
					order = 6,
					type = "description",
					name = "\n",
				},
				maxCamera = {
					order = 7,
					type = "toggle",
					width = "full",
					name = "Force Max Camera Distance\n",
					desc = "When enabled, sets the max camera distance higher then Blizzards options normally allows.",
					get = function()
						return Nx.db.profile.General.CameraForceMaxDist
					end,
					set = function()
						Nx.db.profile.General.CameraForceMaxDist = not Nx.db.profile.General.CameraForceMaxDist
						Nx.Opts:NXCmdCamForceMaxDist()
					end,				
				},		
				hideGriff = {
					order = 8,
					type = "toggle",
					width = "full",
					name = "Hide Action Bar Gryphon Graphics",
					desc = "Attempts to hide the two gryphons on your action bar.",
					get = function()
						return Nx.db.profile.General.GryphonsHide
					end,
					set = function()
						Nx.db.profile.General.GryphonsHide = not Nx.db.profile.General.GryphonsHide
						Nx.Opts:NXCmdGryphonsUpdate()
					end,				
				},						
			},
		}
	end
	return general
end

local map
local function mapConfig ()
	if not map then
		map = {
			type = "group",
			name = "Map Options",
			childGroups	= "tab",
			args = {
				mainMap = {
					type = "group",
					name = "Map Options",
					order = 1,
					args = {
						maxMap = {
							order = 1,
							type = "toggle",
							width = "full",
							name = "Use Carbonite Map instead of Blizzards (Alt-M will open world map)\n",
							desc = "When enabled, pressing 'M' will maximize the carbonite map instead of opening the world map.",
							get = function()
								return Nx.db.profile.Map.MaxOverride
							end,
							set = function()
								Nx.db.profile.Map.MaxOverride = not Nx.db.profile.Map.MaxOverride							
							end,				
						},			
						compatability = {
							order = 2,
							type = "toggle",
							width = "full",
							name = "Enable Compatability Mode",
							desc = "When Enabled, Carbonite will performe combat checks before any map/window functions. This eliminates other UI's from causing protected mode errors.",
							get = function()
								return Nx.db.profile.Map.Compatability
							end,
							set = function()
								Nx.db.profile.Map.Compatability = not Nx.db.profile.Map.Compatability
							end,
						},
						centerMap = {
							order = 2,
							type = "toggle",
							width = "full",
							name = "Center map when maximizing\n",
							desc = "When enabled, the map will center on your current zone when you maximize it",
							get = function()
								return Nx.db.profile.Map.MaxCenter
							end,
							set = function()
								Nx.db.profile.Map.MaxCenter = not Nx.db.profile.Map.MaxCenter
							end,				
						},							  						
						mouseIgnore = {
							order = 3,
							type = "toggle",
							width = "full",
							name = "Ignore mouse on map except when ALT is pressed\n",
							desc = "When enabled, the small game map will ignore all mouse clicks unless the ALT key is held down.",
							get = function()
								return Nx.db.profile.Map.MouseIgnore
							end,
							set = function()
								Nx.db.profile.Map.MouseIgnore = not Nx.db.profile.Map.MouseIgnore							
							end,				
						},							  						
						maxMouseIgnore = {
							order = 4,
							type = "toggle",
							width = "full",
							name = "Ignore mouse on full-sized map except when ALT is pressed\n",
							desc = "When enabled, the full size map will ignore all mouse clicks unless the ALT key is held down.",
							get = function()
								return Nx.db.profile.Map.MaxMouseIgnore
							end,
							set = function()
								Nx.db.profile.Map.MaxMouseIgnore = not Nx.db.profile.Map.MaxMouseIgnore
							end,				
						},
						ownMap = {
							order = 5,
							type = "toggle",
							width = "full",
							name = "Move Worldmap Data into Maximized Map\n",
							desc = "When enabled, Carbonite will attempt to move anything drawn on your world map onto the Maximized Map.",
							get = function()
								return Nx.db.profile.Map.WOwn
							end,
							set = function()
								Nx.db.profile.Map.WOwn = not Nx.db.profile.Map.WOwn
							end,				
						},				
						restoreMap = {
							order = 6,
							type = "toggle",
							width = "full",
							name = "Close Map instead of minimize\n",
							desc = "When enabled, pressing either 'M' or ESC will close the maximized map instead of switching back to small map.",
							get = function()
								return Nx.db.profile.Map.MaxRestoreHide
							end,
							set = function()
								Nx.db.profile.Map.MaxRestoreHide = not Nx.db.profile.Map.MaxRestoreHide
							end,				
						},		
						spacer1 = {
							order = 7,
							type = "description",
							name = "\n",
						},
						showPals = {
							order = 8,
							type = "toggle",							
							name = "Show Friends/Guildmates in Cities",
							width = "full",
							desc = "When enabled, will attempt to draw a marker on the map for friends & guildmates positions.",
							get = function()
								return Nx.db.profile.Map.ShowPalsInCities
							end,
							set = function()
								Nx.db.profile.Map.ShowPalsInCities = not Nx.db.profile.Map.ShowPalsInCities
							end,				
						},
						showOthers = {
							order = 9,
							type = "toggle",							
							width = "full",
							name = "Show Other people in Cities",
							desc = "When enabled, will attempt to draw a marker on the map for other Carbonite users.",
							get = function()
								return Nx.db.profile.Map.ShowOthersInCities
							end,
							set = function()
								Nx.db.profile.Map.ShowOthersInCities = not Nx.db.profile.Map.ShowOthersInCities
							end,				
						},
						showOthersZ = {
							order = 10,
							type = "toggle",			
							width = "full",
							name = "Show Other people In Zone",
							desc = "When enabled, will attempt to draw a marker on the map for other Carbonite users.",
							get = function()
								return Nx.db.profile.Map.ShowOthersInZone
							end,
							set = function()
								Nx.db.profile.Map.ShowOthersInZone = not Nx.db.profile.Map.ShowOthersInZone
							end,				
						},
						spacer2 = {
							order = 11,
							type = "description",
							name = "\n",
						},				
						restoreScale = {
							order = 12,
							type = "toggle",							
							name = "Restore map scale after track",
							width = "full",
							desc = "When enabled, restores your previous map scale when tracking is cleared.",
							get = function()
								return Nx.db.profile.Map.RestoreScaleAfterTrack
							end,
							set = function()
								Nx.db.profile.Map.RestoreScaleAfterTrack = not Nx.db.profile.Map.RestoreScaleAfterTrack
							end,				
						},
						useRoute = {
							order = 13,
							type = "toggle",							
							name = "Use Travel Routing",
							width = "full",
							desc = "When enabled, attempts to route your travel when destination is in another zone.",
							get = function()
								return Nx.db.profile.Map.RouteUse
							end,
							set = function()
								Nx.db.profile.Map.RouteUse = not Nx.db.profile.Map.RouteUse
							end,				
						},						
						restoreScale = {
							order = 14,
							type = "toggle",							
							name = "Restore map scale after track",
							width = "full",
							desc = "When enabled, restores your previous map scale when tracking is cleared.",
							get = function()
								return Nx.db.profile.Map.RestoreScaleAfterTrack
							end,
							set = function()
								Nx.db.profile.Map.RestoreScaleAfterTrack = not Nx.db.profile.Map.RestoreScaleAfterTrack
							end,				
						},				
						spacer3 = {
							order = 15,
							type = "description",
							name = "\n",
						},				
						showTrail = {
							order = 16,
							type = "toggle",							
							name = "Show Movement Trail",
							width = "full",
							desc = "When enabled, draws a trail on the map to show your movements.",
							get = function()
								return Nx.db.profile.Map.ShowTrail
							end,
							set = function()
								Nx.db.profile.Map.ShowTrail = not Nx.db.profile.Map.ShowTrail
							end,				
						},									
						trailDist = {
							order = 17,
							type = "range",							
							name = "Movement trail distance",
							desc = "sets the distance of movement between the trail marks",
							min = .1,
							max = 20,
							step = .1,
							bigStep = .1,
							get = function()
								return Nx.db.profile.Map.TrailDist
							end,
							set = function(info,value)
								Nx.db.profile.Map.TrailDist = value
							end,				
						},
						trailCnt = {
							order = 18,
							type = "range",							
							name = "Movement dot count",
							desc = "sets the number of movement dots to draw on the map",
							min = 0,
							max = 1000,
							step = 10,
							bigStep = 10,
							get = function()
								return Nx.db.profile.Map.TrailCnt
							end,
							set = function(info,value)
								Nx.db.profile.Map.TrailCnt = value
							end,				
						},				
						trailTime = {
							order = 19,
							type = "range",							
							name = "Movement trail fade time",							
							desc = "sets the time trail marks last on the map (in seconds)",
							min = 0,
							max = 1000,
							step = 10,
							bigStep = 10,
							get = function()
								return Nx.db.profile.Map.TrailTime
							end,
							set = function(info,value)
								Nx.db.profile.Map.TrailTime = value
							end,				
						},						
						spacer4 = {
							order = 20,
							type = "description",
							name = "\n",
						},					
						showToolBar = {
							order = 21,
							type = "toggle",							
							name = "Show Map Toolbar",
							width = "full",
							desc = "When enabled, shows the quickbutton toolbar on the map.",
							get = function()
								return Nx.db.profile.Map.ShowToolBar
							end,
							set = function()
								Nx.db.profile.Map.ShowToolBar = not Nx.db.profile.Map.ShowToolBar
								Nx.Opts:NXCmdMapToolBarUpdate()
							end,				
						},
						TooltipAnchor = {
							order = 22,
							type	= "select",
							name	= "  Map Tooltip Anchor",
							desc	= "Sets the anchor point for tooltips on the map",
							get	= function()
								local vals = Nx.Opts:CalcChoices("Anchor0")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.LocTipAnchor) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("Anchor0")
								Nx.db.profile.Map.LocTipAnchor = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("Anchor0")
							end,
						},
						TooltipAnchorRel = {
							order = 23,
							type	= "select",
							name	= "  Map Tooltip Anchor To Map",
							desc	= "Sets the secondary anchor point for tooltips on the map",
							get	= function()
								local vals = Nx.Opts:CalcChoices("Anchor0")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.LocTipAnchorRel) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("Anchor0")
								Nx.db.profile.Map.LocTipAnchorRel = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("Anchor0")
							end,
						},		
						TopToolTip = {
							order = 24,
							type = "toggle",							
							name = "Show All Tooltips Above Map",
							width = "full",
							desc = "When enabled, makes sure the map tooltips are always on the top layer.",
							get = function()
								return Nx.db.profile.Map.TopTooltip
							end,
							set = function()
								Nx.db.profile.Map.TopTooltip = not Nx.db.profile.Map.TopTooltip								
							end,				
						},				
						showTitleName = {
							order = 25,
							type = "toggle",							
							name = "Show Map Name",							
							desc = "When enabled, shows current map zone name in the titlebar.",
							get = function()
								return Nx.db.profile.Map.ShowTitleName
							end,
							set = function()
								Nx.db.profile.Map.ShowTitleName = not Nx.db.profile.Map.ShowTitleName
							end,				
						},
						showTitleXY = {
							order = 26,
							type = "toggle",							
							name = "Show Coordinates",							
							desc = "When enabled, Shows your current coordinates in the titlebar.",
							get = function()
								return Nx.db.profile.Map.ShowTitleXY
							end,
							set = function()
								Nx.db.profile.Map.ShowTitleXY = not Nx.db.profile.Map.ShowTitleXY
							end,				
						},
						showTitleSpeed = {
							order = 27,
							type = "toggle",							
							name = "Show Speed",							
							desc = "When enabled, Shows your current movement speed in the titlebar.",
							get = function()
								return Nx.db.profile.Map.ShowTitleSpeed
							end,
							set = function()
								Nx.db.profile.Map.ShowTitleSpeed = not Nx.db.profile.Map.ShowTitleSpeed
							end,				
						},
						showTitle2 = {
							order = 28,
							type = "toggle",							
							name = "Show Second Title Line",
							width = "full",
							desc = "When enabled, Shows a second line of info in the titlebar with PVP & subzone info. (REQUIRES RELOAD)",
							get = function()
								return Nx.db.profile.Map.ShowTitle2
							end,
							set = function()
								Nx.db.profile.Map.ShowTitle2 = not Nx.db.profile.Map.ShowTitle2
								Nx.Opts.NXCmdReload()
							end,				
						},						
						spacer5 = {
							order = 29,
							type = "description",
							name = "\n",
						},									
						showPOI = {
							order = 30,
							type = "toggle",							
							name = "Show Map POI",
							width = "full",
							desc = "When enabled, shows Points of Interest on the map.",
							get = function()
								return Nx.db.profile.Map.ShowPOI
							end,
							set = function()
								Nx.db.profile.Map.ShowPOI = not Nx.db.profile.Map.ShowPOI								
							end,				
						},									
						spacer6 = {
							order = 31,
							type = "description",
							name = "\n",
						},															
						plyrArrowSize = {
							order = 32,
							type = "range",							
							name = "Player Arrow Size",							
							width = "double",
							desc = "Sets the size of the player arrow on the map",
							min = 10,
							max = 100,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Map.PlyrArrowSize
							end,
							set = function(info,value)
								Nx.db.profile.Map.PlyrArrowSize = value
							end,				
						},		
						iconScaleMin = {
							order = 33,
							type = "range",	
							width = "double",							
							name = "Icon Scale Min",							
							desc = "Sets the smallest size for icons on the map while zooming (-1 disabled any size changes)",
							min = -1,
							max = 50,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Map.IconScaleMin
							end,
							set = function(info,value)
								Nx.db.profile.Map.IconScaleMin = value
							end,				
						},		
						mapLineThick = {
							order = 34,
							type = "range",							
							width = "double",
							name = "Map Health Bar Thickness",							
							desc = "Sets the thickness of the health bar (0 disables)",
							min = 0,
							max = 10,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Map.LineThick
							end,
							set = function(info,value)
								Nx.db.profile.Map.LineThick = value
							end,				
						},		
						zoneDrawCnt = {
							order = 35,
							type = "range",							
							width = "double",
							name = "Maximum Zones To Draw At Once",							
							desc = "Sets the number of zones you can display at once on the map",
							min = 1,
							max = 20,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Map.ZoneDrawCnt
							end,
							set = function(info,value)
								Nx.db.profile.Map.ZoneDrawCnt = value
							end,				
						},						
						detailSize = {
							order = 36,
							type = "range",							
							name = "Detail Graphics Visible Area",							
							width = "double",
							desc = "Sets the area size available when zoomed into satelite mode on the map (REQUIRES RELOAD)",
							min = 2,
							max = 40,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Map.DetailSize
							end,
							set = function(info,value)
								Nx.db.profile.Map.DetailSize = value
								Nx.Opts.NXCmdReload()								
							end,				
						},					
						spacer7 = {
							order = 37,
							type = "description",
							name = "\n",
						},			
						header = {
							order	= 38,
							type	= "header",
							name	= "Map Mouse Button Binds",
						},						
						ButLAlt = {
							order = 39,
							type	= "select",
							name	= "           Alt Left Click",
							desc	= "Sets the action performed when left clicking holding ALT",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButLAlt) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButLAlt = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},		
						ButLCtrl = {
							order = 40,
							type	= "select",
							name	= "           Ctrl Left Click",
							desc	= "Sets the action performed when left clicking holding CTRL",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButLCtrl) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButLCtrl = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButM = {
							order = 41,
							type	= "select",
							name	= "           Middle Click",
							desc	= "Sets the action performed when clicking your middle mouse button",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButM) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButM = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButMAlt = {
							order = 42,
							type	= "select",
							name	= "           Alt Middle Click",
							desc	= "Sets the action performed when middle clicking holding ALT",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButMAlt) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButMAlt = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButMCtrl = {
							order = 43,
							type	= "select",
							name	= "           Ctrl Left Click",
							desc	= "Sets the action performed when middle clicking holding CTRL",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButMCtrl) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButMCtrl = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButR = {
							order = 44,
							type	= "select",
							name	= "           Right Click",
							desc	= "Sets the action performed when right clicking the map",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButR) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButR = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButRAlt = {
							order = 45,
							type	= "select",
							name	= "           Alt Right Click",
							desc	= "Sets the action performed when Right clicking holding ALT",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButRAlt) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButRAlt = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
						ButRCtrl = {
							order = 46,
							type	= "select",
							name	= "           Ctrl Right Click",
							desc	= "Sets the action performed when right clicking holding CTRL",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.ButRCtrl) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.ButRCtrl = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},		
						But4 = {
							order = 47,
							type	= "select",
							name	= "           Button 4 Click",
							desc	= "Sets the action performed when clicking mouse button 4",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.But4) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.But4 = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},		
						But4Alt = {
							order = 48,
							type	= "select",
							name	= "           Alt Button 4 Click",
							desc	= "Sets the action performed when pressing mouse 4 while holding ALT",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.But4Alt) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.But4Alt = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},		
						But4Ctrl = {
							order = 49,
							type	= "select",
							name	= "           Ctrl Button 4 Click",
							desc	= "Sets the action performed when clicking 4th mouse button holding CTRL",
							get	= function()
								local vals = Nx.Opts:CalcChoices("MapFunc")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.Map.But4Ctrl) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("MapFunc")
								Nx.db.profile.Map.But4Ctrl = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("MapFunc")
							end,
						},								
					},
				},
				miniMap = {
					type = "group",
					name = "MiniMap Options",
					order = 2,
					args = {
						MMOwn = {
							order = 1,
							type = "toggle",
							width = "full",
							name = "Combine Blizzard Minimap with Carbonite Minimap",
							desc = "When enabled, Carbonite will combine the minimap into itself to create a more functional minimap for you (RELOAD REQUIRED)",
							get = function()
								return Nx.db.profile.MiniMap.Own
							end,
							set = function()
								Nx.db.profile.MiniMap.Own = not Nx.db.profile.MiniMap.Own
								Nx.Opts:NXCmdMMOwnChange(_,Nx.db.profile.MiniMap.Own)								
							end,				
						},							  						  
						spacer1 = {
							order = 3,
							type = "description",
							name = "\n",
						},			
						MMSquare = {
							order = 4,
							type = "toggle",
							width = "full",
							name = "Minimap Shape is Square",
							desc = "When enabled, Carbonite will change the minimap shape from circle to square",
							get = function()
								return Nx.db.profile.MiniMap.Square
							end,
							set = function()
								Nx.db.profile.MiniMap.Square = not Nx.db.profile.MiniMap.Square								
							end,				
						},
						MMAboveIcons = {
							order = 5,
							type = "toggle",
							width = "full",
							name = "Minimap is drawn above icons",
							desc = "When enabled, Carbonite will draw the minimap above your map icons, you can use the CTRL key on your keyboard to toggle which layer is top",
							get = function()
								return Nx.db.profile.MiniMap.AboveIcons
							end,
							set = function()
								Nx.db.profile.MiniMap.AboveIcons = not Nx.db.profile.MiniMap.AboveIcons								
							end,				
						},						
						MMIconScale = {
							order = 6,
							type = "range",							
							name = "Minimap Icon Scale",														
							desc = "Sets the scale of the icons drawn in the minimap portion of the map",
							min = .1,
							max = 10,
							step = .1,
							bigStep = .1,
							get = function()
								return Nx.db.profile.MiniMap.IScale
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.IScale = value
							end,				
						},					
						MMDockIScale = {
							order = 7,
							type = "range",							
							name = "Docked Minimap Icon Scale",													
							desc = "Sets the scale of the icons drawn in the minimap portion of the map while docked",
							min = .1,
							max = 10,
							step = .1,
							bigStep = .1,
							get = function()
								return Nx.db.profile.MiniMap.DockIScale
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.DockIScale = value
							end,				
						},					
						
						MMGlow = {
							order = 8,
							type = "range",							
							name = "Minimap Node Glow Delay",														
							desc = "Sets the delay (in seconds) between the glow change on gathering nodes (0 is off)",
							min = 0,
							max = 4,
							step = .1,
							bigStep = .1,
							get = function()
								return Nx.db.profile.MiniMap.NodeGD
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.NodeGD = value
								Nx.Opts:NXCmdMMChange()
							end,				
						},						
						spacer2 = {
							order = 9,
							type = "description",
							name = "\n",
						},									
						MMDockAlways = {
							order = 10,
							type = "toggle",
							width = "full",
							name = "Always dock minimap",
							desc = "When enabled, The minimap will always dock into the corner of the carbonite map.",
							get = function()
								return Nx.db.profile.MiniMap.DockAlways
							end,
							set = function()
								Nx.db.profile.MiniMap.DockAlways = not Nx.db.profile.MiniMap.DockAlways								
							end,				
						},				
						MMDockIndoors = {
							order = 11,
							type = "toggle",
							width = "full",
							name = "Dock The Minimap when indoors",
							desc = "When enabled, The minimap will dock if wow says your indoors",
							get = function()
								return Nx.db.profile.MiniMap.DockIndoors
							end,
							set = function()
								Nx.db.profile.MiniMap.DockIndoors = not Nx.db.profile.MiniMap.DockIndoors
							end,				
						},												
						MMDockBugged = {
							order = 12,
							type = "toggle",
							width = "full",
							name = "Dock The Minimap in Bugged Zones",
							desc = "When enabled, The minimap will dock if your in a known transparency bug zone (Pitch black minimap)",
							get = function()
								return Nx.db.profile.MiniMap.DockBugged
							end,
							set = function()
								Nx.db.profile.MiniMap.DockBugged = not Nx.db.profile.MiniMap.DockBugged
							end,				
						},						
						MMDockOnMax = {
							order = 13,
							type = "toggle",
							width = "full",
							name = "Dock The Minimap when Fullsized",
							desc = "When enabled, The minimap will dock if your viewing the fullsized map.",
							get = function()
								return Nx.db.profile.MiniMap.DockOnMax
							end,
							set = function()
								Nx.db.profile.MiniMap.DockOnMax = not Nx.db.profile.MiniMap.DockOnMax								
							end,				
						},		
						MMHideOnMax = {
							order = 14,
							type = "toggle",
							width = "full",
							name = "Hide The Minimap when Fullsized",
							desc = "When enabled, The minimap will hide if your viewing the fullsized map.",
							get = function()
								return Nx.db.profile.MiniMap.HideOnMax
							end,
							set = function()
								Nx.db.profile.MiniMap.HideOnMax = not Nx.db.profile.MiniMap.HideOnMax
							end,				
						},						
						
						MMDockSquare = {
							order = 15,
							type = "toggle",
							width = "full",
							name = "Minimap Docked Shape is Square",
							desc = "When enabled, The minimap will be square shaped while docked.",
							get = function()
								return Nx.db.profile.MiniMap.DockSquare
							end,
							set = function()
								Nx.db.profile.MiniMap.DockSquare = not Nx.db.profile.MiniMap.DockSquare
							end,				
						},						
						MMDockBottom = {
							order = 16,
							type = "toggle",
							width = "full",
							name = "Minimap Docks Bottom",
							desc = "When enabled, The minimap will dock to the bottom of the map.",
							get = function()
								return Nx.db.profile.MiniMap.DockBottom
							end,
							set = function()
								Nx.db.profile.MiniMap.DockBottom = not Nx.db.profile.MiniMap.DockBottom
							end,				
						},						
						MMDockRight = {
							order = 17,
							type = "toggle",
							width = "full",
							name = "Minimap Docks Right",
							desc = "When enabled, The minimap will dock to the right side of the map.",
							get = function()
								return Nx.db.profile.MiniMap.DockRight
							end,
							set = function()
								Nx.db.profile.MiniMap.DockRight = not Nx.db.profile.MiniMap.DockRight
							end,				
						},										
						MMDXO = {
							order = 18,
							type = "range",							
							name = "Minimap Dock X-Offset",														
							desc = "Sets the X - offset the minimap draws while docked",
							min = 0,
							max = 200,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.MiniMap.DXO
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.DXO = value
							end,				
						},					
						MMDYO = {
							order = 19,
							type = "range",							
							name = "Minimap Dock Y-Offset",														
							desc = "Sets the Y - offset the minimap draws while docked",
							min = 0,
							max = 200,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.MiniMap.DYO
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.DYO = value
							end,				
						},
						MMIndoorTogFullSize = {
							order = 20,
							type = "toggle",
							width = "full",
							name = "Minimap goes full sized Indoors",
							desc = "When enabled, The minimap will expand to full map window size when indoors.",
							get = function()
								return Nx.db.profile.MiniMap.IndoorTogFullSize
							end,
							set = function()
								Nx.db.profile.MiniMap.IndoorTogFullSize = not Nx.db.profile.MiniMap.IndoorTogFullSize
							end,				
						},
						MMDockBuggedTogFullSize = {
							order = 21,
							type = "toggle",
							width = "full",
							name = "Minimap goes full sized in bugged areas",
							desc = "When enabled, The minimap will expand to full map window size in known transparency bugged areas.",
							get = function()
								return Nx.db.profile.MiniMap.BuggedTogFullSize
							end,
							set = function()
								Nx.db.profile.MiniMap.BuggedTogFullSize = not Nx.db.profile.MiniMap.BuggedTogFullSize
							end,				
						},
						MMDockInstanceTogFullSize = {
							order = 22,
							type = "toggle",
							width = "full",
							name = "Minimap goes full sized in instances",
							desc = "When enabled, The minimap expand to full map window size when you enter a raid/instance.",
							get = function()
								return Nx.db.profile.MiniMap.InstanceTogFullSize
							end,
							set = function()
								Nx.db.profile.MiniMap.InstanceTogFullSize = not Nx.db.profile.MiniMap.InstanceTogFullSize
							end,				
						},
						MMMoveCapBars = {
							order = 23,
							type = "toggle",
							width = "full",
							name = "Move capture bars under map",
							desc = "When enabled, Objective capture bars will be drawn under the map.",
							get = function()
								return Nx.db.profile.MiniMap.MoveCapBars
							end,
							set = function()
								Nx.db.profile.MiniMap.MoveCapBars = not Nx.db.profile.MiniMap.MoveCapBars
							end,				
						},
						MMShowOldNameplate = {
							order = 24,
							type = "toggle",
							width = "full",
							name = "Show Old Nameplates",
							desc = "When enabled, The minimap will display the old nameplates above the map.",
							get = function()
								return Nx.db.profile.MiniMap.ShowOldNameplate
							end,
							set = function()
								Nx.db.profile.MiniMap.ShowOldNameplate = not Nx.db.profile.MiniMap.ShowOldNameplate
								Nx.Opts:NXCmdMMButUpdate()
							end,				
						},						
					},
				},	
				buttonFrame = {
					type = "group",
					name = "Minimap Button Options",
					order = 3,
					args = {
						MMButOwn = {
							order = 1,
							type = "toggle",
							width = "full",
							name = "Move Minimap Buttons into Carbonite Minimap Frame",
							desc = "When enabled, Carbonite will pull all minimap icons into it's own button frame which can be moved around and minimized as needed (RELOAD REQUIRED)",
							get = function()
								return Nx.db.profile.MiniMap.ButOwn
							end,
							set = function()
								Nx.db.profile.MiniMap.ButOwn = not Nx.db.profile.MiniMap.ButOwn
								Nx.Opts:NXCmdReload()
							end,				
						},			
						spacer1 = {
							order = 3,
							type = "description",
							name = "\n",
						},
						MMButHide = {
							order = 4,
							type = "toggle",
							width = "full",
							name = "Hide Minimap Button Window",
							desc = "Hides the button frame holding minimap icons",
							get = function()
								return Nx.db.profile.MiniMap.ButHide
							end,
							set = function()
								Nx.db.profile.MiniMap.ButHide = not Nx.db.profile.MiniMap.ButHide								
								Nx.Window:SetAttribute("NxMapDock","H",Nx.db.profile.MiniMap.ButHide)
							end,				
						},
						MMButLock = {
							order = 5,
							type = "toggle",
							width = "full",
							name = "Lock Minimap Button Window",
							desc = "Locks the button frame holding minimap icons",
							get = function()
								return Nx.db.profile.MiniMap.ButLock
							end,
							set = function()
								Nx.db.profile.MiniMap.ButLock = not Nx.db.profile.MiniMap.ButLock
								Nx.Window:SetAttribute("NxMapDock","L",Nx.db.profile.MiniMap.ButLock)
							end,				
						},
						spacer2 = {
							order = 6,
							type = "description",
							name = "\n",
						},		
						MMButColumns = {
							order = 7,
							type = "range",							
							name = "# Of Minimap Button Columns",													
							width = "double",
							desc = "Sets the number of columns to be used for minimap icons",
							min = 1,
							max = 10,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.MiniMap.ButColumns
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.ButColumns = value
							end,				
						},					
						MMButSpacing = {
							order = 8,
							type = "range",							
							name = "Minimap Button Spacing",	
							width = "double",
							desc = "Sets the spacing between buttons in the minimap button bar",
							min = 25,
							max = 90,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.MiniMap.ButSpacing
							end,
							set = function(info,value)
								Nx.db.profile.MiniMap.ButSpacing = value
							end,				
						},				
						ButCorner = {
							order = 9,
							type	= "select",
							name	= "Corner For First Button",
							desc	= "Sets the anchor point in multi-column setups for first minimap button",
							get	= function()
								local vals = Nx.Opts:CalcChoices("Corner")
								for a,b in pairs(vals) do
								  if (b == Nx.db.profile.MiniMap.ButCorner) then
									 return a
								  end
								end
								return ""
							end,
							set	= function(info, name)
								local vals = Nx.Opts:CalcChoices("Corner")
								Nx.db.profile.MiniMap.ButCorner = vals[name]								
							end,
							values	= function()
								return Nx.Opts:CalcChoices("Corner")
							end,
						},						
						spacer3 = {
							order = 10,
							type = "description",
							name = "\n",
						},		
						MMButShowCarb = {
							order = 11,
							type = "toggle",
							width = "full",
							name = "Enable Carbonite Minimap Button",
							desc = "Shows the carbonite minimap button in the button panel",
							get = function()
								return Nx.db.profile.MiniMap.ButShowCarb
							end,
							set = function()
								Nx.db.profile.MiniMap.ButShowCarb = not Nx.db.profile.MiniMap.ButShowCarb
								Nx.Opts:NXCmdMMButUpdate()
							end,
						},
						MMButShowCalendar = {
							order = 12,
							type = "toggle",
							width = "full",
							name = "Enable Calendar Minimap Button",
							desc = "Shows the calendar minimap button in the button panel",
							get = function()
								return Nx.db.profile.MiniMap.ButShowCalendar
							end,
							set = function()
								Nx.db.profile.MiniMap.ButShowCalendar = not Nx.db.profile.MiniMap.ButShowCalendar
								Nx.Opts:NXCmdMMButUpdate()
							end,
						},
						MMButShowClock = {
							order = 13,
							type = "toggle",
							width = "full",
							name = "Enable Clock Minimap Button",
							desc = "Shows the clock minimap button in the button panel",
							get = function()
								return Nx.db.profile.MiniMap.ButShowClock
							end,
							set = function()
								Nx.db.profile.MiniMap.ButShowClock = not Nx.db.profile.MiniMap.ButShowClock
								Nx.Opts:NXCmdMMButUpdate()
							end,
						},
						MMButShowWorldMap = {
							order = 14,
							type = "toggle",
							width = "full",
							name = "Enable World Map Minimap Button",
							desc = "Shows the world map minimap button in the button panel",
							get = function()
								return Nx.db.profile.MiniMap.ButShowWorldMap
							end,
							set = function()
								Nx.db.profile.MiniMap.ButShowWorldMap = not Nx.db.profile.MiniMap.ButShowWorldMap
								Nx.Opts:NXCmdMMButUpdate()
							end,
						},						
					},	
				},
			},
		}
	end
	return map
end

local font
local function fontConfig()
	if not font then	
		font = {
			type = "group",
			name = "Font Options",
			args = {	
				SmallFont = {
					order = 1,
					type	= "select",
					name	= "Small Font",
					desc	= "Sets the font to be used for small text",
					get	= function()
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Font.Small) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						Nx.db.profile.Font.Small = vals[name]						
						Nx.Opts:NXCmdFontChange()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("FontFace","Get")
					end,					
				},
				SmallFontSize = {
					order = 2,
					type = "range",							
					name = "Small Font Size",						
					desc = "Sets the size of the small font",
					min = 6,
					max = 14,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.SmallSize
					end,
					set = function(info,value)
						Nx.db.profile.Font.SmallSize = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},		
				SmallFontSpacing = {
					order = 3,
					type = "range",							
					name = "Small Font Spacing",						
					desc = "Sets the spacing of the small font",
					min = -10,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.SmallSpacing
					end,
					set = function(info,value)
						Nx.db.profile.Font.SmallSpacing = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},		
				MediumFont = {
					order = 4,
					type	= "select",
					name	= "Normal Font",
					desc	= "Sets the font to be used for normal text",
					get	= function()
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Font.Medium) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						Nx.db.profile.Font.Medium = vals[name]	
						Nx.Opts:NXCmdFontChange()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("FontFace","Get")
					end,					
				},
				MediumFontSize = {
					order = 5,
					type = "range",							
					name = "Medium Font Size",						
					desc = "Sets the size of the normal font",
					min = 6,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MediumSize
					end,
					set = function(info,value)
						Nx.db.profile.Font.MediumSize = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},		
				MediumFontSpacing = {
					order = 6,
					type = "range",							
					name = "Medium Font Spacing",						
					desc = "Sets the spacing of the normal font",
					min = -10,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MediumSpacing
					end,
					set = function(info,value)
						Nx.db.profile.Font.MediumSpacing = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},					
				MapFont = {
					order = 7,
					type	= "select",
					name	= "Map Font",
					desc	= "Sets the font to be used on the map",
					get	= function()
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Font.Map) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						Nx.db.profile.Font.Map = vals[name]	
						Nx.Opts:NXCmdFontChange()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("FontFace","Get")
					end,					
				},
				MapFontSize = {
					order = 8,
					type = "range",							
					name = "Map Font Size",						
					desc = "Sets the size of the map font",
					min = 6,
					max = 14,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MapSize
					end,
					set = function(info,value)
						Nx.db.profile.Font.MapSize = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},		
				MapFontSpacing = {
					order = 9,
					type = "range",							
					name = "Map Font Spacing",						
					desc = "Sets the spacing of the map font",
					min = -10,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MapSpacing
					end,
					set = function(info,value)
						Nx.db.profile.Font.MapSpacing = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},									
				spacer = {
					type = "description",
					name = "",
					order = 10,
				},
				MapLocFont = {
					order = 11,
					type	= "select",
					name	= "Map Location Tip Font",
					desc	= "Sets the font to be used on the map tooltip",
					get	= function()
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Font.MapLoc) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						Nx.db.profile.Font.MapLoc = vals[name]	
						Nx.Opts:NXCmdFontChange()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("FontFace","Get")
					end,					
				},
				MapLocFontSize = {
					order = 12,
					type = "range",							
					name = "Map Location Tip Font Size",						
					desc = "Sets the size of the map tooltip font",
					min = 6,
					max = 14,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MapLocSize
					end,
					set = function(info,value)
						Nx.db.profile.Font.MapLocSize = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},
				MapLocFontSpacing = {
					order = 13,
					type = "range",							
					name = "Map Loc Font Spacing",						
					desc = "Sets the spacing of the map loc font",
					min = -10,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MapLocSpacing
					end,
					set = function(info,value)
						Nx.db.profile.Font.MapLocSpacing = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},									
				spacer2 = {
					type = "description",
					name = "",
					order = 14,
				},				
				MenuFont = {
					order = 15,
					type	= "select",
					name	= "Menu Font",
					desc	= "Sets the font to be used on the memus",
					get	= function()
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Font.Menu) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("FontFace","Get")
						Nx.db.profile.Font.Menu = vals[name]	
						Nx.Opts:NXCmdFontChange()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("FontFace","Get")
					end,					
				},
				MenuFontSize = {
					order = 16,
					type = "range",							
					name = "Menu Font Size",						
					desc = "Sets the size of the menu font",
					min = 6,
					max = 14,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MenuSize
					end,
					set = function(info,value)
						Nx.db.profile.Font.MenuSize = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},				
				MenuFontSpacing = {
					order = 17,
					type = "range",							
					name = "Menu Font Spacing",						
					desc = "Sets the spacing of the menu font",
					min = -10,
					max = 20,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Font.MenuSpacing
					end,
					set = function(info,value)
						Nx.db.profile.Font.MenuSpacing = value
						Nx.Opts:NXCmdFontChange()
					end,				
				},									
			},
		}
	end
	return font
end

local guidegather
local function guidegatherConfig ()
	if not guidegather then
		guidegather = {
			type = "group",
			name = "Guide Options",
			childGroups	= "tab",
			args = {
				guideOpts = {
					type = "group",
					name = "Guide Options",
					order = 1,
					args = {
						GuideVendorVMax = {
							order = 1,
							type = "range",							
							name = "Max Vendors To Record",						
							desc = "Sets the number of vendors you visit that will be held in memory for recall in the guide.",
							min = 0,
							max = 100,
							step = 1,
							bigStep = 1,
							get = function()
								return Nx.db.profile.Guide.VendorVMax
							end,
							set = function(info,value)
								Nx.db.profile.Guide.VendorVMax = value								
							end,				
						},						
					},
				},
				gatherOpts = {
					type = "group",
					name = "Gather Options",
					order = 2,
					args = {
						gatherEnable = {						
							order = 1,
							type = "toggle",
							width = "full",
							name = "Enable Saving Gathered Nodes",
							desc = "When enabled, will record all the resource nodes you gather",
							get = function()
								return Nx.db.profile.Guide.GatherEnabled
							end,
							set = function()
								Nx.db.profile.Guide.GatherEnabled = not Nx.db.profile.Guide.GatherEnabled								
							end,							
						},
						spacer1 = {
							order = 2,
							type = "description",
							name = "\n",
						},			
						CmdDelHerb = {
							order = 3,
							type = "execute",
							width = "full",
							name = "Delete Herbalism Gather Locations",
							func = function ()
								Nx.Opts:NXCmdDeleteHerb()
							end,
						},
						CmdDelMine = {
							order = 4,
							type = "execute",
							width = "full",
							name = "Delete Mining Gather Locations",
							func = function ()
								Nx.Opts:NXCmdDeleteMine()
							end,
						},						
						CmdDelMisc = {
							order = 5,
							type = "execute",
							width = "full",
							name = "Delete Misc Gather Locations",
							func = function ()
								Nx.Opts:NXCmdDeleteMisc()
							end,
						},						
						spacer2 = {
							order = 2,
							type = "description",
							name = "\n",
						},								
						CmdImportHerb = {
							order = 7,
							type = "execute",
							width = "full",
							name = "Import Herbs From GatherMate2_Data",
							func = function ()
								Nx.Opts:NXCmdImportCarbHerb()
							end,
						},						
						CmdImportMine = {
							order = 8,
							type = "execute",
							width = "full",
							name = "Import Mines From GatherMate2_Data",
							func = function ()
								Nx.Opts:NXCmdImportCarbMine()
							end,
						},						
						CmdImportMisc = {
							order = 9,
							type = "execute",
							width = "full",
							name = "Import Misc From GatherMate2_Data",
							func = function ()
								Nx.Opts:NXCmdImportCarbMisc()
							end,
						},												
					},					
				},
				HerbDisp = {
					type = "group",
					name = "Herbalism",
					order = 3,
					args = {
						anclich = {						
							order = 1,
							type = "toggle",
							width = "full",
							name = "Anchient Lichen",
							desc = "Display Anchient Lichen Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[1] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[1] = not Nx.db.profile.Guide.ShowHerbs[1]								
							end,							
						},
						arthastear = {						
							order = 2,
							type = "toggle",
							width = "full",
							name = "Arthas Tears",
							desc = "Display Arthas Tear Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[2] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[2] = not Nx.db.profile.Guide.ShowHerbs[2]								
							end,							
						},						
						blacklotus = {						
							order = 3,
							type = "toggle",
							width = "full",
							name = "Black Lotus",
							desc = "Display Black Lotus Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[3] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[3] = not Nx.db.profile.Guide.ShowHerbs[3]								
							end,							
						},		
						blindweed = {						
							order = 4,
							type = "toggle",
							width = "full",
							name = "Blindweed",
							desc = "Display Blindweed Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[4] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[4] = not Nx.db.profile.Guide.ShowHerbs[4]								
							end,							
						},
						bloodthistle = {						
							order = 5,
							type = "toggle",
							width = "full",
							name = "Bloodthistle",
							desc = "Display Bloodthistle Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[5] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[5] = not Nx.db.profile.Guide.ShowHerbs[5]								
							end,							
						},
						briarthorn = {						
							order = 6,
							type = "toggle",
							width = "full",
							name = "Briarthorn",
							desc = "Display Briarthorn Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[6] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[6] = not Nx.db.profile.Guide.ShowHerbs[6]
							end,							
						},						
						bruiseweed = {						
							order = 7,
							type = "toggle",
							width = "full",
							name = "Bruiseweed",
							desc = "Display Bruiseweed Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[7] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[7] = not Nx.db.profile.Guide.ShowHerbs[7]								
							end,							
						},						
						dreamfoil = {						
							order = 8,
							type = "toggle",
							width = "full",
							name = "Dreamfoil",
							desc = "Display Dreamfoil Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[8] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[8] = not Nx.db.profile.Guide.ShowHerbs[8]								
							end,							
						},						
						dreamglory = {						
							order = 9,
							type = "toggle",
							width = "full",
							name = "Dreaming Glory",
							desc = "Display Dreaming Glory Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[9] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[9] = not Nx.db.profile.Guide.ShowHerbs[9]								
							end,							
						},						
						earthroot = {						
							order = 10,
							type = "toggle",
							width = "full",
							name = "Earthroot",
							desc = "Display Earthroot Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[10] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[10] = not Nx.db.profile.Guide.ShowHerbs[10]								
							end,							
						},						
						fadeleaf = {						
							order = 11,
							type = "toggle",
							width = "full",
							name = "Fadeleaf",
							desc = "Display Fadeleaf Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[11] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[11] = not Nx.db.profile.Guide.ShowHerbs[11]								
							end,							
						},						
						felweed = {						
							order = 12,
							type = "toggle",
							width = "full",
							name = "Felweed",
							desc = "Display Felweed Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[12] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[12] = not Nx.db.profile.Guide.ShowHerbs[12]								
							end,							
						},						
						firebloom = {						
							order = 13,
							type = "toggle",
							width = "full",
							name = "Firebloom",
							desc = "Display Firebloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[13] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[13] = not Nx.db.profile.Guide.ShowHerbs[13]								
							end,							
						},						
						flamecap = {						
							order = 14,
							type = "toggle",
							width = "full",
							name = "Flame Cap",
							desc = "Display Flame Cap Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[14] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[14] = not Nx.db.profile.Guide.ShowHerbs[14]								
							end,							
						},						
						ghostmush = {						
							order = 15,
							type = "toggle",
							width = "full",
							name = "Ghost Mushroom",
							desc = "Display Ghost Mushroom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[15] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[15] = not Nx.db.profile.Guide.ShowHerbs[15]								
							end,							
						},						
						goldsansam = {						
							order = 16,
							type = "toggle",
							width = "full",
							name = "Golden Sansam",
							desc = "Display Sansam Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[16] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[16] = not Nx.db.profile.Guide.ShowHerbs[16]								
							end,							
						},						
						goldthorn = {						
							order = 17,
							type = "toggle",
							width = "full",
							name = "Goldthorn",
							desc = "Display Goldthorn Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[17] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[17] = not Nx.db.profile.Guide.ShowHerbs[17]								
							end,							
						},						
						gravemoss = {						
							order = 18,
							type = "toggle",
							width = "full",
							name = "Grave Moss",
							desc = "Display Grave Moss Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[18] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[18] = not Nx.db.profile.Guide.ShowHerbs[18]								
							end,							
						},						
						gromsblood = {						
							order = 19,
							type = "toggle",
							width = "full",
							name = "Gromsblood",
							desc = "Display Gromsblood Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[19] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[19] = not Nx.db.profile.Guide.ShowHerbs[19]								
							end,							
						},						
						icecap = {						
							order = 20,
							type = "toggle",
							width = "full",
							name = "Icecap",
							desc = "Display Icecap Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[20] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[20] = not Nx.db.profile.Guide.ShowHerbs[20]								
							end,							
						},						
						khadgar = {						
							order = 21,
							type = "toggle",
							width = "full",
							name = "Khadgars Whisker",
							desc = "Display Khadgars Whisker Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[21] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[21] = not Nx.db.profile.Guide.ShowHerbs[21]								
							end,							
						},						
						kingsblood = {						
							order = 22,
							type = "toggle",
							width = "full",
							name = "Kingsblood",
							desc = "Display Kingsblood Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[22] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[22] = not Nx.db.profile.Guide.ShowHerbs[22]								
							end,							
						},												
						liferoot = {						
							order = 23,
							type = "toggle",
							width = "full",
							name = "Liferoot",
							desc = "Display Liferoot Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[23] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[23] = not Nx.db.profile.Guide.ShowHerbs[23]								
							end,							
						},												
						mageroyal = {						
							order = 24,
							type = "toggle",
							width = "full",
							name = "Mageroyal",
							desc = "Display Mageroyal Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[24] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[24] = not Nx.db.profile.Guide.ShowHerbs[24]								
							end,							
						},												
						manathistle = {						
							order = 25,
							type = "toggle",
							width = "full",
							name = "Mana Thistle",
							desc = "Display Mana Thistle Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[25] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[25] = not Nx.db.profile.Guide.ShowHerbs[25]								
							end,							
						},												
						mountainsilver = {						
							order = 26,
							type = "toggle",
							width = "full",
							name = "Mountain Silversage",
							desc = "Display Mountain Silversage Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[26] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[26] = not Nx.db.profile.Guide.ShowHerbs[26]								
							end,							
						},												
						netherbloom = {						
							order = 27,
							type = "toggle",
							width = "full",
							name = "Netherbloom",
							desc = "Display Netherbloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[27] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[27] = not Nx.db.profile.Guide.ShowHerbs[27]								
							end,							
						},												
						netherdust = {						
							order = 28,
							type = "toggle",
							width = "full",
							name = "Netherdust Bush",
							desc = "Display Netherdust Bush Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[28] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[28] = not Nx.db.profile.Guide.ShowHerbs[28]								
							end,							
						},
						nightmare = {						
							order = 29,
							type = "toggle",
							width = "full",
							name = "Nightmare Vine",
							desc = "Display Nightmare Vine Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[29] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[29] = not Nx.db.profile.Guide.ShowHerbs[29]								
							end,							
						},						
						peacebloom = {						
							order = 30,
							type = "toggle",
							width = "full",
							name = "Peacebloom",
							desc = "Display Peacebloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[30] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[30] = not Nx.db.profile.Guide.ShowHerbs[30]								
							end,							
						},						
						sorrowmoss = {						
							order = 31,
							type = "toggle",
							width = "full",
							name = "Sorrowmoss",
							desc = "Display Sorrowmoss Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[31] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[31] = not Nx.db.profile.Guide.ShowHerbs[31]								
							end,							
						},						
						purplelotus = {						
							order = 32,
							type = "toggle",
							width = "full",
							name = "Purple Lotus",
							desc = "Display Purple Lotus Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[32] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[32] = not Nx.db.profile.Guide.ShowHerbs[32]								
							end,							
						},						
						ragveil = {						
							order = 33,
							type = "toggle",
							width = "full",
							name = "Ragveil",
							desc = "Display Ragveil Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[33] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[33] = not Nx.db.profile.Guide.ShowHerbs[33]								
							end,							
						},						
						silverleaf = {						
							order = 34,
							type = "toggle",
							width = "full",
							name = "Silverleaf",
							desc = "Display Silverleaf Iron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[34] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[34] = not Nx.db.profile.Guide.ShowHerbs[34]								
							end,							
						},						
						stranglekelp = {						
							order = 35,
							type = "toggle",
							width = "full",
							name = "Stranglekelp",
							desc = "Display Stranglekelp Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[35] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[35] = not Nx.db.profile.Guide.ShowHerbs[35]								
							end,							
						},						
						sungrass = {						
							order = 36,
							type = "toggle",
							width = "full",
							name = "Sungrass",
							desc = "Display Sungrass Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[36] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[36] = not Nx.db.profile.Guide.ShowHerbs[36]								
							end,							
						},						
						terocone = {						
							order = 37,
							type = "toggle",
							width = "full",
							name = "Terocone",
							desc = "Display Terocone Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[37] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[37] = not Nx.db.profile.Guide.ShowHerbs[37]								
							end,							
						},						
						wildsteel = {						
							order = 38,
							type = "toggle",
							width = "full",
							name = "Wild Steelbloom",
							desc = "Display Wild Steelbloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[38] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[38] = not Nx.db.profile.Guide.ShowHerbs[38]								
							end,							
						},						
						dragonsteeth = {						
							order = 39,
							type = "toggle",
							width = "full",
							name = "Dragons Teeth",
							desc = "Display Dragons Teeth Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[39] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[39] = not Nx.db.profile.Guide.ShowHerbs[39]								
							end,							
						},
						glowcap = {						
							order = 40,
							type = "toggle",
							width = "full",
							name = "Glowcap",
							desc = "Display Glowcap Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[40] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[40] = not Nx.db.profile.Guide.ShowHerbs[40]								
							end,							
						},												
						goldclover = {						
							order = 41,
							type = "toggle",
							width = "full",
							name = "Goldclover",
							desc = "Display Goldclover Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[41] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[41] = not Nx.db.profile.Guide.ShowHerbs[41]								
							end,							
						},												
						talandrarose = {						
							order = 42,
							type = "toggle",
							width = "full",
							name = "Talandras Rose",
							desc = "Display Talandras Rose Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[42] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[42] = not Nx.db.profile.Guide.ShowHerbs[42]								
							end,							
						},												
						adderstongue = {						
							order = 43,
							type = "toggle",
							width = "full",
							name = "Adders Tongue",
							desc = "Display Adders Tongue Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[43] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[43] = not Nx.db.profile.Guide.ShowHerbs[43]								
							end,							
						},												
						frozenherb = {						
							order = 44,
							type = "toggle",
							width = "full",
							name = "Frozen Herb",
							desc = "Display Frozen Herb Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[44] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[44] = not Nx.db.profile.Guide.ShowHerbs[44]								
							end,							
						},												
						tigerlily = {						
							order = 45,
							type = "toggle",
							width = "full",
							name = "Tiger Lily",
							desc = "Display Tiger Lily Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[45] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[45] = not Nx.db.profile.Guide.ShowHerbs[45]								
							end,							
						},												
						lichbloom = {						
							order = 46,
							type = "toggle",
							width = "full",
							name = "Lichbloom",
							desc = "Display Lichbloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[46] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[46] = not Nx.db.profile.Guide.ShowHerbs[46]								
							end,							
						},												
						icethorn = {						
							order = 47,
							type = "toggle",
							width = "full",
							name = "Icethorn",
							desc = "Display Icethorn Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[47] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[47] = not Nx.db.profile.Guide.ShowHerbs[47]								
							end,							
						},												
						frostlotus = {						
							order = 48,
							type = "toggle",
							width = "full",
							name = "Frost Lotus",
							desc = "Display Frost Lotus Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[48] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[48] = not Nx.db.profile.Guide.ShowHerbs[48]								
							end,							
						},												
						firethorn = {						
							order = 49,
							type = "toggle",
							width = "full",
							name = "Firethorn",
							desc = "Display Firethorn Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[49] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[49] = not Nx.db.profile.Guide.ShowHerbs[49]								
							end,							
						},												
						azsharaveil = {						
							order = 50,
							type = "toggle",
							width = "full",
							name = "Azsharas Veil",
							desc = "Display Azsharas Veil Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[50] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[50] = not Nx.db.profile.Guide.ShowHerbs[50]								
							end,							
						},												
						cinderbloom = {						
							order = 51,
							type = "toggle",
							width = "full",
							name = "Cinderbloom",
							desc = "Display Cinderbloom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[51] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[51] = not Nx.db.profile.Guide.ShowHerbs[51]								
							end,							
						},												
						stormvine = {						
							order = 52,
							type = "toggle",
							width = "full",
							name = "Stormvine",
							desc = "Display Stormvine Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[52] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[52] = not Nx.db.profile.Guide.ShowHerbs[52]								
							end,							
						},												
						heartblossom = {						
							order = 53,
							type = "toggle",
							width = "full",
							name = "Heartblossom",
							desc = "Display Heartblossom Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[53] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[53] = not Nx.db.profile.Guide.ShowHerbs[53]								
							end,							
						},												
						whiptail = {						
							order = 54,
							type = "toggle",
							width = "full",
							name = "Whiptail",
							desc = "Display Whiptail Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[54] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[54] = not Nx.db.profile.Guide.ShowHerbs[54]								
							end,							
						},												
						twilightjas = {						
							order = 55,
							type = "toggle",
							width = "full",
							name = "Twilight Jasmine",
							desc = "Display Twilight Jasmine Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[55] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[55] = not Nx.db.profile.Guide.ShowHerbs[55]								
							end,							
						},												
						foolscap = {						
							order = 56,
							type = "toggle",
							width = "full",
							name = "Fools Cap",
							desc = "Display Fools Cap Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[56] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[56] = not Nx.db.profile.Guide.ShowHerbs[56]								
							end,							
						},												
						goldenlotus = {						
							order = 57,
							type = "toggle",
							width = "full",
							name = "Golden Lotus",
							desc = "Display Golden Lotus Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[57] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[57] = not Nx.db.profile.Guide.ShowHerbs[57]								
							end,							
						},												
						greentea = {						
							order = 58,
							type = "toggle",
							width = "full",
							name = "Green Tea Leaf",
							desc = "Display Green Tea Leaf Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[58] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[58] = not Nx.db.profile.Guide.ShowHerbs[58]								
							end,							
						},												
						rainpoppy = {						
							order = 59,
							type = "toggle",
							width = "full",
							name = "Rain Poppy",
							desc = "Display Rain Poppy Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[59] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[59] = not Nx.db.profile.Guide.ShowHerbs[59]								
							end,							
						},												
						shatouched = {						
							order = 60,
							type = "toggle",
							width = "full",
							name = "Sha-Touched Herb",
							desc = "Display Sha-Touched Herb Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[60] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[60] = not Nx.db.profile.Guide.ShowHerbs[60]								
							end,							
						},												
						silkweed = {						
							order = 61,
							type = "toggle",
							width = "full",
							name = "Silkweed",
							desc = "Display Silkweed Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[61] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[61] = not Nx.db.profile.Guide.ShowHerbs[61]								
							end,							
						},												
						snowlily = {						
							order = 62,
							type = "toggle",
							width = "full",
							name = "Snow Lily",
							desc = "Display Snow Lily Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowHerbs[62] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowHerbs[62] = not Nx.db.profile.Guide.ShowHerbs[62]								
							end,							
						},												
					},					
				},
				MinesDisp = {
					type = "group",
					name = "Mining",
					order = 3,
					args = {
						adamantite = {						
							order = 1,
							type = "toggle",
							width = "full",
							name = "Adamantite",
							desc = "Display Adamantite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[1] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[1] = not Nx.db.profile.Guide.ShowMines[1]								
							end,							
						},
						richadamantite = {						
							order = 2,
							type = "toggle",
							width = "full",
							name = "Rich Adamantite",
							desc = "Display Rich Adamantite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[15] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[15] = not Nx.db.profile.Guide.ShowMines[15]								
							end,							
						},						
						gemvein = {						
							order = 3,
							type = "toggle",
							width = "full",
							name = "Gem Vein",
							desc = "Display Gem Vein Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[2] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[2] = not Nx.db.profile.Guide.ShowMines[2]								
							end,							
						},		
						copper = {						
							order = 4,
							type = "toggle",
							width = "full",
							name = "Copper",
							desc = "Display Copper Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[3] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[3] = not Nx.db.profile.Guide.ShowMines[3]								
							end,							
						},
						darkiron = {						
							order = 5,
							type = "toggle",
							width = "full",
							name = "Dark Iron",
							desc = "Display Dark Iron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[4] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[4] = not Nx.db.profile.Guide.ShowMines[4]								
							end,							
						},
						feliron = {						
							order = 6,
							type = "toggle",
							width = "full",
							name = "Feliron",
							desc = "Display Feliron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[5] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[5] = not Nx.db.profile.Guide.ShowMines[5]
							end,							
						},						
						gold = {						
							order = 7,
							type = "toggle",
							width = "full",
							name = "Gold",
							desc = "Display Gold Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[6] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[6] = not Nx.db.profile.Guide.ShowMines[6]								
							end,							
						},						
						incendicite = {						
							order = 8,
							type = "toggle",
							width = "full",
							name = "Incendicite",
							desc = "Display Incendicite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[7] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[7] = not Nx.db.profile.Guide.ShowMines[7]								
							end,							
						},						
						indurium = {						
							order = 9,
							type = "toggle",
							width = "full",
							name = "Indurium",
							desc = "Display Indurium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[8] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[8] = not Nx.db.profile.Guide.ShowMines[8]								
							end,							
						},						
						iron = {						
							order = 10,
							type = "toggle",
							width = "full",
							name = "Iron",
							desc = "Display Iron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[9] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[9] = not Nx.db.profile.Guide.ShowMines[9]								
							end,							
						},						
						korium = {						
							order = 11,
							type = "toggle",
							width = "full",
							name = "Korium",
							desc = "Display Korium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[10] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[10] = not Nx.db.profile.Guide.ShowMines[10]								
							end,							
						},						
						smallobsi = {						
							order = 12,
							type = "toggle",
							width = "full",
							name = "Small Obsidian",
							desc = "Display Small Obsidian Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[18] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[18] = not Nx.db.profile.Guide.ShowMines[18]								
							end,							
						},						
						largeobs = {						
							order = 13,
							type = "toggle",
							width = "full",
							name = "Large Obsidian",
							desc = "Display Large Obsidian Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[11] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[11] = not Nx.db.profile.Guide.ShowMines[11]								
							end,							
						},						
						bloodstone = {						
							order = 14,
							type = "toggle",
							width = "full",
							name = "Bloodstone",
							desc = "Display Bloodstone Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[12] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[12] = not Nx.db.profile.Guide.ShowMines[12]								
							end,							
						},						
						mithril = {						
							order = 15,
							type = "toggle",
							width = "full",
							name = "Mithril",
							desc = "Display Mithril Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[13] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[13] = not Nx.db.profile.Guide.ShowMines[13]								
							end,							
						},						
						nethercite = {						
							order = 16,
							type = "toggle",
							width = "full",
							name = "Nethercite",
							desc = "Display Nethercite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[14] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[14] = not Nx.db.profile.Guide.ShowMines[14]								
							end,							
						},						
						smallthor = {						
							order = 17,
							type = "toggle",
							width = "full",
							name = "Thorium",
							desc = "Display Thorium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[19] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[19] = not Nx.db.profile.Guide.ShowMines[19]								
							end,							
						},						
						richthor = {						
							order = 18,
							type = "toggle",
							width = "full",
							name = "Rich Thorium",
							desc = "Display Rich Thorium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[16] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[16] = not Nx.db.profile.Guide.ShowMines[16]								
							end,							
						},						
						silver = {						
							order = 19,
							type = "toggle",
							width = "full",
							name = "Silver",
							desc = "Display Silver Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[17] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[17] = not Nx.db.profile.Guide.ShowMines[17]								
							end,							
						},						
						tin = {						
							order = 20,
							type = "toggle",
							width = "full",
							name = "Tin",
							desc = "Display Tin Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[20] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[20] = not Nx.db.profile.Guide.ShowMines[20]								
							end,							
						},						
						truesilver = {						
							order = 21,
							type = "toggle",
							width = "full",
							name = "Truesilver",
							desc = "Display Truesilver Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[21] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[21] = not Nx.db.profile.Guide.ShowMines[21]								
							end,							
						},						
						cobalt = {						
							order = 22,
							type = "toggle",
							width = "full",
							name = "Cobalt",
							desc = "Display Cobalt Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[22] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[22] = not Nx.db.profile.Guide.ShowMines[22]								
							end,							
						},												
						richcobalt = {						
							order = 23,
							type = "toggle",
							width = "full",
							name = "Rich Cobalt",
							desc = "Display Rich Cobalt Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[23] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[23] = not Nx.db.profile.Guide.ShowMines[23]								
							end,							
						},												
						saronite = {						
							order = 24,
							type = "toggle",
							width = "full",
							name = "Saronite",
							desc = "Display Saronite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[24] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[24] = not Nx.db.profile.Guide.ShowMines[24]								
							end,							
						},												
						richsaron = {						
							order = 25,
							type = "toggle",
							width = "full",
							name = "Rich Saronite",
							desc = "Display Rich Saronite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[25] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[25] = not Nx.db.profile.Guide.ShowMines[25]								
							end,							
						},												
						titan = {						
							order = 26,
							type = "toggle",
							width = "full",
							name = "Titanium",
							desc = "Display Titanium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[26] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[26] = not Nx.db.profile.Guide.ShowMines[26]								
							end,							
						},												
						obsid = {						
							order = 27,
							type = "toggle",
							width = "full",
							name = "Obsidium",
							desc = "Display Obsidium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[27] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[27] = not Nx.db.profile.Guide.ShowMines[27]								
							end,							
						},												
						richobs = {						
							order = 28,
							type = "toggle",
							width = "full",
							name = "Rich Obsidium",
							desc = "Display Rich Obsidium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[28] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[28] = not Nx.db.profile.Guide.ShowMines[28]								
							end,							
						},
						elemen = {						
							order = 29,
							type = "toggle",
							width = "full",
							name = "Elementium",
							desc = "Display Elementium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[29] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[29] = not Nx.db.profile.Guide.ShowMines[29]								
							end,							
						},						
						richelem = {						
							order = 30,
							type = "toggle",
							width = "full",
							name = "Rich Elementium",
							desc = "Display Rich Elementium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[30] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[30] = not Nx.db.profile.Guide.ShowMines[30]								
							end,							
						},						
						pyrite = {						
							order = 31,
							type = "toggle",
							width = "full",
							name = "Pyrite",
							desc = "Display Pyrite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[31] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[31] = not Nx.db.profile.Guide.ShowMines[31]								
							end,							
						},						
						richpyr = {						
							order = 32,
							type = "toggle",
							width = "full",
							name = "Rich Pyrite",
							desc = "Display Rich Pyrite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[32] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[32] = not Nx.db.profile.Guide.ShowMines[32]								
							end,							
						},						
						ghost = {						
							order = 33,
							type = "toggle",
							width = "full",
							name = "Ghost Iron",
							desc = "Display Ghost Iron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[33] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[33] = not Nx.db.profile.Guide.ShowMines[33]								
							end,							
						},						
						richghost = {						
							order = 34,
							type = "toggle",
							width = "full",
							name = "Rich Ghost Iron",
							desc = "Display Rich Ghost Iron Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[34] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[34] = not Nx.db.profile.Guide.ShowMines[34]								
							end,							
						},						
						kypar = {						
							order = 35,
							type = "toggle",
							width = "full",
							name = "Kyparite",
							desc = "Display Kyparite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[35] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[35] = not Nx.db.profile.Guide.ShowMines[35]								
							end,							
						},						
						richkyp = {						
							order = 36,
							type = "toggle",
							width = "full",
							name = "Rich Kyparite",
							desc = "Display Rich Kyparite Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[36] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[36] = not Nx.db.profile.Guide.ShowMines[36]								
							end,							
						},						
						trill = {						
							order = 37,
							type = "toggle",
							width = "full",
							name = "Trillium",
							desc = "Display Trillium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[37] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[37] = not Nx.db.profile.Guide.ShowMines[37]								
							end,							
						},						
						richtrill = {						
							order = 38,
							type = "toggle",
							width = "full",
							name = "Rich Trillium",
							desc = "Display Rich Trillium Nodes On Map",
							get = function()
								return Nx.db.profile.Guide.ShowMines[38] 
							end,
							set = function()
								Nx.db.profile.Guide.ShowMines[38] = not Nx.db.profile.Guide.ShowMines[38]								
							end,							
						},						
					},					
				},				
			},
		}
	end
	return guidegather
end

local menuoptions

local function menuConfig()
	if not menuoptions then
		menuoptions = {		
			type = "group",
			name = "Menu Options",
			args = {
				menuCenterX = {
					order = 1,
					type = "toggle",
					width = "full",
					name = "Center Menus Horizontally On Cursor",
					desc = "When Enabled, Carbonite Menus Will Be Drawn Horizontally Centered On The Mouse",
					get = function()
						return Nx.db.profile.Menu.CenterH 
					end,
					set = function()
						Nx.db.profile.Menu.CenterH = not Nx.db.profile.Menu.CenterH
					end,				
				},	
				menuCenterY = {
					order = 2,
					type = "toggle",
					width = "full",
					name = "Center Menus Vertically On Cursor",
					desc = "When Enabled, Carbonite Menus Will Be Drawn Vertically Centered On The Mouse",
					get = function()
						return Nx.db.profile.Menu.CenterV 
					end,
					set = function()
						Nx.db.profile.Menu.CenterV = not Nx.db.profile.Menu.CenterV
					end,				
				},						
			},
		}
	end
	return menuoptions
end

local commoptions
local function commConfig()
	if not commoptions then
		commoptions = {
			type = "group",
			name = "Privacy Options",
			args = {
				commLTF = {
					order = 1,
					type = "toggle",
					width = "full",
					name = "Send Position & Level Ups To Friends",
					desc = "When Enabled, Carbonite will send your current location and any levelups you get to your other friends using carbonite",
					get = function()
						return Nx.db.profile.Comm.SendToFriends 
					end,
					set = function()
						Nx.db.profile.Comm.SendToFriends = not Nx.db.profile.Comm.SendToFriends
					end,				
				},	
				commLTG = {
					order = 2,
					type = "toggle",
					width = "full",
					name = "Send Position & Level Ups To Guild",
					desc = "When Enabled, Carbonite will send your current location and any levelups you get to your other guildmates using carbonite",
					get = function()
						return Nx.db.profile.Comm.SendToGuild 
					end,
					set = function()
						Nx.db.profile.Comm.SendToGuild = not Nx.db.profile.Comm.SendToGuild
					end,				
				},		
				commLTZ = {
					order = 3,
					type = "toggle",
					width = "full",
					name = "Send Position & Level Ups To Zone",
					desc = "When Enabled, Carbonite will send your current location and any levelups you get to other carbonite useres in your current zone",
					get = function()
						return Nx.db.profile.Comm.SendToZone 
					end,
					set = function()
						Nx.db.profile.Comm.SendToZone = not Nx.db.profile.Comm.SendToZone
					end,				
				},		
				commShowLevel = {
					order = 4,
					type = "toggle",
					width = "full",
					name = "Show Received Levelups",
					desc = "When Enabled, Carbonite will show a message in chat whenever it gets a notice someone leveled up",
					get = function()
						return Nx.db.profile.Comm.LvlUpShow
					end,
					set = function()
						Nx.db.profile.Comm.LvlUpShow = not Nx.db.profile.Comm.LvlUpShow
					end,				
				},		
				commDisG = {
					order = 5,
					type = "toggle",
					width = "full",
					name = "Enable Global Channel (Used for version checks/notices)",
					desc = "When Enabled, Carbonite will listen on a global channel for versions others are using so it can tell you if an update is available",
					get = function()
						return Nx.db.profile.Comm.Global 
					end,
					set = function()
						Nx.db.profile.Comm.Global = not Nx.db.profile.Comm.Global
					end,				
				},		
				commDisZ = {
					order = 6,
					type = "toggle",
					width = "full",
					name = "Enable Zone Channel (Used for locations of others in your zone)",
					desc = "When Enabled, Carbonite will send your current location and listen for messages from others who are in the same zone as you",
					get = function()
						return Nx.db.profile.Comm.Zone 
					end,
					set = function()
						Nx.db.profile.Comm.Zone = not Nx.db.profile.Comm.Zone
					end,				
				},		
				
			},			
		}
	end
	return commoptions
end

local skinoptions
local function skinConfig()
	if not skinoptions then
		skinoptions = {
			type = "group",
			name = "Skin Options",
			args = {		
				SkinSelect = {
					order = 1,
					type	= "select",
					name	= "Current Skin",
					desc	= "Sets the current skin for carbonite windows",
					get	= function()
						local vals = Nx.Opts:CalcChoices("Skins")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Skin.Name) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("Skins")
						Nx.db.profile.Skin.Name = vals[name]	
						if vals[name] == "Default" then
							Nx.db.profile.Skin.Name = ""
						end
						Nx.Skin:Set(Nx.db.profile.Skin.Name)
					end,
					values	= function()
						return Nx.Opts:CalcChoices("Skins")
					end,					
				},
				skinBord = {
					order = 2,
					type = "color",
					width = "full",
					name = "Border Color of Windows",
					hasAlpha = true,
					get = function()
						local arr = { Nx.Split("|",Nx.db.profile.Skin.WinBdColor) }
						local r = arr[1]
						local g = arr[2]
						local b = arr[3]
						local a = arr[4]
						return r,g,b,a
					end,
					set = function(_,r,g,b,a)
						Nx.db.profile.Skin.WinBdColor = r .. "|" .. g .. "|" .. b .. "|" .. a
						Nx.Skin:Update()
					end,						
				},				
				skinFixBG = {
					order = 3,
					type = "color",
					width = "full",
					name = "Background Color of Fixed Sized Windows",
					hasAlpha = true,
					get = function()
						local arr = { Nx.Split("|",Nx.db.profile.Skin.WinFixedBgColor) }
						local r = arr[1]
						local g = arr[2]
						local b = arr[3]
						local a = arr[4]
						return r,g,b,a
					end,
					set = function(_,r,g,b,a)
						Nx.db.profile.Skin.WinFixedBgColor = r .. "|" .. g .. "|" .. b .. "|" .. a
						Nx.Skin:Update()
					end,						
				},		
				skinSizeBG = {
					order = 4,
					type = "color",
					width = "full",
					name = "Background Color of Resizable Windows",
					hasAlpha = true,
					get = function()
						local arr = { Nx.Split("|",Nx.db.profile.Skin.WinSizedBgColor) }
						local r = arr[1]
						local g = arr[2]
						local b = arr[3]
						local a = arr[4]
						return r,g,b,a
					end,
					set = function(_,r,g,b,a)
						Nx.db.profile.Skin.WinSizedBgColor = r .. "|" .. g .. "|" .. b .. "|" .. a
						Nx.Skin:Update()
					end,						
				},		
				
			},
		}
	end
	return skinoptions
end

local trackoptions

local function trackConfig()
	if not trackoptions then
		trackoptions = {		
			type = "group",
			name = "Tracking Options",
			args = {
				hideHUD = {
					order = 1,
					type = "toggle",
					width = "full",
					name = "Hide Tracking HUD",
					desc = "When Enabled, Carbonite will hide the tracking hud from display",
					get = function()
						return Nx.db.profile.Track.Hide
					end,
					set = function()
						Nx.db.profile.Track.Hide = not Nx.db.profile.Track.Hide
					end,				
				},		
				hideHUDBG = {
					order = 2,
					type = "toggle",
					width = "full",
					name = "Hide Tracking HUD in BG's",
					desc = "When Enabled, Carbonite will hide the tracking hud from display in Battlegrounds",
					get = function()
						return Nx.db.profile.Track.HideInBG
					end,
					set = function()
						Nx.db.profile.Track.HideInBG = not Nx.db.profile.Track.HideInBG
					end,				
				},		
				hideLock = {
					order = 3,
					type = "toggle",
					width = "full",
					name = "Lock Tracking HUD Position",
					desc = "When Enabled, Carbonite will lock the Tracking HUD in position",
					get = function()
						return Nx.db.profile.Track.Lock
					end,
					set = function()
						Nx.db.profile.Track.Lock = not Nx.db.profile.Track.Lock
						Nx.HUD:UpdateOptions()
					end,				
				},		
				TrackArrow = {
					order = 4,
					type	= "select",
					name	= "Tracking HUD Arrow Graphic",
					desc	= "Sets the current arrow to be used in the tracking hud",
					get	= function()
						local vals = Nx.Opts:CalcChoices("HUDAGfx")
						for a,b in pairs(vals) do
						  if (b == Nx.db.profile.Track.AGfx) then
							 return a
						  end
						end
						return ""
					end,
					set	= function(info, name)
						local vals = Nx.Opts:CalcChoices("HUDAGfx")
						Nx.db.profile.Track.AGfx = vals[name]	
						Nx.HUD:UpdateOptions()
					end,
					values	= function()
						return Nx.Opts:CalcChoices("HUDAGfx")
					end,					
				},
				spacer = {
					order = 5,
					type = "description",
					width = "double",
					name = "",
				},
				ArrowSize = {
					order = 6,
					type = "range",							
					name = "Arrow Size",						
					desc = "Sets the number of size of the tracking hud arrow.",
					min = 8,
					max = 100,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Track.ASize
					end,
					set = function(info,value)
						Nx.db.profile.Track.ASize = value								
						Nx.HUD:UpdateOptions()
					end,				
				},								
				AXO = {
					order = 7,
					type = "range",							
					name = "Arrow X Offset",						
					desc = "Sets the X offset of the tracking hud arrow.",
					min = -100,
					max = 100,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Track.AXO
					end,
					set = function(info,value)
						Nx.db.profile.Track.AXO = value								
						Nx.HUD:UpdateOptions()
					end,				
				},								
				AYO = {
					order = 8,
					type = "range",							
					name = "Arrow Y Offset",						
					desc = "Sets the Y offset of the tracking hud arrow.",
					min = -100,
					max = 100,
					step = 1,
					bigStep = 1,
					get = function()
						return Nx.db.profile.Track.AYO
					end,
					set = function(info,value)
						Nx.db.profile.Track.AYO = value								
						Nx.HUD:UpdateOptions()
					end,				
				},								
				showText = {
					order = 9,
					type = "toggle",
					width = "full",
					name = "Show Direction Text",
					desc = "When Enabled, shows additional direction text in the hud",
					get = function()
						return Nx.db.profile.Track.ShowDir
					end,
					set = function()
						Nx.db.profile.Track.ShowDir = not Nx.db.profile.Track.ShowDir
						Nx.HUD:UpdateOptions()
					end,				
				},						
				addTbut = {
					order = 10,
					type = "toggle",
					width = "full",
					name = "Enable Target Button",
					desc = "When Enabled, Adds a target button to the tracking hud",
					get = function()
						return Nx.db.profile.Track.TBut
					end,
					set = function()
						Nx.db.profile.Track.TBut = not Nx.db.profile.Track.TBut
						Nx.HUD:UpdateOptions()
					end,				
				},										
				Tbutcol = {
					order = 11,
					type = "color",
					width = "full",
					name = "Color of target button",
					hasAlpha = true,
					get = function()
						local arr = { Nx.Split("|",Nx.db.profile.Track.TButColor) }
						local r = arr[1]
						local g = arr[2]
						local b = arr[3]
						local a = arr[4]
						return r,g,b,a
					end,
					set = function(_,r,g,b,a)
						Nx.db.profile.Track.TButColor = r .. "|" .. g .. "|" .. b .. "|" .. a
						Nx.HUD:UpdateOptions()
					end,						
				},						
				Tbutcomcol = {
					order = 12,
					type = "color",
					width = "full",
					name = "Color of target button in combat",
					hasAlpha = true,
					get = function()
						local arr = { Nx.Split("|",Nx.db.profile.Track.TButCombatColor) }
						local r = arr[1]
						local g = arr[2]
						local b = arr[3]
						local a = arr[4]
						return r,g,b,a
					end,
					set = function(_,r,g,b,a)
						Nx.db.profile.Track.TButCombatColor = r .. "|" .. g .. "|" .. b .. "|" .. a
						Nx.Skin:Update()
					end,						
				},						
				addsound = {
					order = 13,
					type = "toggle",
					width = "full",
					name = "Enable Target Reached Sound",
					desc = "When Enabled, Plays a sound when you reach your target destination",
					get = function()
						return Nx.db.profile.Track.TSoundOn
					end,
					set = function()
						Nx.db.profile.Track.TSoundOn = not Nx.db.profile.Track.TSoundOn
						Nx.HUD:UpdateOptions()
					end,				
				},					
				spacer2 = {
					order = 14,
					type = "description",
					width = "full",
					name = " ",
				},
				autopals = {
					order = 15,
					type = "toggle",
					width = "full",
					name = "Auto Track Pals In BattleGrounds",
					desc = "When Enabled, Will auto track your friends in battleground",
					get = function()
						return Nx.db.profile.Track.ATBGPal
					end,
					set = function()
						Nx.db.profile.Track.ATBGPal = not Nx.db.profile.Track.ATBGPal						
					end,				
				},					
				autotaxi = {
					order = 16,
					type = "toggle",
					width = "full",
					name = "Auto Track Taxi Destination",
					desc = "When Enabled, Will automatically track your taxi destination",
					get = function()
						return Nx.db.profile.Track.ATTaxi
					end,
					set = function()
						Nx.db.profile.Track.ATtaxi = not Nx.db.profile.Track.ATTaxi
						Nx.HUD:UpdateOptions()
					end,				
				},					
				autocorpse = {
					order = 17,
					type = "toggle",
					width = "full",
					name = "Auto Track Corpse",
					desc = "When Enabled, Will automatically track your corpse upon death",
					get = function()
						return Nx.db.profile.Track.ATCorpse
					end,
					set = function()
						Nx.db.profile.Track.ATCorpse = not Nx.db.profile.Track.ATCorpse
						Nx.HUD:UpdateOptions()
					end,				
				},									
				spacer3 = {
					order = 18,
					type = "description",
					width = "full",
					name = " ",
				},				
				emutomtom = {
					order = 19,
					type = "toggle",
					width = "full",
					name = "Enable TomTom Emulation",
					desc = "When Enabled, Attempts to emulate tomtom's features (requires reload)",
					get = function()
						return Nx.db.profile.Track.EmuTomTom
					end,
					set = function()
						Nx.db.profile.Track.EmuTomTom = not Nx.db.profile.Track.EmuTomTom
						Nx.HUD:UpdateOptions()
					end,				
				},									
			},
		}
	end
	return trackoptions
end
function Nx:SetupConfig()
	AceConfig:RegisterOptionsTable("Carbonite", mainConfig)
	Nx.optionsFrame = AceConfigDialog:AddToBlizOptions("Carbonite", "Carbonite",nil,"main")
	Nx:AddToConfig("General",generalOptions(),"General")
	Nx:AddToConfig("Battlegrounds", BGConfig(), "Battlegrounds")
	Nx:AddToConfig("Fonts",fontConfig(),"Fonts")
	Nx:AddToConfig("Guide & Gather", guidegatherConfig(),"Guide & Gather")
	Nx:AddToConfig("Maps",mapConfig(),"Maps")
	Nx:AddToConfig("Menus",menuConfig(),"Menus")
	Nx:AddToConfig("Privacy",commConfig(),"Privacy")
--	Nx:AddToConfig("Profiles",profilesConfig(),"Profiles")
	Nx:AddToConfig("Skin",skinConfig(),"Skin")
	Nx:AddToConfig("Tracking HUD",trackConfig(),"Tracking HUD")
end

function Nx:AddToConfig(name, optionsTable, displayName)
	modular_config[name] = optionsTable
	Nx.optionsFrame[name] = AceConfigDialog:AddToBlizOptions("Carbonite", displayName, "Carbonite", name)
end

local function giveProfiles()
	return LibStub("AceDBOptions-3.0"):GetOptionsTable(Nx.db)
end

Nx.OptsDataSounds = {
	"Interface\\AddOns\\Carbonite\\Snd\\QuestComplete.ogg",
	"Sound\\Creature\\Peon\\PeonBuildingComplete1.wav",
	"Sound\\Character\\Scourge\\ScourgeVocalMale\\UndeadMaleCongratulations02.wav",
	"Sound\\Character\\Human\\HumanVocalFemale\\HumanFemaleCongratulations01.wav",
	"Sound\\Character\\Dwarf\\DwarfVocalMale\\DwarfMaleCongratulations04.wav",
	"Sound\\Character\\Gnome\\GnomeVocalMale\\GnomeMaleCongratulations03.wav",
	"Sound\\Creature\\Tauren\\TaurenYes3.wav",
	"Sound\\Creature\\UndeadMaleWarriorNPC\\UndeadMaleWarriorNPCGreeting01.wav",
}

-------------------------------------------------------------------------------

--------
-- Init options data. Called before UI init

function Nx.Opts:Init()

	self.ChoicesAnchor = {
		"TopLeft", "Top", "TopRight",
		"Left", "Center", "Right",
		"BottomLeft", "Bottom", "BottomRight",
	}
	self.ChoicesAnchor0 = {
		"None",
		"TopLeft", "Top", "TopRight",
		"Left", "Center", "Right",
		"BottomLeft", "Bottom", "BottomRight",
	}
	self.Skins = {		
		"Blackout","Blackout Blues","Dialog Blue",
		"Dialog Gold","Simple Blue","Stone","Tool Blue",
	}
	self.ChoicesCorner = { "TopLeft", "TopRight", "BottomLeft", "BottomRight", }

	self.ChoicesQArea = {
		"Solid", "SolidTexture", "HGrad",
	}
	self.ChoicesQAreaTex = {
		["SolidTexture"] = "Interface\\Buttons\\White8x8",
		["HGrad"] = "Interface\\AddOns\\Carbonite\\Gfx\\Map\\AreaGrad",
	}

	self:Reset (true)
	self:UpdateCom()

	OptsInit = Nx:ScheduleTimer(self.InitTimer, .5, self)

--	Nx.prt ("cvar %s", GetCVar ("farclip") or "nil")

--	RegisterCVar ("dog", "hi")
--	Nx.prt ("dog %s", GetCVar ("dog") or "nil")
end

--------
-- Init timer

function Nx.Opts:InitTimer()

--	Nx.prt ("cvar %s", GetCVar ("farclip") or "nil")

--	Nx.prt ("dog2 %s", GetCVar ("dog") or "nil")

	self:NXCmdGryphonsUpdate()
	self:NXCmdCamForceMaxDist()

	OptsQO = Nx:ScheduleTimer(self.QuickOptsTimer,2,self)
end

--------
-- Show quick options timer

function Nx.Opts:QuickOptsTimer()
	
	local i = Nx.db.profile.Version.QuickVer or 0

	local ver = 5

	Nx.db.profile.Version.QuickVer = ver

	if i < ver then

		local function func()			
			Nx.db.profile.MiniMap.Own = true
			Nx.db.profile.MiniMap.ButOwn = true
			Nx.db.profile.MiniMap.ShowOldNameplate = false
			ReloadUI()
		end

		local s = "Put the game minimap into the Carbonite map?\n\nThis will make one unified map. The minimap buttons will go into the Carbonite button window. This can also be changed using the Map Minimap options page."

		Nx:ShowMessage (s, "Yes", func, "No")
	end
end

--------
-- Reset options (can be called before Init)

function Nx.Opts:Reset (onlyNew)
	self.COpts = Nx.CurCharacter["Opts"]
	self.Opts = Nx.db.profile
	
	if not onlyNew then
		Nx.prt ("Reset global options")
		Nx.db:ResetDB("Default")
	end
end

--------
-- Open options

function Nx.Opts:Open (pageName)
	InterfaceOptionsFrame_OpenToCategory("Carbonite")
	InterfaceOptionsFrame_OpenToCategory("Carbonite")
end

--------
-- Open options

function Nx.Opts:Create()

	-- Create Window

	local win = Nx.Window:Create ("NxOpts", nil, nil, nil, 1)
	self.Win = win
	local frm = win.Frm

	win:CreateButtons (true, true)
	win:InitLayoutData (nil, -.25, -.1, -.5, -.7)

	tinsert (UISpecialFrames, frm:GetName())

	frm:SetToplevel (true)

	win:SetTitle (Nx.TXTBLUE.."CARBONITE " .. Nx.VERSION .. "|cffffffff Options")

	-- Page list

	local listW = 115

	local list = Nx.List:Create (false, 0, 0, 1, 1, frm)
	self.PageList = list

	list:SetUser (self, self.OnPageListEvent)
	win:Attach (list.Frm, 0, listW, 0, 1)

	list:SetLineHeight (8)

	list:ColumnAdd ("Page", 1, listW)

	for k, t in ipairs (Nx.OptsData) do

		list:ItemAdd (k)
		list:ItemSet (1, t.N)
	end

	self.PageSel = 1

	-- Item list

	Nx.List:SetCreateFont ("Font.Medium", 24)

	local list = Nx.List:Create (false, 0, 0, 1, 1, win.Frm)
	self.List = list

	list:SetUser (self, self.OnListEvent)

	list:SetLineHeight (12, 3)

	list:ColumnAdd ("", 1, 40)
	list:ColumnAdd ("", 2, 900)

	win:Attach (list.Frm, listW, 1, 0, 1)

	--

	self:Update()
end

--------

function Nx.Opts:NXCmdFavCartImport()
	Nx.Notes:CartImportNotes()
end

function Nx.Opts:NXCmdFontChange()
	Nx.Font:Update()
end

function Nx.Opts:NXCmdCamForceMaxDist()

--	Nx.prt ("Cam %s", GetCVar ("cameraDistanceMaxFactor"))

	if Nx.db.profile.General.CameraForceMaxDist then
		SetCVar ("cameraDistanceMaxFactor", 3.4)
	end
end

function Nx.Opts:NXCmdGryphonsUpdate()
	if Nx.db.profile.General.GryphonsHide then
		MainMenuBarLeftEndCap:Hide()
		MainMenuBarRightEndCap:Hide()
	else
		MainMenuBarLeftEndCap:Show()
		MainMenuBarRightEndCap:Show()
	end
end

function Nx.Opts:NXCmdDeleteHerb()

	local function func()
		Nx:GatherDeleteHerb()
	end
	Nx:ShowMessage ("Delete Herb Locations?", "Delete", func, "Cancel")
end

function Nx.Opts:NXCmdDeleteMine()

	local function func()
		Nx:GatherDeleteMine()
	end
	Nx:ShowMessage ("Delete Mine Locations?", "Delete", func, "Cancel")
end

function Nx.Opts:NXCmdDeleteMisc()

	local function func()
		Nx:GatherDeleteMisc()
	end
	Nx:ShowMessage ("Delete Misc Locations?", "Delete", func, "Cancel")
end

function Nx.Opts:NXCmdImportCarbHerb()

	local function func()
		Nx:GatherImportCarbHerb()
	end
	Nx:ShowMessage ("Import Herbs?", "Import", func, "Cancel")
end

function Nx.Opts:NXCmdImportCarbMine()

	local function func()
		Nx:GatherImportCarbMine()
	end
	Nx:ShowMessage ("Import Mining?", "Import", func, "Cancel")
end

function Nx.Opts:NXCmdImportCarbMisc()

	local function func()
		Nx:GatherImportCarbMisc()
	end
	Nx:ShowMessage ("Import Misc?", "Import", func, "Cancel")
end

--[[
function Nx.Opts:NXCmdImportCartHerb()

	local function func()
		Nx:GatherImportCartHerb()
	end
	Nx:ShowMessage ("Import Herbs?", "Import", func, "Cancel")
end

function Nx.Opts:NXCmdImportCartMine()

	local function func()
		Nx:GatherImportCartMine()
	end
	Nx:ShowMessage ("Import Mining?", "Import", func, "Cancel")
end
--]]

function Nx.Opts:NXCmdInfoWinUpdate()
	if Nx.Info then
		Nx.Info:OptionsUpdate()
	end
end

function Nx.Opts:NXCmdMMOwnChange (item, var)
	Nx.db.profile.MiniMap.ShowOldNameplate = not var		-- Nameplate is opposite of integration
	Nx.db.profile.MiniMap.ButOwn = var
	self:Update()
	self:NXCmdReload()
end

function Nx.Opts:NXCmdMMButUpdate()
	Nx.Map:MinimapButtonShowUpdate()
	Nx.Map.Dock:UpdateOptions()
end

-- Generic minimap change

function Nx.Opts:NXCmdMMChange()
	local map = Nx.Map:GetMap (1)
	map:MinimapNodeGlowInit (true)
end

function Nx.Opts:NXCmdMapToolBarUpdate()
	local map = Nx.Map:GetMap (1)
	map:UpdateToolBar()
end

--function Nx.Opts:NXCmdWatchFont()
--	Nx.Quest.Watch:SetFont()
--end

function Nx.Opts:NXCmdQWFadeAll (item, var)
	Nx.Quest.Watch:WinUpdateFade (var and Nx.Quest.Watch.Win:GetFade() or 1, true)
end

function Nx.Opts:NXCmdQWHideRaid()
	Nx.Quest.Watch.Win.Frm:Show()
end

function Nx.Opts:NXCmdImportCharSettings()

	local function func (self, name)

		local function func()

--			Nx.prt ("OK %s", name)

			if Nx:CopyCharacterData (name, UnitName ("player")) then
				ReloadUI()
			end
		end

		Nx:ShowMessage (format ("Import %s character data and reload?", name), "Import", func, "Cancel")
	end

	local t = {}

	for rc in pairs (Nx.db.global.Characters) do
		tinsert (t, rc)
	end

	sort (t)

	Nx.DropDown:Start (self, func)
	Nx.DropDown:AddT (t, 1)
	Nx.DropDown:Show (self.List.Frm)
end

function Nx.Opts:NXCmdDeleteCharSettings()

	local function func (self, name)

		local function func()

--			Nx.prt ("OK %s", name)

			Nx:DeleteCharacterData (name)
		end

		Nx:ShowMessage (format ("Delete %s character data?", name), "Delete", func, "Cancel")
	end

	local rcName = Nx:GetRealmCharName()

	local t = {}

	for rc in pairs (Nx.db.global.Characters) do
		if rc ~= rcName then
			tinsert (t, rc)
		end
	end

	sort (t)

	Nx.DropDown:Start (self, func)
	Nx.DropDown:AddT (t, 1)
	Nx.DropDown:Show (self.List.Frm)
end

function Nx.Opts:NXCmdResetOpts()

	local function func()
		local self = Nx.Opts
		self:Reset()
		self:Update()
		Nx.Skin:Set()
		Nx.Font:Update()
		Nx.Quest:OptsReset()
		Nx.Quest:CalcWatchColors()
		self:NXCmdHUDChange()
		self:NXCmdGryphonsUpdate()
		self:NXCmdInfoWinUpdate()
		self:NXCmdUIChange()
	end

	Nx:ShowMessage ("Reset options?", "Reset", func, "Cancel")
end

function Nx.Opts:NXCmdResetWinLayouts()

	local function func()
		Nx.Window:ResetLayouts()
	end

	Nx:ShowMessage ("Reset window layouts?", "Reset", func, "Cancel")
end

function Nx.Opts:NXCmdResetWatchWinLayout()
	Nx.Quest.Watch.Win:ResetLayout()
end

function Nx.Opts:NXCmdReload()

	local function func()
		ReloadUI()
	end

	Nx:ShowMessage ("Reload UI?", "Reload", func, "Cancel")
end

function Nx.Opts:NXCmdHUDChange()
	Nx.HUD:UpdateOptions()
end

--------
-- Do simple call anytime UI changes

function Nx.Opts:NXCmdUIChange()
	Nx:prtSetChatFrame()
end

--------

function Nx.Opts:OnSetSize (w, h)

	Nx.Opts.FStr:SetWidth (w)
end

function Nx.Opts:OnPageListEvent (eventName, sel, val2)

	if eventName == "select" or eventName == "back" then
		self.PageSel = sel
		self:Update()
	end
end

function Nx.Opts:OnListEvent (eventName, sel, val2)

	local page = Nx.OptsData[self.PageSel]
	local item = page[sel]

	if eventName == "select" or eventName == "back" then

		if item then

			if type (item) == "table" then
				if item.F then
					local var = self:GetVar (item.V)
					Nx.Opts[item.F](self, item, var)
				end

				if item.V then
					self:EditItem (item)
				end
			end
		end

	elseif eventName == "button" then

--		Nx.prt ("but %s", val2 and "T" or "F")

		if item then
			if type (item) == "table" then
				if item.V then
					self:SetVar (item.V, val2)
				end
				if item.VF then
					local var = self:GetVar (item.V)
					Nx.Opts[item.VF](self, item, var)
				end
			end
		end

	elseif eventName == "color" then

		if item then
			if type (item) == "table" then
				if item.VF then
					Nx.Opts[item.VF](self, item)
				end
			end
		end
	end

	self:Update()
end

--------
-- Update options

function Nx.Opts:Update()

	local opts = self.Opts
	local list = self.List

	if not list then
		return
	end

	list:Empty()

	local page = Nx.OptsData[self.PageSel]

	for k, item in ipairs (page) do

		list:ItemAdd (k)

		if type (item) == "table" then

			if item.N then

				local col = "|cff9f9f9f"

				if item.F then				-- Function?
					col = "|cff8fdf8f"
				elseif item.V then
					col = "|cffdfdfdf"
				end

				local istr = format ("%s%s", col, item.N)

				if item.V then

					local typ, pressed, tx = self:ParseVar (item.V)
					if typ == "B" then

						if pressed ~= nil then
							local tip
							list:ItemSetButton ("Opts", pressed, tx, tip)
						end

					elseif typ == "C" then

						list:ItemSetColorButton (opts, item.V, true)

					elseif typ == "RGB" then

						list:ItemSetColorButton (opts, item.V, false)

					elseif typ == "CH" then	-- Choice

						local i = self:GetVar (item.V)
						istr = format ("%s  |cffffff80%s", istr, i)

					elseif typ == "F" then

						local i = self:GetVar (item.V)
						istr = format ("%s  |cffffff80%s", istr, i)

					elseif typ == "I" then

						local i = self:GetVar (item.V)
						istr = format ("%s  |cffffff80%s", istr, i)

					elseif typ == "S" then

						local s = self:GetVar (item.V)
						istr = format ("%s  |cffffff80%s", istr, s)

					elseif typ == "Frm" then

--						list:ItemSetFrame ("Color")

					end
				end

				list:ItemSet (2, istr)
			end

		elseif type (item) == "string" then

			local col = "|cff9f9f9f"
			list:ItemSet (2, format ("%s%s", col, item))
		end
	end

	list:FullUpdate()

	self:UpdateCom()
end

function Nx.Opts:UpdateCom()

	local opts = self.Opts

	local mask = 0

	if Nx.db.profile.Comm.SendToFriends then
		mask = mask + 1
	end

	if Nx.db.profile.Comm.SendToGuild then
		mask = mask + 2
	end

	if Nx.db.profile.Comm.SendToZone then
		mask = mask + 4
	end

	Nx.Com:SetSendPalsMask (mask)
end

--------

function Nx.Opts:EditItem (item)

	local var = self:GetVar (item.V)
	local typ, r1 = self:ParseVar (item.V)

	if typ == "CH" then

		self.CurItem = item

		local data = self:CalcChoices (r1, "Get")
		if not data then
			Nx.prt ("EditItem error (%s)", r1)
		end
		Nx.DropDown:Start (self, self.EditCHAccept)
		for k, name in ipairs (data) do
			Nx.DropDown:Add (name, name == var)
		end
		Nx.DropDown:Show (self.List.Frm)
--[[
		local s = self:CalcChoices (r1, "Inc", var)
		self:SetVar (item.V, s)
		self:Update()

		if item.VF then
			local var = self:GetVar (item.V)
			self[item.VF](self, item, var)
		end
--]]
	elseif typ == "F" then
		Nx:ShowEditBox (item.N, var, item, self.EditFAccept)

	elseif typ == "I" then
		Nx:ShowEditBox (item.N, var, item, self.EditIAccept)

	elseif typ == "S" then
		Nx:ShowEditBox (item.N, var, item, self.EditSAccept)

	end
end

function Nx.Opts:EditCHAccept (name)

	local item = self.CurItem

	self:SetVar (item.V, name)
	self:Update()

	if item.VF then
		local var = self:GetVar (item.V)
		self[item.VF](self, item, var)
	end
end

function Nx.Opts.EditFAccept (str, item)

	local self = Nx.Opts

	local i = tonumber (str)
	if i then
		self:SetVar (item.V, i)
		self:Update()

		if item.VF then
			local var = self:GetVar (item.V)
			self[item.VF](self, item, var)
		end
	end
end

function Nx.Opts.EditIAccept (str, item)

	local self = Nx.Opts

	local i = tonumber (str)
	if i then
		self:SetVar (item.V, floor (i))
		self:Update()

		if item.VF then
			local var = self:GetVar (item.V)
			self[item.VF](self, item, var)
		end
	end
end

function Nx.Opts.EditSAccept (str, item)

	local self = Nx.Opts

	if str then
		self:SetVar (item.V, str)
		self:Update()

		if item.VF then
			local var = self:GetVar (item.V)
			self[item.VF](self, item, var)
		end
	end
end

--------
-- Calc

function Nx.Opts:CalcChoices (name, mode, val)

	if name == "FontFace" then

		if mode == "Inc" then
			local i = Nx.Font:GetIndex (val) + 1
			return Nx.Font:GetName (i) or Nx.Font:GetName (1)

		elseif mode == "Get" then

			data = {}

			for n = 1, 999 do
				local name = Nx.Font:GetName (n)
				if not name then
					break
				end

				tinsert (data, name)
			end

			sort (data)

			return data
		end

		return
	elseif name == "Skins" then
		return self.Skins
	elseif name == "HUDAGfx" then

		return Nx.HUD.TexNames

	elseif name == "Anchor" then

		return self.ChoicesAnchor

	elseif name == "Anchor0" then

		return self.ChoicesAnchor0

	elseif name == "Chat" then

		return Nx:prtGetChatFrames()

	elseif name == "Corner" then

		return self.ChoicesCorner

	elseif name == "MapFunc" then

		return Nx.Map:GetFuncs()

	elseif name == "QArea" then

		return self.ChoicesQArea

	end
end

--------
-- Parse var

function Nx.Opts:ParseVar (varName)

	local data = Nx.OptsVars[varName]
	local scope, typ, val, a1 = Nx.Split ("~", data)	
	local opts = scope == "-" and self.COpts or self.Opts

--	Nx.prtVar ("Parse " .. varName, opts[varName])

	local pressed
	local tx

	if typ == "B" then

		pressed = false
		tx = "But"

		if opts[varName] then
			pressed = true
			tx = "ButChk"
		end

		return typ, pressed, tx

	elseif typ == "CH" then

		return typ, a1

	elseif typ == "W" then

		local winName, atName = Nx.Split ("^", val)
		local typ, val = Nx.Window:GetAttribute (winName, atName)

		if typ == "B" then
			if val then
				return typ, true, "ButChk"
			end
			return typ, false, "But"
		end

		return typ, val
	end

	return typ
end

--------
-- Get

function Nx.Opts:GetVar (varName)

	local data = Nx.OptsVars[varName]
	if data then

		local scope, typ, val = Nx.Split ("~", data)
		local opts = scope == "-" and self.COpts or self.Opts

		if typ == "B" then
			return opts[varName]

		elseif typ == "CH" then
			return opts[varName]

		elseif typ == "F" or typ == "I" or typ == "S" then
			return opts[varName]

		end
	end
end

--------
-- Set

function Nx.Opts:SetVar (varName, val)

--	Nx.prtVar ("Set " .. varName, val)

	local data = Nx.OptsVars[varName]
	local scope, typ, vdef, vmin, vmax = Nx.Split ("~", data)
	local opts = scope == "-" and self.COpts or self.Opts

	if typ == "B" then
		opts[varName] = val

	elseif typ == "CH" then
		opts[varName] = val

	elseif typ == "F" or typ == "I" then

		vmin = tonumber (vmin)
		if vmin then
			val = max (val, vmin)
		end

		vmax = tonumber (vmax)
		if vmax then
			val = min (val, vmax)
		end

		opts[varName] = val

	elseif typ == "S" then
		opts[varName] = gsub (val, "~", "?")

	elseif typ == "W" then

		local winName, atName = Nx.Split ("^", vdef)
		Nx.Window:SetAttribute (winName, atName, val)

	else
		return
	end
end

-------------------------------------------------------------------------------
-- EOF

















