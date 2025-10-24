---@meta _
---@diagnostic disable: lowercase-global

local dionysusBase = game.DeepCopyTable(zannc_BaseGod)

game.EnemyData.NPC_Dionysus_01.GiftTextLineSets.DionysusGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { "DionysusUpgrade", "NPC_Dionysus_01" } },
}

local textLineSets = {
	DionysusChat01 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0006",
			Text = "Things are happening all over but this is the only happening place on {#Emph}this {#Prev}mountain, baby.",
		},
	},
	DionysusChat02 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0007",
			Text = "Just one drink isn't going to hurt! It's going to do the {#Emph}opposite{#Prev}, you'll see!",
		},
	},
	DionysusChat03 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0008",
			Text = "Can't stay and hang out, you got places to go, people to see, I get it, baby!",
		},
	},
	DionysusChat04 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0009",
			Emote = "PortraitEmoteCheerful",
			Text = "You look like you're having a night! And wouldn't you know it, so am {#Emph}I!",
		},
	},
	DionysusChat05 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0010",
			Text = "Been going for a while here, baby, and we plan to {#Emph}keep {#Prev}going till all this is over!",
		},
	},
	DionysusChat06 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0011",
			Emote = "PortraitEmoteCheerful",
			Text = "Come on now, relax and have a drink, {#Emph}mingle {#Prev}a bit, this is a {#Emph}feast{#Prev}, you know!",
		},
	},
	DionysusChat07 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0012",
			Text = "Remember, don't go telling Dad about this little gathering of ours, all right?",
		},
	},
	DionysusChat08 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0013",
			Emote = "PortraitEmoteCheerful",
			Text = "You're always welcome here but not your worries, baby, you leave those behind!",
		},
	},
	DionysusChat09 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0014",
			Emote = "PortraitEmoteCheerful",
			Text = "Hey, pull yourself together, baby, we're just getting started!",
		},
	},
	DionysusChat10 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0015",
			Emote = "PortraitEmoteCheerful",
			Text = "Sure you don't want to take a quick dip in the spring? It'll warm you right up!",
		},
	},
	DionysusChat11 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0016", Text = "This mountain isn't going anywhere, and neither are we!" },
	},
	DionysusChat12 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0017", Text = "Come all this way and can't even hang out, that's just not right, baby!" },
	},
	DionysusChat13 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0018", Text = "If you're sick of all the fighting, I've got {#Emph}just {#Prev}the thing for you!" },
	},
	DionysusChat14 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0019", Text = "The water's nice and warm, but if you don't want to take a dip, it's cool!" },
	},
	DionysusChat15 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0020", Text = "I'd ask you tell the fam I told them cheers but that might get a little awkward, yeah?" },
	},
	DionysusChat16 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Dionysus_0021",
			Emote = "PortraitEmoteCheerful",
			Text = "Leave your worries at the gate and have yourself a cup of something, {#Emph}here!",
		},
	},
	DionysusChat17 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0022", Text = "Know that all of us are with you {#Emph}all {#Prev}the way, so cheers to your success!" },
	},
	DionysusChat18 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0023", Text = "Take it from me, there is {#Emph}never {#Prev}a bad time for a good feast!" },
	},
	-- DionysusChat19 = {
	-- 	UseableOffSource = true,
	-- 	GameStateRequirements = {
	-- 		{
	-- 			PathTrue = { "PrevRun", "RoomsEntered", "P_Story01" },
	-- 		},
	-- 	},

	-- 	{
	-- 		Cue = "/VO/Dionysus_0024",
	-- 		Emote = "PortraitEmoteSurprise",
	-- 		PreLineThreadedFunctionArgs = { Name = "Dionysus_Surprise", WaitTime = 0.5, AngleNPCToHero = true },
	-- 		Text = "Wait wait wait weren't you just here? It's all a blur for me!",
	-- 	},
	-- },
	DionysusChat20 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0025", Text = "No use fighting the inevitable when you're thirsty, yeah?" },
	},
	DionysusChat21 = {
		UseableOffSource = true,

		{ Cue = "/VO/Dionysus_0026", Text = "Take a load off, relax, have a drink and all that! The night's still young!" },
	},
	DionysusChat22 = {
		UseableOffSource = true,

		{ Cue = "/VO/Dionysus_0027", Text = "Well don't just stand there, eat! Drink! Whatever you fancy!" },
	},
	DionysusChat23 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "~=",
				Value = 5,
			},
		},

		{ Cue = "/VO/Dionysus_0028", Text = "The moon is shining, the water's warm, the Nectar's flowing, what is not to like?" },
	},
	DionysusChat24 = {
		UseableOffSource = true,
		{ Cue = "/VO/Dionysus_0029", Text = "You keep on showing up but never stick around, quit {#Emph}teasing {#Prev}us, baby!" },
	},
	DionysusChat25 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				FunctionName = "RequiredHealthFraction",
				FunctionArgs = { Comparison = "<", Value = 0.6 },
			},
		},

		{ Cue = "/VO/Dionysus_0030", Text = "Hey Mel baby, you're bringing down the mood a bit looking like that, you get me, yeah?" },
	},
	DionysusChat26 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathFalse = { "PrevRun", "RoomsEntered", "P_Story01" },
			},
		},

		{
			Cue = "/VO/Dionysus_0031",
			Text = "Oh you missed a {#Emph}real {#Prev}good time last night... or might have been the night before...",
		},
	},
}

for k, v in pairs(textLineSets) do
	if not v.Name then
		v.Name = k
	end
end

