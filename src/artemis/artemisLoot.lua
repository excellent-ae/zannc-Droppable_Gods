---@meta _
---@diagnostic disable: lowercase-global

local artemisTraitIndex = {
	SupportingFireBoon = true,
	CritBonusBoon = true,
	DashOmegaBuffBoon = true,
	HighHealthCritBoon = true,
	InsideCastCritBoon = true,
	OmegaCastVolleyBoon = true,
	TimedCritVulnerabilityBoon = true,
	FocusCritBoon = true,
	SorceryCritBoon = true,
}

local artemisBase = game.DeepCopyTable(zannc_BaseGod)

game.EnemyData.NPC_Artemis_01.GiftTextLineSets.ArtemisGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { "ArtemisUpgrade", "NPC_Artemis_Field_01" } },
}

local overrides = {
	Name = "ArtemisUpgrade",
	Speaker = "NPC_Artemis_01",
	SpeakerName = "Artemis",
	BoonInfoIcon = "BoonInfoSymbolArtemisIcon",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_ArtemisUpgrade",
	LootRejectedText = "Player_GodDispleased_ArtemisUpgrade",
	-- WrathPortrait = "Portrait_Artemis_Wrath_01", -- ! Nope, doesn't exist
	DoorIcon = "BoonDropArtemisPreview",
	DoorUpgradedIcon = "BoonDropArtemisUpgradedPreview",
	Icon = "BoonSymbolArtemis",
	SpawnSound = "/SFX/ArtemisBoonArrow",
	PortraitEnterSound = "/SFX/ArtemisBoonArrow",
	OverlayAnim = "ArtemisOverlay",
	Gender = "Female",
	FlavorTextIds = { "ArtemisUpgrade_FlavorText01", "ArtemisUpgrade_FlavorText02", "ArtemisUpgrade_FlavorText03" },
	UpgradeSelectedSound = "/SFX/ArtemisBoonChoice",
	EchoLastRewardId = "EchoLastRewardBoon_Artemis",
	Portrait = "Portrait_Artemis_Default_01",
	LoadPackages = { "Artemis" }, -- * Also has NPC_Artemis_Field_01

	PriorityUpgrades = {},
	WeaponUpgrades = {},
	Traits = game.EnemyData.NPC_Artemis_Field_01.Traits,
	TraitIndex = artemisTraitIndex,
	MenuTitle = "UpgradeChoiceMenu_Artemis",
	BoonInfoTitleText = "UpgradeChoiceMenu_Artemis", --* Display name in codex, needed for npcs
	SurfaceShopIcon = "BoonInfoSymbolArtemisIcon", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for artemis
	SurfaceShopText = "ArtemisUpgrade_Store", --? Not used on main gods, primarily health, mana, armour, some NPCs like Hermes // Unsure if needed for artemis

	Color = { 91, 255, 100, 255 },
	LightingColor = { 210, 255, 97, 255 },
	LootColor = { 110, 255, 0, 255 },
	SubtitleColor = Color.ArtemisVoice,

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
			Cue = "/VO/ArtemisKeepsake_0214",
			Text = "Hey Sister.",
		},
	},

	GiftTextLineSets = game.EnemyData.NPC_Artemis_01.GiftTextLineSets,
	GiftGivenVoiceLines = game.EnemyData.NPC_Artemis_01.GiftGivenVoiceLines,

	FirstSpawnVoiceLines = {
		PreLineWait = 0.7,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
				IsNone = { "H" },
			},
		},
		{ Cue = "/VO/MelinoeField_2808", Text = "It's her..." },
		{ Cue = "/VO/Melinoe_1477", Text = "She's back." },
		{ Cue = "/VO/ArtemisKeepsake_0214", Text = "Hey Sister." },
	},

	InteractTextLineSets = game.EnemyData.NPC_Artemis_Field_01.InteractTextLineSets, -- ! may need to change and do manually, possibly just do NPCChat1-30

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

	UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Artemis_Field_01.UpgradeMenuOpenVoiceLines,

	--#endregion
}

