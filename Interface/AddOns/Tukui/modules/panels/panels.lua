local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

local sbWidth = C.actionbar.sidebarWidth
local mbWidth = C.actionbar.mainbarWidth

local TukuiBar1 = CreateFrame("Frame", "TukuiBar1", UIParent, "SecureHandlerStateTemplate")
TukuiBar1:CreatePanel("Invisible", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 35)
TukuiBar1:SetWidth((T.buttonsize * mbWidth) + (T.buttonspacing * (mbWidth-1)))
TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing))
TukuiBar1:SetFrameStrata("BACKGROUND")
TukuiBar1:SetFrameLevel(1)

local TukuiBar2 = CreateFrame("Frame", "TukuiBar2", UIParent)
TukuiBar2:CreatePanel("Invisible", 1, 1, "BOTTOMRIGHT", TukuiBar1, "BOTTOMLEFT", -5, 0)
TukuiBar2:SetWidth((T.buttonsize * sbWidth) + (T.buttonspacing * (sbWidth-1)))
TukuiBar2:SetHeight((T.buttonsize * 2) + (T.buttonspacing))
TukuiBar2:SetFrameStrata("BACKGROUND")
TukuiBar2:SetFrameLevel(2)
if T.lowversion then
	TukuiBar2:SetAlpha(0)
else
	TukuiBar2:SetAlpha(1)
end

local TukuiBar3 = CreateFrame("Frame", "TukuiBar3", UIParent)
TukuiBar3:CreatePanel("Invisible", 1, 1, "BOTTOMLEFT", TukuiBar1, "BOTTOMRIGHT", 5, 0)
TukuiBar3:SetWidth((T.buttonsize * sbWidth) + (T.buttonspacing * (sbWidth-1)))
TukuiBar3:SetHeight((T.buttonsize * 2) + (T.buttonspacing))
TukuiBar3:SetFrameStrata("BACKGROUND")
TukuiBar3:SetFrameLevel(2)
if T.lowversion then
	TukuiBar3:SetAlpha(0)
else
	TukuiBar3:SetAlpha(1)
end

local TukuiBar4 = CreateFrame("Frame", "TukuiBar4", UIParent)
TukuiBar4:CreatePanel("Invisible", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 35)
TukuiBar4:SetWidth((T.buttonsize * mbWidth) + (T.buttonspacing * (mbWidth-1)))
TukuiBar4:SetHeight((T.buttonsize * 2) + (T.buttonspacing))
TukuiBar4:SetFrameStrata("BACKGROUND")
TukuiBar4:SetFrameLevel(2)
TukuiBar4:SetAlpha(0)


local TukuiBar5 = CreateFrame("Frame", "TukuiBar5", UIParent)
TukuiBar5:CreatePanel("Invisible", (T.buttonsize * 12) + (T.buttonspacing * 11), T.buttonsize, "RIGHT", UIParent, "RIGHT", -24, -14)
TukuiBar5:SetFrameStrata("BACKGROUND")
TukuiBar5:SetFrameLevel(2)
TukuiBar5:SetAlpha(0)

local TukuiBar6 = CreateFrame("Frame", "TukuiBar6", UIParent)
TukuiBar6:SetWidth((T.buttonsize) + (T.buttonspacing * 2))
TukuiBar6:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 11))
TukuiBar6:SetPoint("LEFT", TukuiBar5, "LEFT", 0, 0)
TukuiBar6:SetFrameStrata("BACKGROUND")
TukuiBar6:SetFrameLevel(2)
TukuiBar6:SetAlpha(0)

local TukuiBar7 = CreateFrame("Frame", "TukuiBar7", UIParent)
TukuiBar7:SetWidth((T.buttonsize) + (T.buttonspacing * 2))
TukuiBar7:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 11))
TukuiBar7:SetPoint("TOP", TukuiBar5, "TOP", 0 , 0)
TukuiBar7:SetFrameStrata("BACKGROUND")
TukuiBar7:SetFrameLevel(2)
TukuiBar7:SetAlpha(0)

