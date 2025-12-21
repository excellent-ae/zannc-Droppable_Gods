---@meta _
---@diagnostic disable: lowercase-global

-- game.EnemyData.NPC_Dionysus_01.GiftTextLineSets.DionysusGift01.GameStateRequirements = {
-- 	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { upgradeName, "NPC_Dionysus_01" } },
-- }

local textLineSets = {
	HadesChat05 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		{ Cue = "/VO/Hades_0040", Text = "Thank you for looking after Cerberus, though look after yourself." },
	},
	HadesChat06 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		{ Cue = "/VO/Hades_0041", Text = "You are as willful as your brother, aren't you..." },
	},
	HadesChat07 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		{ Cue = "/VO/Hades_0096", Text = "Whenever you return... so does a portion of my strength." },
	},
	HadesChat08 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		{ Cue = "/VO/Hades_0097", Text = "Take no unnecessary risks and go unseen, Daughter." },
	},
	HadesChat09 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "EnemyKills", "Chronos" },
				Comparison = ">=",
				Value = 1,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Hades_0098", Text = "You have vanquished the Titan before; you know full well what it takes." },
	},
	HadesChat13 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-HadesUpgrade" },
			},
		},
		{ Cue = "/VO/Hades_0102", Text = "The Witch of the Crossroads swore no harm would come to you; ensure she keeps her word." },
	},
}

local spawnrequirements = nil
local godtype = "npcgod" -- basically, basically, basically, hes so useless - and has no traits, also no devotion attack so byebye
if config.Hades.spawnRequirements.enabled then
	spawnrequirements = {
		maximumSpawns = math.max(config.Hades.spawnRequirements.maximumSpawns - 1, 0), -- cause they say they want x spawns, but game handles it to be lessthan or equal spawns, so if they pass in x, they will actually get x+1 without doing -1
	}
	godtype = "npcgod"
end

local weaponBoons = nil
local boons = nil
if not config.Hades.splitTraits then
	weaponBoons = game.EnemyData.NPC_Hades_Field_01.WeaponUpgrades
	boons = game.EnemyData.NPC_Hades_Field_01.Traits
	game.EnemyData.NPC_Hades_Field_01.RarityChances = nil
end

gods.InitializeGod({
	godName = "Hades",
	godType = godtype,
	Gender = "M",
	skipCodex = true,
	LoadPackages = { "NPC_Hades_Field_01", "Hades" },
	UpgradeScreenOpenSound = "/SFX/Enemy Sounds/Hades/HadesSummonPresentation3",
	SFX_Portrait = "/SFX/Menu Sounds/KeepsakeHadesSigil2",
	Color = { 255, 0, 0, 255 },
	LightingColor = { 255, 0, 0, 255 },
	LootColor = { 242, 49, 46, 255 },
	SubtitleColor = Color.HadesVoice,
	FlavourTextIds = { "HadesUpgrade_FlavorText01", "HadesUpgrade_FlavorText02", "HadesUpgrade_FlavorText03" },

	SpawnLikeHermes = spawnrequirements,
	WeaponUpgrades = weaponBoons,
	Traits = boons,
	CanReceiveGift = false,

	ExtraFields = {
		Speaker = "NPC_Hades_01",
		SpeakerName = "Hades",
		Portrait = "Portrait_Hades_Chained_01",
		OverlayAnim = "HadesOverlay",
	},

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

		{ Cue = "/VO/MelinoeField_1521", Text = "{#Emph}Erm... {#Prev}greetings, Father...", PlayFirst = true },
		{ Cue = "/VO/Melinoe_1469", Text = "There he is..." },
		{ Cue = "/VO/Melinoe_4071", Text = "Watch over me, Father..." },
		{ Cue = "/VO/Melinoe_2938_B", Text = "Father..." },
		{ Cue = "/VO/MelinoeField_1519", Text = "Father...!" },
		{ Cue = "/VO/MelinoeField_1520", Text = "Father...?" },
		{ Cue = "/VO/MelinoeField_1522", Text = "Greetings, Father..." },
	},

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

	-- UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Hades_Field_01.UpgradeMenuOpenVoiceLines,
	--#endregion
})

gods.CreateOlympianSJSONData({
	godName = "Hades",
	godType = godtype,
	iconPathOverrides = {
		boonSelectSymbolPath = true,
	},
	boonSelectSymbolPath = "GUI\\Screens\\BoonSelectSymbols\\Hades",
	iconSpinPath = "Items\\Loot\\Boon\\HadesIconSpin\\HadesIconSpin",
	previewPath = "Items\\Loot\\Boon\\HadesIconSpin\\HadesPreview",
	-- boonDropIconCustomFrames = {
	-- 	EndFrame = 2,
	-- 	NumFrames = 2,
	-- 	PlaySpeed = 1,
	-- },
	colorA = { Red = 0.859, Green = 0.859, Blue = 0.776, Opacity = 0.8 },
	colorB = { Red = 0, Green = 0, Blue = 0 },
	colorC = { Red = 0, Green = 0, Blue = 0 },
	godDescriptionText = "God of the Dead",
})

if not game.LootData[mod.HadesUpgradeName] then
	rom.log.error("Hades not correctly initialized into LootData, please restart your game, if this error persists, please report it.")
	return
end
