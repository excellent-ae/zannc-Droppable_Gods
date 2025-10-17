---@meta _
---@diagnostic disable: lowercase-global

local athenaTraitIndex = {
	InvulnerabilityDashBoon = true,
	RetaliateInvulnerabilityBoon = true,
	FocusLastStandBoon = true,
	DeathDefianceRefillBoon = true,
	AthenaProjectileBoon = true,
	InvulnerabilityCastBoon = true,
	ManaSpearBoon = true,

	OlympianSpellCountBoon = true,
}

local athenaBase = game.DeepCopyTable(zannc_BaseGod)

game.EnemyData.NPC_Athena_01.GiftTextLineSets.AthenaGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { "AthenaUpgrade", "NPC_Athena_01" } },
}

local overrides = {
	Name = "AthenaUpgrade",
	Speaker = "NPC_Athena_01",
	SpeakerName = "Athena",
	BoonInfoIcon = "BoonInfoSymbolAthenaIcon",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_AthenaUpgrade",
	LootRejectedText = "Player_GodDispleased_AthenaUpgrade",
	-- WrathPortrait = "Portrait_Athena_Wrath_01", -- ! Nope, doesn't exist
	DoorIcon = "BoonDropAthenaPreview",
	DoorUpgradedIcon = "BoonDropAthenaUpgradedPreview",
	Icon = "BoonSymbolAthena",
	SpawnSound = "/SFX/AthenaWrathHolyShield",
	PortraitEnterSound = "/SFX/AthenaWrathHolyShield",
	OverlayAnim = "AthenaOverlay",
	Gender = "Female",
	FlavorTextIds = { "AthenaUpgrade_FlavorText01", "AthenaUpgrade_FlavorText02", "AthenaUpgrade_FlavorText03" },
	UpgradeSelectedSound = "/SFX/AthenaBoonChoice",
	EchoLastRewardId = "EchoLastRewardBoon_Athena",
	Portrait = "Portrait_Athena_Default_01",
	LoadPackages = { "Athena" }, -- * Also has NPC_Athena_01

	PriorityUpgrades = {},
	WeaponUpgrades = {},
	Traits = game.EnemyData.NPC_Athena_01.Traits,
	TraitIndex = athenaTraitIndex,
	MenuTitle = "UpgradeChoiceMenu_Athena",
	BoonInfoTitleText = "UpgradeChoiceMenu_Athena", --* Display name in codex, needed for npcs
	SurfaceShopIcon = "BoonInfoSymbolAthenaIcon", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for Athena
	SurfaceShopText = "AthenaUpgrade_Store", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for Athena

	Color = { 91, 255, 100, 255 },
	LootColor = { 175, 157, 255, 255 },
	LightingColor = { 175, 157, 255, 255 },
	SubtitleColor = Color.AthenaVoice,

	-- ! Voice Lines from here downwards
	--#region Voicelines

	OnSpawnVoiceLines = {
		BreakIfPlayed = true,
		RandomRemaining = true,
		PlayOnceFromTableThisRun = true,
		PreLineWait = 0.85,
		SuccessiveChanceToPlay = 0.25,
		GameStateRequirements = {
			NamedRequirements = { "OlympianOnSpawnVoiceLinesAllowed" },
		},

		{
			Cue = "/VO/Melinoe_1472",
			Text = "It's her.",
		},
		{
			Cue = "/VO/Melinoe_1477",
			Text = "She's back.",
		},
		{
			Cue = "/VO/MelinoeField_4856",
			Text = "Athena!",
		},
		{
			Cue = "/VO/MelinoeField_4857",
			Text = "Lady Athena!",
		},
	},

	GiftTextLineSets = game.EnemyData.NPC_Athena_01.GiftTextLineSets,
	GiftGivenVoiceLines = game.EnemyData.NPC_Athena_01.GiftGivenVoiceLines,

	FirstSpawnVoiceLines = {},

	InteractTextLineSets = game.EnemyData.NPC_Athena_01.InteractTextLineSets, -- ! may need to change and do manually, possibly just do NPCChat1-30

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

	BoughtTextLines = {}, -- n/a
	RejectionTextLines = {}, -- n/a on portrait and voice
	MakeUpTextLines = {}, -- n/a
	FullSuperActivatedVoiceLines = {}, -- n/a
	DeathTauntVoiceLines = {}, -- n/a
	BlindBoxOpenedVoiceLines = {}, -- n/a, same as shop

	UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Athena_01.UpgradeMenuOpenVoiceLines,

	--#endregion
}

for k, v in pairs(overrides) do
	athenaBase[k] = v
end

game.LootData.AthenaUpgrade = athenaBase

zannc_AddGodtoRunData(game.RewardStoreData.RunProgress, "AthenaUpgrade")
zannc_AddGodtoRunData(game.RewardStoreData.TartarusRewards, "AthenaUpgrade")

-- Change Athena Codex to not have requirements
game.CodexData.OlympianGods.Entries.NPC_Athena_01 = {
	-- NoRequirements = true,

	Entries = {
		{
			UnlockGameStateRequirements = {
				{
					PathTrue = { "GameState", "TextLinesRecord", "AthenaGift01" },
				},
			},
			Text = "CodexData_Athena_01",
		},
	},
	Image = "Codex_Portrait_Athena",
	BoonInfoEnemyName = "NPC_Athena_01",
	BoonInfoAllowPinning = true,
}

