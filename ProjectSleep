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
    local Options = Window:NewTab("AutoHatch")


        local Section = Options:NewSection("Auto Hatch Switch")
        Section:NewDropdown("On/Off", "Switch for Auto Hatching", {"On", "Off"}, function(v)
            _G.autohatch = false;
    while _G.autohatch == true do
    local args = {
        [1] = {
            [1] = v,
            [2] = true
        }
    }

    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
    wait()
    end
            
        end)


        local OptionsSection = Options:NewSection("Auto Hatch")
        OptionsSection:NewDropdown("Axolotl Ocean", "Axolotl Eggs", {"Axolotl Egg", "Shiny Axolotl Egg"}, function(v)
            _G.autohatch = true;
    while _G.autohatch == true do
    local args = {
        [1] = {
            [1] = v,
            [2] = false
        }
    }

    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
    wait()
    end
            
        end)

        OptionsSection:NewDropdown("Tech World", "Tech Eggs", {"Metal Egg", "Tech Egg", "Titanium Egg", "Dark Tech Egg", "Steampunk Egg", "Mechanical Egg", "Lab Egg", "Chemical Egg", "Alien Egg", "Martian Egg", "Planet Egg", "Glitch Egg", "Hacker Egg"}, function(v)
            _G.autohatch = true;
    while _G.autohatch == true do
    local args = {
        [1] = {
            [1] = v,
            [2] = false
        }
    }

    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
    wait()
    end
            
        end)

        OptionsSection:NewDropdown("Fantasy World", "Fantasy Eggs", {"Enchanted Egg", "Relic Egg", "Samurai Egg", "Rainbow Egg", "Haunted Egg", "Hell Egg", "Heaven Egg", "Empyrean Egg"}, function(v)
            _G.autohatch = true;
    while _G.autohatch == true do
    local args = {
        [1] = {
            [1] = v,
            [2] = false
        }
    }

    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
    wait()
    end
            
        end)

        OptionsSection:NewDropdown("Spawn World", "Spawn Eggs", {"Cracked Egg", "Spotted Egg", "Wood Egg", "Grass Egg", "Beachball Egg", "Coconut Egg", "Rock Egg", "Geode Egg", "Snow Egg", "Ice Egg", "Icicle Egg", "Yeti Egg", "Cactus Egg", "Spiked Egg", "Obsidian Egg", "Magma Egg", "Dominus Egg"}, function(v)
            _G.autohatch = true;
    while _G.autohatch == true do
    local args = {
        [1] = {
            [1] = v,
            [2] = false
        }
    }

    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
    wait()
    end
            
        end)

        -- AUTOFARM
    
        local AutoFarm = Window:NewTab("AutoFarm")
        local AutoFarmSection = AutoFarm:NewSection("AutoFarm")
        AutoFarmSection:NewDropdown("Areas", "Autofarms The Selected Area", {"Town", "Forest", "Beach", "Mine", "Winter", "Glacier","Desert", "Volcano"}, function(currentOption)
        
        end)
   
