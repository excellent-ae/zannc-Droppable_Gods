---@meta _
---@diagnostic disable: lowercase-global

local package = rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, _PLUGIN.guid)

modutil.mod.Path.Wrap("SetupMap", function(base)
	game.LoadPackages({ Name = package })
	base()
end)

-- * Data from Apollo - LootData_Apollo, Hera, Aphrodite etc
zannc_BaseGod = {
	NarrativeContextArtFlippable = false,
	GodLoot = true, -- * without this, you will have to manually do drop requirements, stacking etc.
	TreatAsGodLootByShops = true,
	TextLinesIgnoreQuests = true,
	GoldConversionEligible = true,
	UsePromptOffsetX = 80,
	CanReceiveGift = true,
	AlwaysShowDefaultUseText = true,
	Weight = 10, -- This is only here for weights in the shop - does nothing on its own.
	DestroyOnPickup = true,
	SelectionSound = "/SFX/Menu Sounds/GeneralWhooshMENU",
	ConfirmSound = "/SFX/Menu Sounds/GodBoonChoiceConfirm",
	BackgroundAnimation = "DialogueBackground_Olympus_BoonScreen",
	OnUsedFunctionArgs = { PreserveContextArt = true },
	-- InheritFrom = { "BaseLoot", "BaseSoundPackage" },
	ReplaceSpecialForGoldify = true,
	BanUnpickedBoonsEligible = true,

	GameStateRequirements = {},
	LastRewardEligible = true,
	-- RequireUseToGift = true,
	AnimOffsetZ = 80,
	LootRejectionAnimation = "BoonDissipateA_Zeus",
	NarrativeContextArt = "DialogueBackground_Olympus",
	GoldifyValue = 400,
	BoxAnimation = "DialogueSpeechBubbleLight",
	BoxExitAnimation = "DialogueSpeechBubbleLightOut",
	--     BoxAnimation = "DialogueSpeechBubble", // WAS using this, now not?

	-- OffersElementalTrait = { "Air", "Water", "Earth" }, // Maybe only if you are adding custom boons idk

	ManualRecordUse = true,
	UsePromptOffsetY = 48,
	ColorGrade = "ZeusLightning",

	UseText = "UseLoot",
	OnUsedFunctionName = "UseLoot",
	UseTextTalkAndGift = "UseLootAndGift",
	UseTextTalkAndSpecial = "UseLootAndSpecial",
	BlockedLootInteractionText = "UseLootLocked",
	UseTextTalkGiftAndSpecial = "UseLootGiftAndSpecial",
	Consumables = {},

	-- ? Everything from this onwards *might* need to be changed to whatever god you want (some can colours can stay the same)
	Color = { 250, 250, 215, 255 },
	NarrativeTextColor = { 32, 32, 30, 255 },
	NameplateSpeakerNameColor = Color.DialogueSpeakerNameOlympian,
	NameplateDescriptionColor = { 145, 45, 90, 255 },
	LightingColor = { 1, 0.91, 0.54, 1 },
	LootColor = { 255, 128, 32, 255 },
	SubtitleColor = { 255, 255, 205, 255 },
	EmoteOffsetX = 30,
	EmoteOffsetY = -320,

	Name = "ApolloUpgrade",
	Speaker = "NPC_Apollo_01",
	SpeakerName = "Apollo",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_ApolloUpgrade",
	PortraitEnterSound = "/SFX/ApolloBoonHarpPoof",
	LootRejectedText = "Player_GodDispleased_ApolloUpgrade",
	DoorIcon = "BoonDropApolloPreview",
	DoorUpgradedIcon = "BoonDropApolloUpgradedPreview",
	Icon = "BoonSymbolApollo",
	BoonInfoIcon = "BoonInfoSymbolApolloIcon",
	SpawnSound = "/SFX/ApolloBoonHarpPoof",
	LoadPackages = { "Apollo" },
	OverlayAnim = "ApolloOverlay",
	Gender = "Male",
	FlavorTextIds = { "ApolloUpgrade_FlavorText01", "ApolloUpgrade_FlavorText02", "ApolloUpgrade_FlavorText03" },
	UpgradeSelectedSound = "/SFX/ApolloBoonChoice",
	WrathPortrait = "Portrait_Apollo_Default_01_Wrath",
	EchoLastRewardId = "EchoLastRewardBoon_ApolloUpgrade", -- This might not need to have Upgrade at the end
	Portrait = "Portrait_Apollo_Default_01",
	MenuTitle = "UpgradeChoiceMenu_Title_ApolloUpgrade",
	-- Refer to Artemis for next 3
	BoonInfoTitleText = nil, --* Display name in codex, needed for npcs
	SurfaceShopText = nil, --* Not used on main gods, primarily health, mana, armour, some NPCs like Hermes
	SurfaceShopIcon = nil, --* Not used on main gods, primarily health, mana, armour, some NPCs like Hermes

	--#region Traits
	-- ! Example Traits
	-- Traits // "ApolloRetaliateBoon", "PerfectDamageBonusBoon", "BlindChanceBoon", "ApolloBlindBoon", "ApolloExCastBoon", "ApolloCastAreaBoon", "DoubleStrikeChanceBoon", "ElementalRallyBoon", "DoubleExManaBoon", " ApolloSecondStageCastBoon", " RaiseDeadBoon", " PoseidonSplashSprintBoon", " StormSpawnBoon", " ManaBurstCountBoon", " CoverRegenerationBoon", " BlindClearBoon", " DoubleSwordBoon"
	-- TraitIndex is the Traits table
	-- PriorityUpgrades and WeaponUpgrades is the same // "ApolloWeaponBoon", "ApolloSpecialBoon", "ApolloCastBoon", "ApolloSprintBoon", "ApolloManaBoon"
	--#endregion
	PriorityUpgrades = {},
	WeaponUpgrades = {},
	Traits = {},
	TraitIndex = {},

	-- ! Voice Lines from here downwards
	--#region Voicelines
	FirstSpawnVoiceLines = {},

	OnSpawnVoiceLines = {},

	UpgradeMenuOpenVoiceLines = {
		{ GlobalVoiceLines = "HeraclesBoonReactionVoiceLines" },
	},

	DuoPickupTextLines = {},

	InteractTextLineSets = {},

	BoughtTextLines = {},

	RejectionTextLines = {},

	RejectionVoiceLines = {
		[1] = { GlobalVoiceLines = "GodRejectedVoiceLines" },
	},

	SwapUpgradePickedVoiceLines = {
		BreakIfPlayed = true,
		RandomRemaining = true,
		PreLineWait = 1.05,
		SuccessiveChanceToPlay = 0.33,
		UsePlayerSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "CurrentRoom", "ReplacedTraitSource" },
			},
		},
	},

	MakeUpTextLines = {},

	GiftTextLineSets = {},

	GiftGivenVoiceLines = {},

	FullSuperActivatedVoiceLines = {},

	DeathTauntVoiceLines = {},

	RarityUpgradeVoiceLines = { { GlobalVoiceLines = "ZagreusRarifyVoiceLines" } },

	BlindBoxOpenedVoiceLines = {},

	--#endregion
}

