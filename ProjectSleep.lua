local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Project Sleep", "GrapeTheme")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "Changes The Walkspeed", 250, 16, function(v)
   
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes The JumpPower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

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

    local spawnAreas = {"Town","Forest","Beach","Mine","Winter","Glacier","Desert","Volcano"}
    local FantasyAreas = {"Enchanted Forest","Ancient","Samurai","Candy","Haunted","Hell","Heaven","Heavens Gate"}
    local TechAreas = {"Tech","Tech City","Dark Tech","Steampunk", "Alien Lab", "Alien Forest", "Glitch", "Hacker Portal"}
    local 

    function FarmCoin(CoinID, PetID)
        game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
        game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
    end
    
    function GetMyPets()
        local returntable = {}
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
            if v.ClassName == 'TextButton' and v.Equipped.Visible then
                table.insert(returntable, v.Name)
            end
        end
        return returntable
    end
    
    function GetCoins(world, area)
        local returntable = {}
        local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
        for i,v in pairs(ListCoins) do
            if string.lower(v.w) == string.lower(world) and string.lower(v.a) == string.lower(area) then
                table.insert(returntable, i)
            end
        end
        return returntable
    end

    
    local AutoFarm = Window:NewTab("Farming")
    local AutoFarmSection = AutoFarm:NewSection("AutoFarm Toggle")
    AutoFarmSection:NewToggle("AutoFarm", "AutoFarms Everything In Selected Area", function(s)
    
      
        _G.Stop = not s
            _G.World = worldChoice
            _G.Area = areaChoice
            loadstring(game:HttpGet('https://pastebin.com/raw/tGUJRjqb'))()
    end)

    local AutoFarmSection = AutoFarm:NewSection("AutoFarm Areas {Select World First}")
    AutoFarmSection:NewDropdown("Worlds","Anti AFK ON",{
        "Spawn",
        "Fantasy",
        "Tech"
    },function(choice)
        worldChoice = choice
        if worldChoice == "Spawn" then
            areaDropdown:Refresh(spawnAreas)
        end
        if worldChoice == "Fantasy" then
            areaDropdown:Refresh(FantasyAreas)
        end
        if worldChoice == "Tech" then
            areaDropdown:Refresh(TechAreas)
        end
    end)
    areaDropdown = AutoFarmSection:NewDropdown("Areas","All Areas",spawnAreas
    ,function(choice)
        areaChoice = choice
    end)
  
    local Collecting = Window:NewTab("Collecting")
    local CollectingSection = Collecting:NewSection("Collector")

    _G.autoCollectLootBags = false
_G.autoCollectOrbs = false

CollectingSection:NewToggle("Collect Orbs", "AutoCollects Orbs!", function(state)
    if state then
        _G.autoCollectOrbs = true
        while true do wait()
            if _G.autoCollectOrbs == true then
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
                    workspace.__THINGS.__REMOTES["claim orbs"]:FireServer({{v.Name}}) 
                end
            end
        end
    else
        _G.autoCollectOrbs = false
    end
end)

CollectingSection:NewToggle("Collect Lootbags", "AutoCollects Lootbags!", function(state)
    if state then
        _G.autoCollectLootBags = true
        while true do wait()
            if _G.autoCollectLootBags == true then
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
                    v.CFrame = game:GetService("Players").LocalPlayer.Character.Head.CFrame
                end
            end
        end
    else
        _G.autoCollectLootBags = false
    end
end)

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Made by ok.#5789/gettsleep Enjoy! :D")
local AutoFarmSection = AutoFarm:NewSection("AutoFarm Misc")
AutoFarmSection:NewButton("Rejoin", "rejoins the server!", function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end)

AutoFarmSection:NewButton("Use Triple Coins", "uses triple coins(boost)!", function()
    local args = {
	    [1] = "Triple Coins"
    }
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer(args)
end)

AutoFarmSection:NewButton("Use Super Lucky", "uses super lucky(boost)!", function()
    local args1 = {
	    [1] = "Super Lucky"
    }
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer(args1)
end)

AutoFarmSection:NewButton("Use Ultra Lucky", "uses ultra lucky(boost)!", function()
    local args2 = {
	    [1] = "Ultra Lucky"
    }
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer(args2)
end)
AutoFarmSection:NewButton("Unlock Gamepasses", "Gives You Gamepasses!", function(state)

    if state then
        local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
        gmppath.Owns = function() return true end
    else
        local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
        gmppath.Owns = function() return false end
 
    end
end)