for k, v in pairs(overrides) do
	artemisBase[k] = v
end

game.LootData.ArtemisUpgrade = artemisBase

if game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines then
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[1].PreLineWait = 0.6
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[2].PreLineWait = 0.7
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[3].PreLineWait = 0.7
end

zannc_AddGodtoRunData(game.RewardStoreData.RunProgress, "ArtemisUpgrade")
zannc_AddGodtoRunData(game.RewardStoreData.TartarusRewards, "ArtemisUpgrade")

--? Dont think i need these below
-- -- Adding Icons to default artemis, cause why does she not already have it? ////// ??? does she even need it????
-- game.EnemyData.NPC_Artemis_Field_01.DoorIcon = "BoonDropArtemisPreview"

-- -- Dirty code, don't like it, couldn't find a better way
-- -- makes it so if you pick up an artemis boon, it will still count toward codex aka her field version
-- modutil.mod.Path.Wrap("CheckCodexUnlock", function(base, chapterName, entryName, args)
-- 	local GodArtemis = game.GameState.UseRecord.ArtemisUpgrade or 0
-- 	local NPCArtemis = game.GameState.UseRecord.NPC_Artemis_Field_01 or 0

-- 	local MaxArtemis = math.max(GodArtemis, NPCArtemis)

-- 	game.GameState.UseRecord.ArtemisUpgrade = MaxArtemis
-- 	game.GameState.UseRecord.NPC_Artemis_Field_01 = MaxArtemis

-- 	base(chapterName, entryName, args)
-- end)

-- Change Artemis Codex to not have requirements
game.CodexData.OlympianGods.Entries.NPC_Artemis_01 = {
	-- NoRequirements = true,

	Entries = {
		{
			UnlockGameStateRequirements = {
				{
					PathTrue = { "GameState", "TextLinesRecord", "ArtemisGift01" },
				},
			},
			Text = "CodexData_Artemis_01",
		},
	},
	Image = "Codex_Portrait_Artemis",
	BoonInfoEnemyName = "NPC_Artemis_Field_01",
	BoonInfoAllowPinning = true,
}

--#region Artemis SJSON

zanncdwbl_Droppable_Gods.Player_GodDispleased_ArtemisUpgrade = sjson.to_object({
	Id = "Player_GodDispleased_ArtemisUpgrade",
	DisplayName = "Artemis Grew Displeased!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_ArtemisUpgrade = sjson.to_object({
	Id = "SuperSacrifice_CombatText_ArtemisUpgrade",
	DisplayName = "{#CombatTextHighlightFormat}Boons of Artemis {#Prev}{#UpgradeFormat}+{$TempTextData.Amount}{#Prev}{!Icons.PomLevel}!",
	Description = nil,
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.MacroTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.Player_GodDispleased_ArtemisUpgrade)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.SuperSacrifice_CombatText_ArtemisUpgrade)
end)

-- ! Actual Boon Drop
zanncdwbl_Droppable_Gods.ArtemisUpgrade = sjson.to_object({
	Name = "ArtemisUpgrade",
	InheritFrom = "BaseBoon",
	DisplayInEditor = true,
	Thing = {
		EditorOutlineDrawBounds = false,
		Graphic = "BoonDropArtemis",
		AmbientSound = "", -- !!!!!!!!!!!!!!!!!
	},
}, zanncdwbl_Droppable_Gods.GameplayOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GameplayFile, function(data)
	table.insert(data.Obstacles, zanncdwbl_Droppable_Gods.ArtemisUpgrade)
end)
-- end

zanncdwbl_Droppable_Gods.BoonInfoSymbolArtemisIcon = sjson.to_object({
	Name = "BoonInfoSymbolArtemisIcon",
	InheritFrom = "BoonInfoSymbolBase",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisIconSpin0015"),
	OffsetZ = nil,
	Scale = nil,
	Hue = nil,
}, zanncdwbl_Droppable_Gods.IconOrder)

