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
gods = mods["zannc-GodsAPI"]

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

local function on_ready()
	gods.Initialize(_PLUGIN.guid)
	mod = modutil.mod.Mod.Register(_PLUGIN.guid)

	local package = rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, _PLUGIN.guid)

	modutil.mod.Path.Wrap("SetupMap", function(base)
		game.LoadPackages({ Name = package })
		base()
	end)

	StackingandCostForGods(game.TraitData, "NPC_Artemis_Field_01")
	StackingandCostForGods(game.TraitData, "NPC_Athena_01")
	StackingandCostForGods(game.TraitData, "NPC_Dionysus_01")

	game.EnemyData.NPC_Dionysus_01.AlwaysShowDefaultUseText = true
	game.EnemyData.NPC_Athena_01.AlwaysShowDefaultUseText = true

	-- Super Magical Code by Jowday, which doesn't give weird codex unlock popup
	modutil.mod.Path.Wrap("AttemptOpenUpgradeChoiceBoonInfo", function(base, screen, button)
		if screen.Source.Name == "AthenaUpgrade" then
			local newScreen = {
				Source = {
					Name = "NPC_Athena_01",
				},
			}
			base(newScreen, button)
		elseif screen.Source.Name == "ArtemisUpgrade" then
			local newScreen = {
				Source = {
					Name = "NPC_Artemis_Field_01",
				},
			}
			base(newScreen, button)
		elseif screen.Source.Name == "DionysusUpgrade" then
			local newScreen = {
				Source = {
					Name = "NPC_Dionysus_01",
				},
			}
			base(newScreen, button)
		else
			base(screen, button)
		end
	end)

	local godList = {}
	game.EnemyData.NPC_Artemis_Field_01.WeaponUpgrades = {}
	game.EnemyData.NPC_Athena_01.WeaponUpgrades = {}
	game.EnemyData.NPC_Dionysus_01.WeaponUpgrades = {}

	if config.Artemis.enabled then
		table.insert(godList, "NPC_Artemis_01")
		import("gods/artemisLoot.lua")
	end
	if config.Athena.enabled then
		table.insert(godList, "NPC_Athena_01")
		import("gods/athenaLoot.lua")
	end
	if config.Dionysus.enabled then
		table.insert(godList, "NPC_Dionysus_01")
		import("gods/dionysusLoot.lua")
	end

	for k, npcVal in pairs(godList) do
		if not game.CodexData.OlympianGods.Entries[npcVal] then
			return
		end
		game.CodexData.OlympianGods.Entries[npcVal].NoRequirements = false
	end
end

local function on_reload() end

local loader = reload.auto_single()

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

modutil.once_loaded.game(function()
	if config.enabled == false then
		return
	end
	loader.load(on_ready, on_reload)

	local npcGods = {
		ArtemisUpgrade = "NPC_Artemis_Field_01",
		AthenaUpgrade = "NPC_Athena_01",
		DionysusUpgrade = "NPC_Dionysus_01",
	}

	for k, godName in pairs(npcGods) do
		local traitIndex = getTraitIndex(godName)
		game.EnemyData[godName].TraitIndex = traitIndex
	end
end)