local petbg = CreateFrame("Frame", "TukuiPetBar", UIParent, "SecureHandlerStateTemplate")
petbg:CreatePanel("Invisible", (T.petbuttonsize * 10) + (T.petbuttonspacing * 9), T.petbuttonsize, "BOTTOM", TukuiBar5, "TOP", 0, 5)

local ltpetbg1 = CreateFrame("Frame", "TukuiLineToPetActionBarBackground", petbg)
ltpetbg1:CreatePanel("Invisible", 24, 265, "LEFT", petbg, "RIGHT", 0, 0)
ltpetbg1:SetParent(petbg)
ltpetbg1:SetFrameStrata("BACKGROUND")
ltpetbg1:SetFrameLevel(0)
ltpetbg1:SetAlpha(0)

if C.actionbar.bgPanel then
	for i = 1, 5 do
		_G["TukuiBar"..i]:SetTemplate("Thin")
		_G["TukuiBar"..i]:CreateShadow()
	end
	
	petbg:SetTemplate("Thin")
	petbg:CreateShadow()
	petbg:SetWidth((T.petbuttonsize * 10) + (T.petbuttonspacing * 11))
	petbg:SetHeight(T.petbuttonsize + (T.petbuttonspacing * 2))
	
	TukuiBar1:SetWidth((T.buttonsize * mbWidth) + (T.buttonspacing * (mbWidth+1)))
	TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing*3))
	
	TukuiBar2:SetWidth((T.buttonsize * sbWidth) + (T.buttonspacing * (sbWidth+1)))
	TukuiBar2:SetHeight((T.buttonsize * 2) + (T.buttonspacing*3))
	
	TukuiBar3:SetWidth((T.buttonsize * sbWidth) + (T.buttonspacing * (sbWidth+1)))
	TukuiBar3:SetHeight((T.buttonsize * 2) + (T.buttonspacing*3))
	
	TukuiBar4:SetWidth((T.buttonsize * mbWidth) + (T.buttonspacing * (mbWidth+1)))
	TukuiBar4:SetHeight((T.buttonsize * 2) + (T.buttonspacing*3))
	TukuiBar4.shadow:Hide()
	
	TukuiBar5:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
	TukuiBar5:SetHeight((T.buttonsize) + (T.buttonspacing*2))
	
	TukuiBar6:SetWidth((T.buttonsize) + (T.buttonspacing * 2))
	TukuiBar6:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 13))
	
	TukuiBar7:SetWidth((T.buttonsize) + (T.buttonspacing * 2))
	TukuiBar7:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 13))
end

-- Default FRAME COVERING BOTTOM ACTIONBARS JUST TO PARENT UF CORRECTLY
local invbarbg = CreateFrame("Frame", "InvTukuiActionBarBackground", UIParent)
if T.lowversion then
	invbarbg:SetPoint("TOPLEFT", TukuiBar1)
	invbarbg:SetPoint("BOTTOMRIGHT", TukuiBar1)
	TukuiBar2:Hide()
	TukuiBar3:Hide()
else
	invbarbg:SetPoint("TOPLEFT", TukuiBar2)
	invbarbg:SetPoint("BOTTOMRIGHT", TukuiBar3)
end


-- LEFT VERTICAL LINE
local ileftlv = CreateFrame("Frame", "TukuiInfoLeftLineVertical", TukuiBar1)
ileftlv:CreatePanel("Default", 2, 130, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 22, 30)