sjson.hook(zanncdwbl_Droppable_Gods.GUIScreensVFXFile, function(data)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonInfoSymbolArtemisIcon)
end)

zanncdwbl_Droppable_Gods.BoonDropArtemis = sjson.to_object({
	Name = "BoonDropArtemis",
	InheritFrom = "BoonDropGold",
	ChildAnimation = "BoonDropA-Artemis",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropA_Artemis = sjson.to_object({
	Name = "BoonDropA-Artemis",
	InheritFrom = "BoonDropA",
	ChildAnimation = "BoonDropB-Artemis",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.42,
		Green = 0.62,
		Blue = 0.21,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropB_Artemis = sjson.to_object({
	Name = "BoonDropB-Artemis",
	InheritFrom = "BoonDropB",
	ChildAnimation = "BoonDropC-Artemis",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.35,
		Green = 0.51,
		Blue = 0.12,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropC_Artemis = sjson.to_object({
	Name = "BoonDropC-Artemis",
	InheritFrom = "BoonDropC",
	ChildAnimation = "BoonDropArtemisIcon",
	CreateAnimations = { {
		Name = "BoonDropBackGlow",
	}, {
		Name = "BoonDropFrontFlare",
	} },
	Color = {
		Red = 0.23,
		Green = 0.57,
		Blue = 0.31,
	},
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

zanncdwbl_Droppable_Gods.BoonDropArtemisIcon = sjson.to_object({
	Name = "BoonDropArtemisIcon",
	InheritFrom = "BoonDropIcon",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisIconSpin"),
	--? Not needed I think if it looks fine
	OffsetZ = nil,
	Scale = nil,
	Hue = 0.9,
}, zanncdwbl_Droppable_Gods.IconOrder)

zanncdwbl_Droppable_Gods.BoonDropArtemisPreview = sjson.to_object({
	Name = "BoonDropArtemisPreview",
	InheritFrom = "BoonDropRoomRewardIconPreviewBase",
	NumFrames = 1,
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisPreview"),
	OffsetZ = 0,
	Scale = 1.0,
	ColorFromOwner = "Maintain",
	AngleFromOwner = "Ignore",
	Sound = "", -- !
}, zanncdwbl_Droppable_Gods.FxMainOrder)

zanncdwbl_Droppable_Gods.BoonDropArtemisUpgradedPreview = sjson.to_object({
	Name = "BoonDropArtemisUpgradedPreview",
	InheritFrom = "BoonDropArtemisPreview",
	ChildAnimation = "BoonUpgradedPreviewSparkles",
	CreateAnimations = nil,
	Color = nil,
}, zanncdwbl_Droppable_Gods.FxBoonDropOrder)

sjson.hook(zanncdwbl_Droppable_Gods.ItemsGeneralVFX, function(data)
	-- Everything is just for Artemis Icon and Drops
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropArtemis)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropA_Artemis)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropB_Artemis)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropC_Artemis)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropArtemisIcon)

	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropArtemisPreview)
	table.insert(data.Animations, zanncdwbl_Droppable_Gods.BoonDropArtemisUpgradedPreview)
end)

zanncdwbl_Droppable_Gods.ArtemisUpgrade_Store = sjson.to_object({
	Id = "ArtemisUpgrade_Store",
	DisplayName = "Boon of Artemis",
	Description = "Receive your choice of {#BoldFormat}1 {#Prev}out of {$ScreenData.UpgradeChoice.MaxChoices} {$Keywords.GodBoonPlural} from {#BoldFormat}Artemis{#Prev}.",
}, zanncdwbl_Droppable_Gods.Order)

sjson.hook(zanncdwbl_Droppable_Gods.TraitTextFile, function(data)
	table.insert(data.Texts, zanncdwbl_Droppable_Gods.ArtemisUpgrade_Store)
end)

--#endregion
