---@diagnostic disable: undefined-global
---@meta _
local mods = rom.mods

---@diagnostic disable: lowercase-global
---@module 'LuaENVY-ENVY-auto'
mods["LuaENVY-ENVY"].auto()
rom = rom
_PLUGIN = PLUGIN
game = rom.game
modutil = mods["SGG_Modding-ModUtil"]
chalk = mods["SGG_Modding-Chalk"]
reload = mods["SGG_Modding-ReLoad"]
sjson = mods["SGG_Modding-SJSON"]
---@module 'zannc-GodsAPI-auto'
gods = mods["zannc-GodsAPI"].auto()

dioimproved = mods["churrnobyl-DionysusImproved"]

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

	mod.enemyProjFile = rom.path.combine(rom.paths.Content, "Game/Projectiles/Enemy_General_Projectiles.sjson")
	mod.enemyAnimFile = rom.path.combine(rom.paths.Content, "Game/Animations/Enemy_General_VFX.sjson")
	local enemyFile = rom.path.combine(rom.paths.Content, "Game/Units/Enemies.sjson")
	mod.Order = {
		"Name",
		"InheritFrom",
		"DetonateFx",
		"Type",
		"Fuse",
		"AllowTargetInvulnerable",
		"Damage",
		"DamageRadius",
		"DamageRadiusScaleY",
		"ImpactVelocity",
		"MaxAdjustRate",
		"Speed",
		"Range",
		"FlashBeforeExpireDuration",
		"DieWithOwner",
		"InheritOwnerElapsedTimeMultiplier",
		"CheckUnitImpact",
		"CheckObstacleImpact",
		"MaxVictimZ",
		"SpawnRadius",
		"IgnoreCoverageAngles",
		"GroupName",
		"DissipateFx",
		"AffectsEnemies",
		"AffectsFriends",
		"AffectsSelf",
		"CanBeReflected",
		"CanBeProjectileDefenseDestroyed",
		"CanBeProjectileDefenseDestroyedByName",
		"CanBeProjectileDefenseDestroyedByLayer",
		"CanBeProjectileDefenseDestroyedByName2",
		"DetonateSound",
		"Thing",
		"DisplayInEditor",
		"Effect",
		"ImmunityDuration",
		"TotalFuse",
		"MultiDetonate",
		"ClearCreateAnimations",
		"CreateAnimations",
		"Red",
		"Green",
		"Blue",
		"EndRed",
		"EndGreen",
		"EndBlue",
		"StartRed",
		"StartGreen",
		"StartBlue",
		"ColorFromOwner",
		"VisualFx",
		"CreateAnimationOnEnd",
		"EndAlpha",
		"Sound",
		"StopSoundOnFinishFade",
	}

	mod.ArtemisUpgradeName = gods.GetInternalGodName("Artemis")
	mod.AthenaUpgradeName = gods.GetInternalGodName("Athena")
	mod.DionysusUpgradeName = gods.GetInternalGodName("Dionysus")
	mod.HadesUpgradeName = gods.GetInternalGodName("Hades")
	local pMenu = mods["PonyWarrior-PonyMenu"]
	mod.zagJourney = mods["NikkelM-Zagreus_Journey"]

	local data = {
		[mod.ArtemisUpgradeName] = {
			enabled = false,
			codexName = "NPC_Artemis_01",
			enemyName = "NPC_Artemis_Field_01",
			projectileName = "DevotionArtemis",
			baseName = "Artemis",
		},

		[mod.AthenaUpgradeName] = {
			enabled = false,
			codexName = "NPC_Athena_01",
			enemyName = "NPC_Athena_01",
			projectileName = "DevotionAthena",
			baseName = "Athena",
		},

		[mod.DionysusUpgradeName] = {
			enabled = false,
			codexName = "NPC_Dionysus_01",
			enemyName = "NPC_Dionysus_01",
			projectileName = "DevotionDionysus",
			baseName = "Dionysus",
		},

		[mod.HadesUpgradeName] = {
			enabled = false,
			codexName = "NPC_Hades_01",
			enemyName = "NPC_Hades_Field_01",
		},
	}

	for _, v in pairs(data) do
		if not game.EnemyData[v.enemyName].WeaponUpgrades then
			game.EnemyData[v.enemyName].WeaponUpgrades = {}
		end
		if not game.EnemyData[v.enemyName].PriorityUpgrades then
			game.EnemyData[v.enemyName].PriorityUpgrades = {}
		end
	end

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

	local enemyLoot = {}
	local lootEnemy = {}

	for lootName, v in pairs(data) do
		if not v.enabled then
			goto continue
		end
		enemyLoot[v.enemyName] = lootName
		lootEnemy[lootName] = v.enemyName

		-- rom.log.warning(lootName, v)
		StackingandCostForGods(game.TraitData, v.enemyName)
		game.EnemyData[v.enemyName].AlwaysShowDefaultUseText = true

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

		--devotion stuff
		if lootName ~= mod.HadesUpgradeName then
			local roomWeaponName = lootName .. "RoomWeapon"
			local projectileName = "Devotion" .. v.baseName
			game.EnemyData[roomWeaponName] = {
				Name = roomWeaponName,
				InheritFrom = { "PassiveRoomWeapon" },

				WakeUpDelay = 1.75,

				DefaultAIData = {
					DeepInheritance = true,

					PreAttackStop = false,
					PreAttackEndStop = false,
					PostAttackStop = false,
					MoveWithinRange = true,
					PreAttackAngleTowardTarget = true,

					AttackDistance = 99999,
				},

				AIOptions = {
					"AttackerAI",
				},

				RunHistoryKilledByName = lootName,

				WeaponOptions = {
					projectileName,
				},
			}

			game.ProjectileData[projectileName] = {
				Name = projectileName,
				HitScreenshake = { Distance = 3, Speed = 1000, Duration = 0.08, FalloffSpeed = 3000 },
				HitSimSlowParameters = {
					{ ScreenPreWait = 0.02, Fraction = 0.01, LerpTime = 0 },
					{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0 },
				},
			}

			if lootName == mod.DionysusUpgradeName then
				--? Is this used or was this just defined for NO reason, does it work like IconSpin 0-50?
				game.ProjectileData[projectileName .. "2"] = {
					Name = projectileName .. "2",
					HitScreenshake = { Distance = 3, Speed = 1000, Duration = 0.08, FalloffSpeed = 3000 },
					HitSimSlowParameters = {
						{ ScreenPreWait = 0.02, Fraction = 0.01, LerpTime = 0 },
						{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0 },
					},
					AIData = {
						FireTicks = 1,
						FireIntervalMin = 4.0,
						FireIntervalMax = 8.0,

						AttackSlotsPerTick = 8,
						AttackSlotInterval = 0.2,
						AttackSlots = {
							{ Angle = 0, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 45, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 90, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 135, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 180, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 225, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 270, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
							{ Angle = 315, OffsetDistance = 200, OffsetScaleY = 0.48, OffsetFromAttacker = true },
						},
					},
				}
			end

			local upgrade = sjson.to_object({
				Name = roomWeaponName,
				InheritFrom = "PassiveRoomWeapon",
				DisplayInEditor = true,
				Thing = {
					EditorOutlineDrawBounds = false,
				},
			}, mod.Order)

			sjson.hook(enemyFile, function(data)
				table.insert(data.Units, upgrade)
			end)
		end
		::continue::
	end

	if pMenu then
		modutil.mod.Path.Wrap("CreateLoot", function(base, args)
			if enemyLoot[args.Name] then
				local lootName = enemyLoot[args.Name]
				if lootName then
					args.Name = lootName
				end
			end

			return base(args)
		end)

		for _, pMenuData in ipairs(pMenu.CommandData) do
			if enemyLoot[pMenuData.Name] then
				pMenuData.NoSpawn = false
			end
		end
	end

	-- Super Magical Code by Jowday, which doesn't give weird codex unlock popup
	modutil.mod.Path.Wrap("AttemptOpenUpgradeChoiceBoonInfo", function(base, screen, button)
		if lootEnemy[screen.Source.Name] then
			local npcName = lootEnemy[screen.Source.Name]
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

	-- Zag Journey compat for theseus
	if mod.zagJourney then
		modutil.mod.Path.Wrap("HandleLootPickup", function(base, currentRun, loot, args)
			base(currentRun, loot, args)
			if lootEnemy[loot.Name] then
				local npcName = lootEnemy[loot.Name]

				game.CurrentRun.LootTypeHistory[npcName] = (game.CurrentRun.LootTypeHistory[npcName] or 0) + 1
				game.CurrentRun.LootBiomeRecord[npcName] = (game.CurrentRun.LootBiomeRecord[npcName] or 0) + 1
			end
		end)
	end
end

local function on_reload() end

local loader = reload.auto_single()
modutil.once_loaded.game(function()
	if config.enabled == false then
		return
	end
	loader.load(on_ready, on_reload)
end)