local requirementName = { MaxHealthDrop = true, MaxManaDrop = true, RoomMoneyDrop = true, StackUpgrade = true, Devotion = true }

function zannc_AddGodtoRunData(runData, upgrade)
	for _, entry in ipairs(runData) do
		if not requirementName[entry.Name] then
			return
		end

		if not entry.GameStateRequirements then
			return
		end

		for _, requirement in ipairs(entry.GameStateRequirements) do
			if requirement.CountOf then
				table.insert(requirement.CountOf, upgrade)
			end
		end
	end
end

-- Do this before it gets copied over into the main god
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
			-- print("Set BlockStacking = true for " .. traitName .. " in " .. godName)
		end
		if traitsToBlock[traitName] and not entry.Cost then
			entry.Cost = 30
			-- print("Set Cost to 30 for " .. traitName .. " in " .. godName)
		end
	end
end

StackingandCostForGods(game.TraitData, "NPC_Artemis_Field_01")
StackingandCostForGods(game.TraitData, "NPC_Athena_01")
StackingandCostForGods(game.TraitData, "NPC_Dionysus_01")

game.EnemyData.NPC_Dionysus_01.AlwaysShowDefaultUseText = true
game.EnemyData.NPC_Athena_01.AlwaysShowDefaultUseText = true

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