local overrides = {
	Name = "DionysusUpgrade",
	Speaker = "NPC_Dionysus_01",
	SpeakerName = "Dionysus",
	BoonInfoIcon = "BoonInfoSymbolDionysusIcon",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_DionysusUpgrade",
	LootRejectedText = "Player_GodDispleased_DionysusUpgrade",
	GodLoot = config.Dionysus.DionysusNoRequirements, -- * without this, you will have to manually do drop requirements, stacking etc.

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
	-- Traits = game.EnemyData.NPC_Dionysus_01.Traits,
	-- TraitIndex = dionysusTraitIndex,
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

	InteractTextLineSets = textLineSets,

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

game.LinkedTraitData.DionysusCoreTraits = {}

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

mod.Player_GodDispleased_DionysusUpgrade = sjson.to_object({
	Id = "Player_GodDispleased_DionysusUpgrade",
	DisplayName = "Dionysus Grew Displeased!",
	Description = nil,
}, mod.Order)

mod.SuperSacrifice_CombatText_DionysusUpgrade = sjson.to_object({
	Id = "SuperSacrifice_CombatText_DionysusUpgrade",
	DisplayName = "{#CombatTextHighlightFormat}Boons of Dionysus {#Prev}{#UpgradeFormat}+{$TempTextData.Amount}{#Prev}{!Icons.PomLevel}!",
	Description = nil,
}, mod.Order)

sjson.hook(mod.MacroTextFile, function(data)
	table.insert(data.Texts, mod.Player_GodDispleased_DionysusUpgrade)
	table.insert(data.Texts, mod.SuperSacrifice_CombatText_DionysusUpgrade)
end)

-- ! Actual Boon Drop
mod.DionysusUpgrade = sjson.to_object({
	Name = "DionysusUpgrade",
	InheritFrom = "BaseBoon",
	DisplayInEditor = true,
	Thing = {
		EditorOutlineDrawBounds = false,
		Graphic = "BoonDropDionysus",
		AmbientSound = "", -- !!!!!!!!!!!!!!!!!
	},
}, mod.GameplayOrder)

sjson.hook(mod.GameplayFile, function(data)
	table.insert(data.Obstacles, mod.DionysusUpgrade)
end)
-- end

mod.BoonInfoSymbolDionysusIcon = sjson.to_object({
	Name = "BoonInfoSymbolDionysusIcon",
	InheritFrom = "BoonInfoSymbolBase",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusIconSpin0015"),
	OffsetZ = nil,
	Scale = nil,
	Hue = nil,
}, mod.IconOrder)

sjson.hook(mod.GUIScreensVFXFile, function(data)
	table.insert(data.Animations, mod.BoonInfoSymbolDionysusIcon)
end)

mod.BoonDropDionysus = sjson.to_object({
	Name = "BoonDropDionysus",
	InheritFrom = "BoonDropGold",
	ChildAnimation = "BoonDropA-Dionysus",
	CreateAnimations = nil,
	Color = nil,
}, mod.FxBoonDropOrder)

mod.BoonDropA_Dionysus = sjson.to_object({
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
}, mod.FxBoonDropOrder)

mod.BoonDropB_Dionysus = sjson.to_object({
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
}, mod.FxBoonDropOrder)

mod.BoonDropC_Dionysus = sjson.to_object({
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
}, mod.FxBoonDropOrder)

mod.BoonDropDionysusIcon = sjson.to_object({
	Name = "BoonDropDionysusIcon",
	InheritFrom = "BoonDropIcon",
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusIconSpin"),
	--? Not needed I think if it looks fine
	OffsetZ = nil,
	Scale = nil,
	Hue = 0.9,
}, mod.IconOrder)

mod.BoonDropDionysusPreview = sjson.to_object({
	Name = "BoonDropDionysusPreview",
	InheritFrom = "BoonDropRoomRewardIconPreviewBase",
	NumFrames = 1,
	FilePath = rom.path.combine(_PLUGIN.guid, "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusPreview"),
	OffsetZ = 0,
	Scale = 1.0,
	ColorFromOwner = "Maintain",
	AngleFromOwner = "Ignore",
	Sound = "", -- !
}, mod.FxMainOrder)

mod.BoonDropDionysusUpgradedPreview = sjson.to_object({
	Name = "BoonDropDionysusUpgradedPreview",
	InheritFrom = "BoonDropDionysusPreview",
	ChildAnimation = "BoonUpgradedPreviewSparkles",
	CreateAnimations = nil,
	Color = nil,
}, mod.FxBoonDropOrder)

sjson.hook(mod.ItemsGeneralVFX, function(data)
	-- Everything is just for Dionysus Icon and Drops
	table.insert(data.Animations, mod.BoonDropDionysus)
	table.insert(data.Animations, mod.BoonDropA_Dionysus)
	table.insert(data.Animations, mod.BoonDropB_Dionysus)
	table.insert(data.Animations, mod.BoonDropC_Dionysus)
	table.insert(data.Animations, mod.BoonDropDionysusIcon)

	table.insert(data.Animations, mod.BoonDropDionysusPreview)
	table.insert(data.Animations, mod.BoonDropDionysusUpgradedPreview)
end)

mod.DionysusUpgrade_Store = sjson.to_object({
	Id = "DionysusUpgrade_Store",
	DisplayName = "Boon of Dionysus",
	Description = "Receive your choice of {#BoldFormat}1 {#Prev}out of {$ScreenData.UpgradeChoice.MaxChoices} {$Keywords.GodBoonPlural} from {#BoldFormat}Dionysus{#Prev}.",
}, mod.Order)

sjson.hook(mod.TraitTextFile, function(data)
	table.insert(data.Texts, mod.DionysusUpgrade_Store)
end)

--#endregion
