---@meta _
---@diagnostic disable-next-line: undefined-global
local mods = rom.mods

---@diagnostic disable: lowercase-global
---@module 'LuaENVY-ENVY-auto'
mods["LuaENVY-ENVY"].auto()

---@diagnostic disable-next-line: undefined-global
rom = rom
---@diagnostic disable-next-line: undefined-global
_PLUGIN = PLUGIN

game = rom.game

modutil = mods["SGG_Modding-ModUtil"]

chalk = mods["SGG_Modding-Chalk"]
reload = mods["SGG_Modding-ReLoad"]
sjson = mods["SGG_Modding-SJSON"]
---@module 'zannc-GodsAPI-auto'
gods = mods["zannc-GodsAPI"].auto()

---@module 'Droppable_Gods-zannc-config'
config = chalk.auto("config.lua")
public.config = config

import_as_fallback(rom.game)

--* Do this before it gets copied over into the main god
local function StackingandCostForGods(traits, godName)
	local traitsToBlock = {}

	local godData = game.EnemyData[godName]
	if godData and godData.Traits then
		for _, traitName in ipairs(godData.Traits) do
			traitsToBlock[traitName] = true
		end
	end

	for traitName, entry in pairs(traits) do
		if traitsToBlock[traitName] and not entry.BlockStacking then
			entry.BlockStacking = true
		end
		if traitsToBlock[traitName] and not entry.Cost then
			entry.Cost = 30
		end
	end
end

local function getTraitIndex(godName)
	local traitIndex = {}

	local godData = game.EnemyData[godName]
	if godData and godData.Traits then
		for _, traitName in ipairs(godData.Traits) do
			traitIndex[traitName] = true
		end
	end
	return traitIndex
end

local function on_ready()
	mod = modutil.mod.Mod.Register(_PLUGIN.guid)

	local package = rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, _PLUGIN.guid)
	modutil.mod.Path.Wrap("SetupMap", function(base)
		game.LoadPackages({ Name = package })
		base()
	end)

	mod.ArtemisUpgradeName = gods.GetInternalGodName("Artemis")
	mod.AthenaUpgradeName = gods.GetInternalGodName("Athena")
	mod.DionysusUpgradeName = gods.GetInternalGodName("Dionysus")
	mod.HadesUpgradeName = gods.GetInternalGodName("Hades")
	local pMenu = mods["PonyWarrior-PonyMenu"]

	local data = {
		[mod.ArtemisUpgradeName] = {
			codexName = "NPC_Artemis_01",
			enemyName = "NPC_Artemis_Field_01",
			enabled = false,
		},

		[mod.AthenaUpgradeName] = {
			codexName = "NPC_Athena_01",
			enemyName = "NPC_Athena_01",
			enabled = false,
		},

		[mod.DionysusUpgradeName] = {
			codexName = "NPC_Dionysus_01",
			enemyName = "NPC_Dionysus_01",
			enabled = false,
		},

		[mod.HadesUpgradeName] = {
			codexName = "NPC_Hades_01",
			enemyName = "NPC_Hades_Field_01",
			enabled = false,
		},
	}

	if config.Artemis.enabled then
		data[mod.ArtemisUpgradeName].enabled = true
		import("gods/artemisLoot.lua")
	end
	if config.Athena.enabled then
		data[mod.AthenaUpgradeName].enabled = true
		import("gods/athenaLoot.lua")
	end
	if config.Dionysus.enabled then
		data[mod.DionysusUpgradeName].enabled = true
		import("gods/dionysusLoot.lua")
	end
	if config.Hades.enabled then
		data[mod.HadesUpgradeName].enabled = true
		import("gods/hadesLoot.lua")
	end

	local godLoot = {}
	local godNames = {}

	for lootName, v in pairs(data) do
		if not v.enabled then
			break
		end
		godLoot[v.enemyName] = lootName
		godLoot[lootName] = v.enemyName
		godNames[v.enemyName] = true

		-- rom.log.warning(lootName, v)
		StackingandCostForGods(game.TraitData, v.enemyName)
		game.EnemyData[v.enemyName].AlwaysShowDefaultUseText = true
		game.EnemyData[v.enemyName].WeaponUpgrades = {}

		-- a fix for if you insert into NPC table too, it needs to update the traitindex
		local traitIndex = getTraitIndex(v.enemyName)
		game.EnemyData[v.enemyName].TraitIndex = traitIndex

		--codex stuff now
		if game.CodexData.OlympianGods.Entries[v.codexName] then
			game.CodexData.OlympianGods.Entries[v.codexName].NoRequirements = false
			game.CodexData.OlympianGods.Entries[v.codexName].BoonInfoAllowPinning = true
		end

		if game.CodexData.OtherDenizens.Entries[v.codexName] then
			game.CodexData.OtherDenizens.Entries[v.codexName].NoRequirements = false
			game.CodexData.OtherDenizens.Entries[v.codexName].BoonInfoAllowPinning = true
		end
	end

	if pMenu then
		modutil.mod.Path.Wrap("CreateLoot", function(base, args)
			if godNames[args.Name] then
				local lootName = godLoot[args.Name]
				if lootName then
					args.Name = lootName
				end
			end

			return base(args)
		end)

		for _, pMenuData in ipairs(pMenu.CommandData) do
			if godNames[pMenuData.Name] then
				pMenuData.NoSpawn = false
			end
		end
	end

	-- Super Magical Code by Jowday, which doesn't give weird codex unlock popup
	modutil.mod.Path.Wrap("AttemptOpenUpgradeChoiceBoonInfo", function(base, screen, button)
		if godNames[screen.Source.Name] then
			local npcName = godLoot[screen.Source.Name]
			if npcName then
				local newScreen = {
					Source = {
						Name = npcName,
					},
				}
				return base(newScreen, button)
			end
		end
		return base(screen, button)
	end)
end

local function on_reload() end

local loader = reload.auto_single()
modutil.once_loaded.game(function()
	if config.enabled == false then
		return
	end
	loader.load(on_ready, on_reload)
end)
