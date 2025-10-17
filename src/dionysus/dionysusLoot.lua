---@meta _
---@diagnostic disable: lowercase-global

local dionysusTraitIndex = {
	CastLobBoon = true,
	HiddenMaxHealthBoon = true,
	FirstHangoverBoon = true,
	CombatEncounterHealBoon = true,
	PowerDrinkBoon = true,
	FogDamageBonusBoon = true,
	BankBoon = true,
	RandomBaseDamageBoon = true,
}

local dionysusBase = game.DeepCopyTable(zannc_BaseGod)

game.EnemyData.NPC_Dionysus_01.GiftTextLineSets.DionysusGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { "DionysusUpgrade", "NPC_Dionysus_01" } },
}

local overrides = {
	Name = "DionysusUpgrade",
	Speaker = "NPC_Dionysus_01",
	SpeakerName = "Dionysus",
	BoonInfoIcon = "BoonInfoSymbolDionysusIcon",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_DionysusUpgrade",
	LootRejectedText = "Player_GodDispleased_DionysusUpgrade",
	-- WrathPortrait = "Portrait_Dionysus_Wrath_01", -- ! Nope, doesn't exist
	DoorIcon = "BoonDropDionysusPreview",
	DoorUpgradedIcon = "BoonDropDionysusUpgradedPreview",
	Icon = "BoonSymbolDionysus",
	SpawnSound = "/SFX/DionysusBoonWineLaugh",
	PortraitEnterSound = "/SFX/DionysusBoonWineLaugh",
	OverlayAnim = "DionysusOverlay",
	Gender = "Male",
	FlavorTextIds = { "DionysusUpgrade_FlavorText01", "DionysusUpgrade_FlavorText02", "DionysusUpgrade_FlavorText03" },
	UpgradeSelectedSound = "/SFX/DionysusBoonChoice",
	EchoLastRewardId = "EchoLastRewardBoon_Dionysus",
	Portrait = "Portrait_Dionysus_Default_01",
	LoadPackages = { "Dionysus" }, -- * Also has NPC_Dionysus_01

	PriorityUpgrades = {},
	WeaponUpgrades = {},
	Traits = game.EnemyData.NPC_Dionysus_01.Traits,
	TraitIndex = dionysusTraitIndex,
	MenuTitle = "UpgradeChoiceMenu_Dionysus",
	BoonInfoTitleText = "UpgradeChoiceMenu_Dionysus", --* Display name in codex, needed for npcs
	SurfaceShopIcon = "BoonInfoSymbolDionysusIcon", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for Dionysus
	SurfaceShopText = "DionysusUpgrade_Store", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for Dionysus

	Color = { 91, 255, 100, 255 },
	LootColor = { 200, 0, 255, 255 },
	LightingColor = { 200, 0, 255, 255 },
	SubtitleColor = Color.DionysusVoice,

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
			Cue = "/VO/MelinoeField_4254",
			Text = "Lord Dionysus...",
		},
		{
			Cue = "/VO/Melinoe_1475",
			Text = "He's back...",
		},
		{
			Cue = "/VO/Melinoe_1469",
			Text = "There he is...",
		},
	},

	GiftTextLineSets = game.EnemyData.NPC_Dionysus_01.GiftTextLineSets,
	GiftGivenVoiceLines = game.EnemyData.NPC_Dionysus_01.GiftGivenVoiceLines,

	-- FirstSpawnVoiceLines = {
	-- 	PreLineWait = 0.7,
	-- 	GameStateRequirements = {
	-- 		{
	-- 			Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
	-- 			IsNone = { "H" },
	-- 		},
	-- 	},
	-- 	{ Cue = "/VO/MelinoeField_4254", Text = "Lord Dionysus..." },
	-- 	{ Cue = "/VO/Melinoe_0423_B", Text = "Oh." },
	-- 	{ Cue = "/VO/MelinoeField_0116", Text = "Is that...?" },
	-- },

	InteractTextLineSets = game.EnemyData.NPC_Dionysus_01.InteractTextLineSets, -- ! may need to change and do manually, possibly just do NPCChat1-30

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

	UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Dionysus_01.UpgradeMenuOpenVoiceLines,

	--#endregion
}

for k, v in pairs(overrides) do
	dionysusBase[k] = v
end

game.LootData.DionysusUpgrade = dionysusBase

zannc_AddGodtoRunData(game.RewardStoreData.RunProgress, "DionysusUpgrade")
zannc_AddGodtoRunData(game.RewardStoreData.TartarusRewards, "DionysusUpgrade")

-- Change Dionysus Codex to not have requirements
game.CodexData.OlympianGods.Entries.NPC_Dionysus_01 = {
	-- NoRequirements = true,

	Entries = {
		{
			UnlockGameStateRequirements = {
				{
					PathTrue = { "GameState", "TextLinesRecord", "DionysusGift01" },
				},
			},
			Text = "CodexData_Dionysus_01",
		},
	},
	Image = "Codex_Portrait_Dionysus",
	BoonInfoEnemyName = "NPC_Dionysus_01",
	BoonInfoAllowPinning = true,
}

