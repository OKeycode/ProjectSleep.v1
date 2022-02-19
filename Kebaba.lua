local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kebaber Ultimate v1", "Midnight")
  -- CREDITS
  local Credits = Window:NewTab("Credits")
  local CreditsSection = Credits:NewSection("Made by ok.#5789 Enjoy! :D")
    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes The Walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes The JumpPower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    -- WINDOW
    local Options = Window:NewTab("Options")
    local Section = Options:NewSection("Toggles")
  
    Section:NewToggle("Auto Hatch", "Turns on", function(state)
    if state then
      _G.autohatch1 = true
      while _G.autohatch1 == true do
      local A_1 = 
{
	[1] = "Cracked Egg", 
	[2] = false
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]
Event:InvokeServer(A_1)
      wait()
      end
    else
      _G.autohatch1 = false
    end
end)
