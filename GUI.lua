local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua",true))()
local paintgui = game:GetService("Players").LocalPlayer.PlayerGui.PaintGui

local window = lib.CreateLib("(SUBWAY) Spray Paint! [PATCHED]", "LightTheme")
local tab1 = window:NewTab("Paint Mod")
local sec1 = tab1:NewSection("Change Paint")
sec1:NewSlider("Layer", "Change layer", 20, 0,  function(slider)
    paintgui.Layer.TextLabel.Text = tostring(slider)
end)
sec1:NewSlider("Paint Size", "Change Paint Size", 3, 0,  function(slider)
    if not slider == 3 then 
    paintgui.PaintSize.TextLabel.Text = tostring(slider)
    else 
    paintgui.PaintSize.TextLabel.Text = "2.2"
    end
end)
sec1:NewToggle("Rainbow", "Toggle rainbow", function(state)
    if state then 
        game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
        paintgui:SetAttribute("RainbowEnabled", true)
    else 
        game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
        paintgui:SetAttribute("RainbowEnabled", false)
    end
end)
