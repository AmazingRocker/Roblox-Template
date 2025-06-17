--[[
ritual of runtime 🙏🤲

my ass hurts 💯
my ass also hurts 💯💯


i love roblox 💖😍😻😻😻
algorithm is 👑

front page prayers ftw 👑

May your code be bug-free and your Roblox avatar be bacon-filled.
May the algorithm bless us with accurate predictions and efficient computations.

              🕯
            🕯  🕯
          🕯      🕯
        🕯          🕯
      🕯              🕯
    🕯    FRONT PAGE    🕯
      🕯              🕯  🕯
        🕯          🕯      🕯
          🕯      🕯          🕯
            🕯  🕯              🕯
              🕯   <3 ROBLOX    🕯
            🕯  🕯              🕯
          🕯      🕯          🕯
        🕯          🕯      🕯
      🕯              🕯  🕯
    🕯     ALGORITHM    🕯
      🕯              🕯  🕯
        🕯          🕯      🕯
          🕯      🕯          🕯
            🕯  🕯              🕯
              🕯    SUCCESS     🕯
                🕯              🕯
                  🕯          🕯
                    🕯      🕯
                      🕯  🕯
                       🕯

Amen.

Yours truly,
AmazingRock3r (aaon) <3

]]

--

-- ServerRuntime.server
-- AmazingRocker
-- June 02, 2022

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

-- Load Core Modules
local Knit = require(ReplicatedStorage.Packages.Knit)
local Loader = require(ReplicatedStorage.Packages.Loader)

-- Populate Knit
Knit.Components = script.Parent.Components
Knit.Modules = script.Parent.Modules
Knit.ServerPackages = ServerScriptService.ServerPackages
Knit.Packages = ReplicatedStorage.Packages
Knit.Shared = ReplicatedStorage.Shared

-- Add Services & Components
Knit.AddServicesDeep(script.Parent.Services)
Loader.LoadChildren(script.Parent.Components)

-- Start Knit
Knit.Start()
	:andThen(function()
		print("✅ | Knit-Server Started Successfully!")
	end)
	:catch(function(err)
		print(string.format("Knit-Server failure %s", tostring(err)))
	end)