ModUtil.LoadOnce(function()
	local npcGods = {
		ArtemisUpgrade = "NPC_Artemis_Field_01",
		AthenaUpgrade = "NPC_Athena_01",
		DionysusUpgrade = "NPC_Dionysus_01",
	}

	for k, godName in pairs(npcGods) do
		local traits = game.EnemyData[godName].Traits
		local traitIndex = getTraitIndex(godName)

		if not traits.Slot then -- This...POS. - If it has a slot, do not add to traits or else it will not allow for trait replacements.
			game.LootData[k].Traits = traits
		end
		game.LootData[k].TraitIndex = traitIndex
		game.EnemyData[godName].TraitIndex = traitIndex
		game.ScreenData.BoonInfo.TraitDictionary[k] = traitIndex
		game.ScreenData.BoonInfo.TraitSortOrder[k] = traits
	end
end)

-- Just creates a new entry based on original, just so it doesnt crash when you open from boon select
--? game.CodexData.OlympianGods.Entries.ArtemisUpgrade = game.CodexData.OlympianGods.Entries.NPC_Artemis_01

-- Super Magical Code by Jowday, this way you dont have to do the method above, and doesn't give weird codex unlock popup
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

--#region requirements
-- * Requirements Stuff
-- !Artemis
if not config.Artemis.ArtemisNoRequirements then
	game.NamedRequirementsData.ArtemisUpgradeRequirements = {
		-- run requirements
		{
			FunctionName = "RequiredNotInStore",
			FunctionArgs = { Name = "ShopArtemisUpgrade" },
		},
		{
			Path = { "CurrentRun", "BiomeUseRecord" },
			HasNone = { "ArtemisUpgrade", "ShopArtemisUpgrade" },
		},
		{
			Path = { "CurrentRun", "LootTypeHistory", "ArtemisUpgrade" },
			Comparison = "<=",
			Value = config.Artemis.ArtemisSpawnAmount,
		},
	}

	local ArtemisUpgrade = {
		Name = "ArtemisUpgrade",
		GameStateRequirements = {
			NamedRequirements = { "ArtemisUpgradeRequirements" },
		},
	}

	table.insert(game.RewardStoreData.HubRewards, ArtemisUpgrade)
	table.insert(game.RewardStoreData.RunProgress, ArtemisUpgrade)

	game.ConsumableData.ShopArtemisUpgrade = {
		InheritFrom = { "BaseConsumable" },
		ResourceCosts = {
			Money = 150,
		},
		UseText = "UsePurchaseLoot",
		UseFunctionName = "rom.mods." .. _PLUGIN.guid .. ".CreateArtemisLoot",
		SurfaceShopText = "ArtemisUpgrade_Store",
		SurfaceShopIcon = "ArtemisUpgradeShop",
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "BiomeUseRecord" },
				HasNone = { "ArtemisUpgrade", "ShopArtemisUpgrade" },
			},
			{
				Path = { "CurrentRun", "LootTypeHistory", "ArtemisUpgrade" },
				Comparison = "<=",
				Value = config.Artemis.ArtemisSpawnAmount,
			},
		},
	}

	table.insert(game.StoreData.SurfaceShop.GroupsOf[2].OptionsData, { Name = "ShopArtemisUpgrade" })
	table.insert(game.StoreData.WorldShop.GroupsOf[1].OptionsData, { Name = "ShopArtemisUpgrade" })
	table.insert(game.StoreData.I_WorldShop.GroupsOf[4].OptionsData, { Name = "ShopArtemisUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })
	table.insert(game.StoreData.Q_WorldShop.GroupsOf[3].OptionsData, { Name = "ShopArtemisUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })

	function mod.CreateArtemisLoot(args)
		args = args or {}
		return CreateLoot(MergeTables(args, { Name = "ArtemisUpgrade", AutoLoadPackages = true }))
	end

	modutil.mod.Path.Wrap("SpawnStoreItemInWorld", function(base, itemData, kitId)
		if not itemData then
			return
		end
		local spawnedItem = nil
		if itemData.Name == "ShopArtemisUpgrade" then
			spawnedItem = mod.CreateArtemisLoot({
				SpawnPoint = kitId,
				ResourceCosts = itemData.ResourceCosts or GetProcessedValue(ConsumableData[itemData.Name].ResourceCosts),
				DoesNotBlockExit = true,
				SuppressSpawnSounds = true,
				BoughtFromShop = true,
				AddBoostedAnimation = itemData.AddBoostedAnimation,
				BoonRaritiesOverride = itemData.BoonRaritiesOverride,
			})
			spawnedItem.CanReceiveGift = false
			SetThingProperty({ Property = "SortBoundsScale", Value = 1.0, DestinationId = spawnedItem.ObjectId })
		end
		base(itemData, kitId)
	end)
end

--! Athena
if not config.Athena.AthenaNoRequirements then
	game.NamedRequirementsData.AthenaUpgradeRequirements = {
		-- run requirements
		{
			FunctionName = "RequiredNotInStore",
			FunctionArgs = { Name = "ShopAthenaUpgrade" },
		},
		{
			Path = { "CurrentRun", "BiomeUseRecord" },
			HasNone = { "AthenaUpgrade", "ShopAthenaUpgrade" },
		},
		{
			Path = { "CurrentRun", "LootTypeHistory", "AthenaUpgrade" },
			Comparison = "<=",
			Value = config.Athena.AthenaSpawnAmount,
		},
	}

	local AthenaUpgrade = {
		Name = "AthenaUpgrade",
		GameStateRequirements = {
			NamedRequirements = { "AthenaUpgradeRequirements" },
		},
	}

	table.insert(game.RewardStoreData.HubRewards, AthenaUpgrade)
	table.insert(game.RewardStoreData.RunProgress, AthenaUpgrade)

	game.ConsumableData.ShopAthenaUpgrade = {
		InheritFrom = { "BaseConsumable" },
		ResourceCosts = {
			Money = 150,
		},
		UseText = "UsePurchaseLoot",
		UseFunctionName = "rom.mods." .. _PLUGIN.guid .. ".CreateAthenaLoot",
		SurfaceShopText = "AthenaUpgrade_Store",
		SurfaceShopIcon = "AthenaUpgradeShop",
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "BiomeUseRecord" },
				HasNone = { "AthenaUpgrade", "ShopAthenaUpgrade" },
			},
			{
				Path = { "CurrentRun", "LootTypeHistory", "AthenaUpgrade" },
				Comparison = "<=",
				Value = config.Athena.AthenaSpawnAmount,
			},
		},
	}

	table.insert(game.StoreData.SurfaceShop.GroupsOf[2].OptionsData, { Name = "ShopAthenaUpgrade" })
	table.insert(game.StoreData.WorldShop.GroupsOf[1].OptionsData, { Name = "ShopAthenaUpgrade" })
	table.insert(game.StoreData.I_WorldShop.GroupsOf[4].OptionsData, { Name = "ShopAthenaUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })
	table.insert(game.StoreData.Q_WorldShop.GroupsOf[3].OptionsData, { Name = "ShopAthenaUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })

	function mod.CreateAthenaLoot(args)
		args = args or {}
		return CreateLoot(MergeTables(args, { Name = "AthenaUpgrade", AutoLoadPackages = true }))
	end

	modutil.mod.Path.Wrap("SpawnStoreItemInWorld", function(base, itemData, kitId)
		if not itemData then
			return
		end
		local spawnedItem = nil
		if itemData.Name == "ShopAthenaUpgrade" then
			spawnedItem = mod.CreateArtemisLoot({
				SpawnPoint = kitId,
				ResourceCosts = itemData.ResourceCosts or GetProcessedValue(ConsumableData[itemData.Name].ResourceCosts),
				DoesNotBlockExit = true,
				SuppressSpawnSounds = true,
				BoughtFromShop = true,
				AddBoostedAnimation = itemData.AddBoostedAnimation,
				BoonRaritiesOverride = itemData.BoonRaritiesOverride,
			})
			spawnedItem.CanReceiveGift = false
			SetThingProperty({ Property = "SortBoundsScale", Value = 1.0, DestinationId = spawnedItem.ObjectId })
		end
		base(itemData, kitId)
	end)
end

--! Dionysus
if not config.Dionysus.DionysusNoRequirements then
	game.NamedRequirementsData.DionysusUpgradeRequirements = {
		-- run requirements
		{
			FunctionName = "RequiredNotInStore",
			FunctionArgs = { Name = "ShopDionysusUpgrade" },
		},
		{
			Path = { "CurrentRun", "BiomeUseRecord" },
			HasNone = { "DionysusUpgrade", "ShopDionysusUpgrade" },
		},
		{
			Path = { "CurrentRun", "LootTypeHistory", "DionysusUpgrade" },
			Comparison = "<=",
			Value = config.Dionysus.DionysusSpawnAmount,
		},
	}

	local DionysusUpgrade = {
		Name = "DionysusUpgrade",
		GameStateRequirements = {
			NamedRequirements = { "DionysusUpgradeRequirements" },
		},
	}

	table.insert(game.RewardStoreData.HubRewards, DionysusUpgrade)
	table.insert(game.RewardStoreData.RunProgress, DionysusUpgrade)

	game.ConsumableData.ShopDionysusUpgrade = {
		InheritFrom = { "BaseConsumable" },
		ResourceCosts = {
			Money = 150,
		},
		UseText = "UsePurchaseLoot",
		UseFunctionName = "rom.mods." .. _PLUGIN.guid .. ".CreateDionysusLoot",
		SurfaceShopText = "DionysusUpgrade_Store",
		SurfaceShopIcon = "DionysusUpgradeShop",
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "BiomeUseRecord" },
				HasNone = { "DionysusUpgrade", "ShopDionysusUpgrade" },
			},
			{
				Path = { "CurrentRun", "LootTypeHistory", "DionysusUpgrade" },
				Comparison = "<=",
				Value = config.Dionysus.DionysusSpawnAmount,
			},
		},
	}

	table.insert(game.StoreData.SurfaceShop.GroupsOf[2].OptionsData, { Name = "ShopDionysusUpgrade" })
	table.insert(game.StoreData.WorldShop.GroupsOf[1].OptionsData, { Name = "ShopDionysusUpgrade" })
	table.insert(game.StoreData.I_WorldShop.GroupsOf[4].OptionsData, { Name = "ShopDionysusUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })
	table.insert(game.StoreData.Q_WorldShop.GroupsOf[3].OptionsData, { Name = "ShopDionysusUpgrade", Cost = 500, UpgradeChance = 1.0, UpgradedCost = 500, ReplaceRequirements = nil })

	function mod.CreateDionysusLoot(args)
		args = args or {}
		return CreateLoot(MergeTables(args, { Name = "DionysusUpgrade", AutoLoadPackages = true }))
	end

	modutil.mod.Path.Wrap("SpawnStoreItemInWorld", function(base, itemData, kitId)
		if not itemData then
			return
		end
		local spawnedItem = nil
		if itemData.Name == "ShopDionysusUpgrade" then
			spawnedItem = mod.CreateArtemisLoot({
				SpawnPoint = kitId,
				ResourceCosts = itemData.ResourceCosts or GetProcessedValue(ConsumableData[itemData.Name].ResourceCosts),
				DoesNotBlockExit = true,
				SuppressSpawnSounds = true,
				BoughtFromShop = true,
				AddBoostedAnimation = itemData.AddBoostedAnimation,
				BoonRaritiesOverride = itemData.BoonRaritiesOverride,
			})
			spawnedItem.CanReceiveGift = false
			SetThingProperty({ Property = "SortBoundsScale", Value = 1.0, DestinationId = spawnedItem.ObjectId })
		end
		base(itemData, kitId)
	end)
end
--#endregion