--#region Dionysus SJSON

zanncdwbl_Droppable_Gods.Player_GodDispleased_DionysusUpgrade = sjson.to_object({
	Id = "Player_GodDispleased_DionysusUpgrade",
	DisplayName = "Dionysus Grew Displeased!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_DionysusUpgrade = sjson.to_object({
	Id = "SuperSacrifice_CombatText_DionysusUpgrade",
	DisplayName = "{#CombatTextHighlightFormat}Boons of Dionysus {#Prev}{#UpgradeFormat}+{$TempTextData.Amount}{#Prev}{!Icons.PomLevel}!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.MacroTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.Player_GodDispleased_DionysusUpgrade)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_DionysusUpgrade)
end)

-- ! Actual Boon Drop
zanncdwbl_Droppable_Gods.DionysusUpgrade = sjson.to_object({
	Name = "DionysusUpgrade",
	InheritFrom = "BaseBoon",
	DisplayInEditor = true,
	Thing = {
		EditorOutlineDrawBounds = false,
		Graphic = "BoonDropDionysus",
		AmbientSound = "", -- !!!!!!!!!!!!!!!!!
	},
}, zanncdwbl_Droppable_Gods.GameplayOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GameplayFile, function(data)
	table.insert(data.Obstacles, zanncdwbl_Droppable_Gods.DionysusUpgrade)
end)
-- end

zanncdwbl_Droppable_Gods.BoonInfoSymbolDionysusIcon = sjson.to_object({
	Name = "BoonInfoSymbolDionysusIcon",
	InheritFrom = "BoonInfoSymbolBase",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusIconSpin0015"),
	OffsetZ = nil,
	Scale = nil,
	Hue = nil,
}, zanncdwbl_Droppable_Gods.IconOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GUIScreensVFXFile, function(data)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonInfoSymbolDionysusIcon)
end)

zanncdwbl_Droppable_Gods.BoonDropDionysus = sjson.to_object({
	Name = "BoonDropDionysus",
	InheritFrom = "BoonDropGold",
	ChildAnimation = "BoonDropA-Dionysus",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropA_Dionysus = sjson.to_object({
	Name = "BoonDropA-Dionysus",
	InheritFrom = "BoonDropA",
	ChildAnimation = "BoonDropB-Dionysus",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.65,
		Green = 0.16,
		Blue = 0.76,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropB_Dionysus = sjson.to_object({
	Name = "BoonDropB-Dionysus",
	InheritFrom = "BoonDropB",
	ChildAnimation = "BoonDropC-Dionysus",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.57,
		Green = 0.11,
		Blue = 0.70,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropC_Dionysus = sjson.to_object({
	Name = "BoonDropC-Dionysus",
	InheritFrom = "BoonDropC",
	ChildAnimation = "BoonDropDionysusIcon",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.50,
		Green = 0.21,
		Blue = 0.65,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropDionysusIcon = sjson.to_object({
	Name = "BoonDropDionysusIcon",
	InheritFrom = "BoonDropIcon",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusIconSpin"),
	--? Not needed I think if it looks fine
	OffsetZ = nil,
	Scale = nil,
	Hue = 0.9,
}, zanncdwbl_Droppable_Gods.IconOrder)

zanncdwbl_Droppable_Gods.BoonDropDionysusPreview = sjson.to_object({
	Name = "BoonDropDionysusPreview",
	InheritFrom = "BoonDropRoomRewardIconPreviewBase",
	NumFrames = 1,
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusPreview"),
	OffsetZ = 0,
	Scale = 1.0,
	ColorFromOwner = "Maintain",
	AngleFromOwner = "Ignore",
	Sound = "", -- !
}, zanncdwbl_Droppable_Gods.FxMainOrder)

zanncdwbl_Droppable_Gods.BoonDropDionysusUpgradedPreview = sjson.to_object({
	Name = "BoonDropDionysusUpgradedPreview",
	InheritFrom = "BoonDropDionysusPreview",
	ChildAnimation = "BoonUpgradedPreviewSparkles",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

sjson.hook(zanncdwbl_Droppable_Gods.ItemsGeneralVFX, function(data)
	-- Everything is just for Dionysus Icon and Drops
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropDionysus)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropA_Dionysus)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropB_Dionysus)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropC_Dionysus)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropDionysusIcon)

	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropDionysusPreview)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropDionysusUpgradedPreview)
end)

zanncdwbl_Droppable_Gods.DionysusUpgrade_Store = sjson.to_object({
	Id = "DionysusUpgrade_Store",
	DisplayName = "Boon of Dionysus",
	Description = "Receive your choice of {#BoldFormat}1 {#Prev}out of {$ScreenData.UpgradeChoice.MaxChoices} {$Keywords.GodBoonPlural} from {#BoldFormat}Dionysus{#Prev}.",
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.TraitTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.DionysusUpgrade_Store)
end)

--#endregion