--#region Athena SJSON

zanncdwbl_Droppable_Gods.Player_GodDispleased_AthenaUpgrade = sjson.to_object({
	Id = "Player_GodDispleased_AthenaUpgrade",
	DisplayName = "Athena Grew Displeased!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_AthenaUpgrade = sjson.to_object({
	Id = "SuperSacrifice_CombatText_AthenaUpgrade",
	DisplayName = "{#CombatTextHighlightFormat}Boons of Athena {#Prev}{#UpgradeFormat}+{$TempTextData.Amount}{#Prev}{!Icons.PomLevel}!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.MacroTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.Player_GodDispleased_AthenaUpgrade)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_AthenaUpgrade)
end)

-- ! Actual Boon Drop
zanncdwbl_Droppable_Gods.AthenaUpgrade = sjson.to_object({
	Name = "AthenaUpgrade",
	InheritFrom = "BaseBoon",
	DisplayInEditor = true,
	Thing = {
		EditorOutlineDrawBounds = false,
		Graphic = "BoonDropAthena",
		AmbientSound = "", -- !!!!!!!!!!!!!!!!!
	},
}, zanncdwbl_Droppable_Gods.GameplayOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GameplayFile, function(data)
	table.insert(data.Obstacles, zanncdwbl_Droppable_Gods.AthenaUpgrade)
end)
-- end

zanncdwbl_Droppable_Gods.BoonInfoSymbolAthenaIcon = sjson.to_object({
	Name = "BoonInfoSymbolAthenaIcon",
	InheritFrom = "BoonInfoSymbolBase",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\AthenaIconSpin\\AthenaIconSpin0015"),
	OffsetZ = nil,
	Scale = nil,
	Hue = nil,
}, zanncdwbl_Droppable_Gods.IconOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GUIScreensVFXFile, function(data)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonInfoSymbolAthenaIcon)
end)

zanncdwbl_Droppable_Gods.BoonDropAthena = sjson.to_object({
	Name = "BoonDropAthena",
	InheritFrom = "BoonDropGold",
	ChildAnimation = "BoonDropA-Athena",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropA_Athena = sjson.to_object({
	Name = "BoonDropA-Athena",
	InheritFrom = "BoonDropA",
	ChildAnimation = "BoonDropB-Athena",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.76,
		Green = 0.64,
		Blue = 0.16,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropB_Athena = sjson.to_object({
	Name = "BoonDropB-Athena",
	InheritFrom = "BoonDropB",
	ChildAnimation = "BoonDropC-Athena",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.68,
		Green = 0.57,
		Blue = 0.12,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropC_Athena = sjson.to_object({
	Name = "BoonDropC-Athena",
	InheritFrom = "BoonDropC",
	ChildAnimation = "BoonDropAthenaIcon",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.60,
		Green = 0.51,
		Blue = 0.19,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropAthenaIcon = sjson.to_object({
	Name = "BoonDropAthenaIcon",
	InheritFrom = "BoonDropIcon",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\AthenaIconSpin\\AthenaIconSpin"),
	--? Not needed I think if it looks fine
	OffsetZ = nil,
	Scale = nil,
	Hue = 0.9,
}, zanncdwbl_Droppable_Gods.IconOrder)

zanncdwbl_Droppable_Gods.BoonDropAthenaPreview = sjson.to_object({
	Name = "BoonDropAthenaPreview",
	InheritFrom = "BoonDropRoomRewardIconPreviewBase",
	NumFrames = 1,
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\AthenaIconSpin\\AthenaPreview"),
	OffsetZ = 0,
	Scale = 1.0,
	ColorFromOwner = "Maintain",
	AngleFromOwner = "Ignore",
	Sound = "", -- !
}, zanncdwbl_Droppable_Gods.FxMainOrder)

zanncdwbl_Droppable_Gods.BoonDropAthenaUpgradedPreview = sjson.to_object({
	Name = "BoonDropAthenaUpgradedPreview",
	InheritFrom = "BoonDropAthenaPreview",
	ChildAnimation = "BoonUpgradedPreviewSparkles",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

sjson.hook(zanncdwbl_Droppable_Gods.ItemsGeneralVFX, function(data)
	-- Everything is just for Athena Icon and Drops
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropAthena)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropA_Athena)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropB_Athena)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropC_Athena)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropAthenaIcon)

	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropAthenaPreview)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropAthenaUpgradedPreview)
end)

zanncdwbl_Droppable_Gods.AthenaUpgrade_Store = sjson.to_object({
	Id = "AthenaUpgrade_Store",
	DisplayName = "Boon of Athena",
	Description = "Receive your choice of {#BoldFormat}1 {#Prev}out of {$ScreenData.UpgradeChoice.MaxChoices} {$Keywords.GodBoonPlural} from {#BoldFormat}Athena{#Prev}.",
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.TraitTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.AthenaUpgrade_Store)
end)

--#endregion
