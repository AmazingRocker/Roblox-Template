-- ClientRuntime.client
-- AmazingRocker
-- June 02, 2022

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Load Core Modules
local Knit = require(ReplicatedStorage.Packages.Knit)
local Loader = require(ReplicatedStorage.Packages.Loader)

-- Populate Knit
Knit.Components = script.Parent.Components
Knit.Modules = script.Parent.Modules
Knit.Packages = ReplicatedStorage.Packages
Knit.Shared = ReplicatedStorage.Shared

-- Add Controllers & Components
Knit.AddControllersDeep(script.Parent.Controllers)
Loader.LoadChildren(script.Parent.Components)

-- Start Knit:
Knit.Start()
	:andThen(function()
		print("⚠️ | Report all the colored (red or yellow) messages in our server!")
		print("✅ | Knit-Client Started Successfully!")
		print("🧡 | Developed with love by Real_AmazingC & AmazingRock3r")
	end)
	:catch(function(err)
		print("⚠️ | Report all the colored (red or yellow) messages in our server!")
		warn("Knit-Client failure: ", err)
	end)