-- RIGHT VERTICAL LINE
local irightlv = CreateFrame("Frame", "TukuiInfoRightLineVertical", TukuiBar1)
irightlv:CreatePanel("Default", 2, 130, "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -22, 30)

if not C.chat.background then
	-- CUBE AT LEFT, ACT AS A BUTTON (CHAT MENU)
	local cubeleft = CreateFrame("Frame", "TukuiCubeLeft", TukuiBar1)
	cubeleft:CreatePanel("Default", 10, 10, "BOTTOM", ileftlv, "TOP", 0, 0)
	cubeleft:EnableMouse(true)
	cubeleft:SetScript("OnMouseDown", function(self, btn)
		if TukuiInfoLeftBattleGround and UnitInBattleground("player") then
			if btn == "RightButton" then
				if TukuiInfoLeftBattleGround:IsShown() then
					TukuiInfoLeftBattleGround:Hide()
				else
					TukuiInfoLeftBattleGround:Show()
				end
			end
		end
		
		if btn == "LeftButton" then	
			ToggleFrame(ChatMenu)
		end
	end)

	-- CUBE AT RIGHT, ACT AS A BUTTON (CONFIGUI or BG'S)
	local cuberight = CreateFrame("Frame", "TukuiCubeRight", TukuiBar1)
	cuberight:CreatePanel("Default", 10, 10, "BOTTOM", irightlv, "TOP", 0, 0)
	if C["bags"].enable then
		cuberight:EnableMouse(true)
		cuberight:SetScript("OnMouseDown", function(self)
			ToggleKeyRing()
		end)
	end
end

-- HORIZONTAL LINE LEFT
local ltoabl = CreateFrame("Frame", "TukuiLineToABLeft", TukuiBar1)
ltoabl:CreatePanel("Default", 5, 2, "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 0)
ltoabl:ClearAllPoints()
ltoabl:Point("BOTTOMLEFT", ileftlv, "BOTTOMLEFT", 0, 0)
ltoabl:Point("RIGHT", TukuiBar1, "BOTTOMLEFT", -1, 17)
ltoabl:SetFrameStrata("BACKGROUND")
ltoabl:SetFrameLevel(1)

-- HORIZONTAL LINE RIGHT
local ltoabr = CreateFrame("Frame", "TukuiLineToABRight", TukuiBar1)
ltoabr:CreatePanel("Default", 5, 2, "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 0)
ltoabr:ClearAllPoints()
ltoabr:Point("LEFT", TukuiBar1, "BOTTOMRIGHT", 1, 17)
ltoabr:Point("BOTTOMRIGHT", irightlv, "BOTTOMRIGHT", 0, 0)
ltoabr:SetFrameStrata("BACKGROUND")
ltoabr:SetFrameLevel(1)


-- MOVE/HIDE SOME ELEMENTS IF CHAT BACKGROUND IS ENABLED
local movechat = 0
if C.chat.background then movechat = 10 ileftlv:SetAlpha(0) irightlv:SetAlpha(0) end

-- INFO LEFT (FOR STATS)
local ileft = CreateFrame("Frame", "TukuiInfoLeft", TukuiBar1)
ileft:CreatePanel("Default", T.InfoLeftRightWidth + 12, 17, "LEFT", ltoabl, "LEFT", 2 - movechat, -10)
ileft:SetFrameLevel(2)
ileft:CreateShadow("")
ileft:SetFrameStrata("BACKGROUND")


-- INFO RIGHT (FOR STATS)
local iright = CreateFrame("Frame", "TukuiInfoRight", TukuiBar1)
iright:CreatePanel("Default", T.InfoLeftRightWidth + 12, 17, "RIGHT", ltoabr, "RIGHT", -2 + movechat, -11)
iright:SetFrameLevel(2)
iright:CreateShadow("")
iright:SetFrameStrata("BACKGROUND")


-- Alpha horizontal lines because all panels is dependent on this frame.
ltoabl:SetAlpha(0)
ltoabr:SetAlpha(0)

-- CHAT BG LEFT
local chatleftbg = CreateFrame("Frame", "TukuiChatBackgroundLeft", TukuiInfoLeft)
chatleftbg:CreatePanel("Transparent", T.InfoLeftRightWidth + 12, 118, "BOTTOM", TukuiInfoLeft, "BOTTOM", 0, 19)
chatleftbg:CreateShadow("")
	
-- CHAT BG RIGHT
local chatrightbg = CreateFrame("Frame", "TukuiChatBackgroundRight", TukuiInfoRight)
chatrightbg:CreatePanel("Transparent", T.InfoLeftRightWidth + 12, 118, "BOTTOM", TukuiInfoRight, "BOTTOM", 0, 19)
chatrightbg:CreateShadow("")
	
-- LEFT TAB PANEL
local tabsbgleft = CreateFrame("Frame", "TukuiTabsLeftBackground", TukuiBar1)
tabsbgleft:CreatePanel("Transparent", T.InfoLeftRightWidth + 12, 17, "BOTTOMLEFT", chatleftbg, "TOPLEFT", 0, T.Scale(2))
tabsbgleft:SetFrameLevel(1)
tabsbgleft:SetFrameStrata("BACKGROUND")
tabsbgleft:CreateShadow("")

-- RIGHT TAB PANEL
local tabsbgright = CreateFrame("Frame", "TukuiTabsRightBackground", TukuiBar1)
tabsbgright:CreatePanel("Transparent", T.InfoLeftRightWidth + 12, 17, "BOTTOMLEFT", chatrightbg, "TOPLEFT", 0, T.Scale(2))
tabsbgright:SetFrameLevel(1)
tabsbgright:SetFrameStrata("BACKGROUND")
tabsbgright:CreateShadow("")

--[[
if TukuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "TukuiMinimapStatsLeft", TukuiMinimap)
	minimapstatsleft:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 0, -2)

	local minimapstatsright = CreateFrame("Frame", "TukuiMinimapStatsRight", TukuiMinimap)
	minimapstatsright:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPRIGHT", TukuiMinimap, "BOTTOMRIGHT", 0, -2)
end
--]]

--Re-anchor above right chat panel
TukuiBar5:ClearAllPoints()
TukuiBar5:Point("BOTTOM", tabsbgright, "TOP", 0, 4)

petbg:ClearAllPoints()
petbg:Point("BOTTOM", TukuiBar5, "TOP", 0, 3)

TukuiBar5:SetScript("OnHide", function() petbg:ClearAllPoints() petbg:Point("BOTTOM", tabsbgright, "TOP", 0, 4) end)
TukuiBar5:SetScript("OnShow", function() petbg:ClearAllPoints() petbg:Point("BOTTOM", TukuiBar5, "TOP", 0, 3) end)

--BATTLEGROUND STATS FRAME
if C["datatext"].battleground == true then
	local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
	bgframe:CreatePanel("Default", 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
	bgframe:SetAllPoints(ileft)
	bgframe:SetFrameStrata("LOW")
	bgframe:SetFrameLevel(0)
	bgframe:EnableMouse(true)
end

---------------------------------------------------------
---[[ ADDITIONAL Asphyxia PANELS ]]---
---------------------------------------------------------

--TOP DUMMY FRAME DOES NOTHING 
local toppanel = CreateFrame("Frame", "TukuiTopPanel", UIParent)
toppanel:CreatePanel("Transparent", 2000, 20, "TOP", UIParent, "TOP", 0, 0)
toppanel:SetFrameStrata("BACKGROUND")
toppanel:SetFrameLevel(1)
toppanel:CreateShadow("Default")

--BOTTOM DUMMY FRAME DOES NOTHING 
local bottompanel = CreateFrame("Frame", "TukuiBottomPanel", UIParent)
bottompanel:CreatePanel("Transparent", 2000, 20, "BOTTOM", UIParent, "BOTTOM", 0, 0)
bottompanel:SetFrameStrata("BACKGROUND")
bottompanel:SetFrameLevel(1)
bottompanel:CreateShadow("Default")

-- TIME PANEL
local watch = CreateFrame("Frame", "Tukuiwatch", UIParent)
watch:CreatePanel("Default", 73, 17, "TOP", Minimap, "BOTTOM", T.Scale(0), 8)
watch:CreateShadow("Default")
watch:SetFrameStrata("LOW")
watch:SetFrameLevel(2)

-- ADDONS BUTTON
local adbutton = CreateFrame("Button", "TukuiAddonsButton", UIParent, "SecureActionButtonTemplate")
adbutton:CreatePanel("Default", 100, 17, "BOTTOM", UIParent, "BOTTOM", 0, 12)
adbutton:CreateShadow("Default")
adbutton:SetAttribute("type", "macro")
adbutton:SetAttribute("macrotext", "/al")
adbutton:SetFrameStrata("BACKGROUND")
adbutton:SetFrameLevel(2)

adbutton.Text = T.SetFontString(adbutton, C.media.pixelfont, 10)
adbutton.Text:Point("CENTER", adbutton, "CENTER", 0, 0.5)
adbutton.Text:SetText(ADDONS)
adbutton.Text:SetTextColor(unpack(C["media"].statcolor))

adbutton:HookScript("OnEnter", function(self) adbutton:SetBackdropBorderColor(unpack(C["media"].statcolor)) end)
adbutton:HookScript("OnLeave", function(self) adbutton:SetBackdropBorderColor(unpack(C["media"].bordercolor)) end)

-- RESETUI BUTTON
local resetuibutton = CreateFrame("Button", "TukuiResetUIButton", UIParent, "SecureActionButtonTemplate")
resetuibutton:CreatePanel("Default", 55, 17, "LEFT", TukuiAddonsButton, "RIGHT", 5, 0)
resetuibutton:CreateShadow("Default")
resetuibutton:SetAttribute("type", "macro")
resetuibutton:SetAttribute("macrotext", "/resetui")
resetuibutton:SetFrameStrata("BACKGROUND")
resetuibutton:SetFrameLevel(2)

resetuibutton.Text = T.SetFontString(resetuibutton, C.media.pixelfont, 10)
resetuibutton.Text:Point("CENTER", resetuibutton, "CENTER", 0, 0.5)
resetuibutton.Text:SetText("Reset UI")
resetuibutton.Text:SetTextColor(unpack(C["media"].statcolor))

resetuibutton:HookScript("OnEnter", function(self) resetuibutton:SetBackdropBorderColor(unpack(C["media"].statcolor)) end)
resetuibutton:HookScript("OnLeave", function(self) resetuibutton:SetBackdropBorderColor(unpack(C["media"].bordercolor)) end)

-- RELOADUI BUTTON
local rluibutton = CreateFrame("Button", "TukuiReloadUIButton", UIParent, "SecureActionButtonTemplate")
rluibutton:CreatePanel("Default", 55, 17, "LEFT", resetuibutton, "RIGHT", 5, 0)
rluibutton:CreateShadow("Default")
rluibutton:SetAttribute("type", "macro")
rluibutton:SetAttribute("macrotext", "/rl")
rluibutton:SetFrameStrata("BACKGROUND")
rluibutton:SetFrameLevel(2)

rluibutton.Text = T.SetFontString(rluibutton, C.media.pixelfont, 10)
rluibutton.Text:Point("CENTER", rluibutton, "CENTER", 0, 0.5)
rluibutton.Text:SetText("Reload UI")
rluibutton.Text:SetTextColor(unpack(C["media"].statcolor))

rluibutton:HookScript("OnEnter", function(self) rluibutton:SetBackdropBorderColor(unpack(C["media"].statcolor)) end)
rluibutton:HookScript("OnLeave", function(self) rluibutton:SetBackdropBorderColor(unpack(C["media"].bordercolor)) end)

-- CONFIG BUTTON
local configbutton = CreateFrame("Button", "TukuiConfigButton", UIParent, "SecureActionButtonTemplate")
configbutton:CreatePanel("Default", 55, 17, "RIGHT", TukuiAddonsButton, "LEFT", -5, 0)
configbutton:CreateShadow("Default")
configbutton:SetAttribute("type", "macro")
configbutton:SetAttribute("macrotext", "/tc")
configbutton:SetFrameStrata("BACKGROUND")
configbutton:SetFrameLevel(2)

configbutton.Text = T.SetFontString(configbutton, C.media.pixelfont, 10)
configbutton.Text:Point("CENTER", configbutton, "CENTER", 0, 0.5)
configbutton.Text:SetText("Config UI")
configbutton.Text:SetTextColor(unpack(C["media"].statcolor))

configbutton:HookScript("OnEnter", function(self) configbutton:SetBackdropBorderColor(unpack(C["media"].statcolor)) end)
configbutton:HookScript("OnLeave", function(self) configbutton:SetBackdropBorderColor(unpack(C["media"].bordercolor)) end)

-- MOVEUI BUTTON
local moveuibutton = CreateFrame("Button", "TukuiMoveUIButton", UIParent, "SecureActionButtonTemplate")
moveuibutton:CreatePanel("Default", 55, 17, "RIGHT", configbutton, "LEFT", -5, 0)
moveuibutton:CreateShadow("Default")
moveuibutton:SetAttribute("type", "macro")
moveuibutton:SetAttribute("macrotext", "/mtukui")
moveuibutton:SetFrameStrata("BACKGROUND")
moveuibutton:SetFrameLevel(2)

moveuibutton.Text = T.SetFontString(moveuibutton, C.media.pixelfont, 10)
moveuibutton.Text:Point("CENTER", moveuibutton, "CENTER", 0, 0.5)
moveuibutton.Text:SetText("Move UI")
moveuibutton.Text:SetTextColor(unpack(C["media"].statcolor))

moveuibutton:HookScript("OnEnter", function(self) moveuibutton:SetBackdropBorderColor(unpack(C["media"].statcolor)) end)
moveuibutton:HookScript("OnLeave", function(self) moveuibutton:SetBackdropBorderColor(unpack(C["media"].bordercolor)) end)

-- MOUSEOVER FUNCTION FOR BUTTONS
moveuibutton:SetAlpha(0)
configbutton:SetAlpha(0)
adbutton:SetAlpha(0)
resetuibutton:SetAlpha(0)
rluibutton:SetAlpha(0)

local buttonsBG = CreateFrame("frame", nil, UIParent)
buttonsBG:SetPoint("TOPLEFT", moveuibutton, "TOPLEFT" ,0, 0)
buttonsBG:SetPoint("BOTTOMRIGHT", rluibutton, "BOTTOMRIGHT" ,0, 0)
buttonsBG:EnableMouse(true)
buttonsBG:SetFrameLevel(0)
buttonsBG:SetFrameStrata("BACKGROUND")

local function Alpha(alpha)
	moveuibutton:SetAlpha(alpha)
	configbutton:SetAlpha(alpha)
	adbutton:SetAlpha(alpha)
	resetuibutton:SetAlpha(alpha)
	rluibutton:SetAlpha(alpha)
end

moveuibutton:SetScript("OnEnter", function() Alpha(1) end)
moveuibutton:SetScript("OnLeave", function() Alpha(0) end)
configbutton:SetScript("OnEnter",function() Alpha(1) end)
configbutton:SetScript("OnLeave", function() Alpha(0) end)
adbutton:SetScript("OnEnter", function() Alpha(1) end)
adbutton:SetScript("OnLeave", function() Alpha(0) end)
resetuibutton:SetScript("OnEnter",function() Alpha(1) end)
resetuibutton:SetScript("OnLeave", function() Alpha(0) end)
rluibutton:SetScript("OnEnter", function() Alpha(1) end)
rluibutton:SetScript("OnLeave", function() Alpha(0) end)
buttonsBG:SetScript("OnEnter", function() Alpha(1) end)
buttonsBG:SetScript("OnLeave", function() Alpha(0) end)

-- World Frame 
WorldStateAlwaysUpFrame:ClearAllPoints()
WorldStateAlwaysUpFrame:SetPoint("TOP", UIParent, "TOP", 0, T.Scale(-35))

