---@meta _
---@diagnostic disable: lowercase-global

game.EnemyData.NPC_Artemis_01.GiftTextLineSets.ArtemisGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { mod.ArtemisUpgradeName, "NPC_Artemis_Field_01" } },
}

local textLineSets = {
	ArtemisChat01 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0004", UseEventEndSound = true, Text = "Take this, Sister, and go find your mark." },
	},
	ArtemisChat02 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0005", UseEventEndSound = true, Text = "Tread ever softly and strike swift and true, Sister." },
	},
	ArtemisChat03 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0006", UseEventEndSound = true, Text = "Happened to be in the area again, so thought I'd stop on by." },
	},
	ArtemisChat04 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0007", UseEventEndSound = true, Text = "May Moonlight guide you to your prey, and expose his every weakness." },
	},
	ArtemisChat05 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0008", UseEventEndSound = true, Text = "Another night, another duty for the Silver Sisters." },
	},
	ArtemisChat06 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
				IsAny = { "F" },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0009", UseEventEndSound = true, Portrait = "Portrait_Artemis_Serious_01", Text = "I have to say, these woods are not my favorite..." },
	},
	ArtemisChat07 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "G" },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0010", UseEventEndSound = true, Text = "I can't venture any further below, though I can give you this." },
	},
	ArtemisChat08 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0011", UseEventEndSound = true, Text = "The skilled huntress keeps her bag of tricks full and with her at all times." },
	},
	ArtemisChat09 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0012", UseEventEndSound = true, Text = "Steady yourself, Sister. You have my full support and more." },
	},
	ArtemisChat10 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0013", UseEventEndSound = true, Text = "May your aim ever be true. Not unlike mine!" },
	},
	ArtemisChat11 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0014", UseEventEndSound = true, Text = "I still think you should try a bow again sometime..." },
	},
	ArtemisChat12 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0015", UseEventEndSound = true, Text = "We hunt alone. Although these run-ins aren't so bad!" },
	},
	ArtemisChat13 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0016", UseEventEndSound = true, Text = "Always a pleasure working with you, Sister." },
	},
	ArtemisChat14 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "F" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0017", UseEventEndSound = true, Text = "Go cut that wretched Titan down to size for me, would you?" },
	},
	ArtemisChat15 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0018", UseEventEndSound = true, Text = "May none dare stand between a witch and her prey." },
	},
	ArtemisChat16 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0019", UseEventEndSound = true, Text = "Fine night for hunting Titans, don't you think?" },
	},
	ArtemisChat17 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0020", UseEventEndSound = true, Portrait = "Portrait_Artemis_Serious_01", Text = "Picked up the scent of a few stragglers I'll take care of after this..." },
	},
	ArtemisChat18 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0021", UseEventEndSound = true, Text = "You'll find your mark. I know you will." },
	},
	ArtemisChat19 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0022", UseEventEndSound = true, Text = "Yours is the most dangerous prey of all. I'm a bit envious!" },
	},
	ArtemisChat20 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0023", UseEventEndSound = true, Text = "Here's a little something to go with those witching arts of yours." },
	},
	ArtemisChat21 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0024", UseEventEndSound = true, Text = "I've got your back, Sister, so just keep moving forward." },
	},
	ArtemisChat22 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0025", UseEventEndSound = true, Text = "We're the Silver Sisters, and we never miss our mark." },
	},
	ArtemisChat23 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0026", UseEventEndSound = true, Text = "We are the Silver Sisters, and this is our time to shine." },
	},
	ArtemisChat24 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0027", UseEventEndSound = true, Text = "Got to say it's nice to get away from it all like this." },
	},
	ArtemisChat25 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "SpeechRecord" },
				HasNone = { "/VO/Artemis_0094" },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0028", UseEventEndSound = true, Text = "Fancy running into you again, and here of all places!" },
	},
	ArtemisChat26 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0029", UseEventEndSound = true, Text = "You tracked {#Emph}me {#Prev}down this time, I'll have you know!" },
	},
	ArtemisChat27 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0030", UseEventEndSound = true, Text = "You were born to do this, Sister, and you're going to succeed." },
	},
	ArtemisChat28 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0031", UseEventEndSound = true, Text = "Sure beats being back on that mountaintop, let me tell you." },
	},
	ArtemisChat29 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 1,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0032", UseEventEndSound = true, Text = "The Moon is full again. May our combined might take you far." },
	},
	ArtemisChat30 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 5,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0033", UseEventEndSound = true, Text = "A new moon marks a new beginning, so take heart, Sister." },
	},
	ArtemisChat31 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 4,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0034", UseEventEndSound = true, Text = "The Moon's light wanes again, but your strength needn't falter." },
	},
	ArtemisChat32 = {
		PlayFirst = true,
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 8,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0035", UseEventEndSound = true, Text = "As the light of the waxing Moon intensifies, so too does our potential, Sister." },
	},
	ArtemisChat33 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "N" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0449", UseEventEndSound = true, Text = "Good hunting on the way up to the mountain, Sister." },
	},
	ArtemisChat34 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathTrue = { "GameState", "ReachedTrueEnding" },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0450", UseEventEndSound = true, Text = "Father better have expressed his gratitude for all you've done." },
	},
	ArtemisChat35 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathTrue = { "GameState", "ReachedTrueEnding" },
			},
			{
				PathTrue = { "CurrentRun", "BiomesReached", "N" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0451", UseEventEndSound = true, Text = "Good of you to deal with Typhon so that we don't have to anymore!" },
	},
	ArtemisChat36 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0452", UseEventEndSound = true, Text = "I'll cover your tracks, but first, here's something for the road." },
	},

	-- 38 blank
	ArtemisChat39 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				FunctionName = "RequiredHealthFraction",
				FunctionArgs = { Comparison = ">=", Value = 0.8 },
			},
			{
				FunctionName = "RequireRunsSinceTextLines",
				FunctionArgs = { TextLines = { "ArtemisAboutSayingLittle01" }, Min = 9 },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-ArtemisUpgrade" },
			},
		},
		{ Cue = "/VO/Artemis_0467", UseEventEndSound = true, Text = "Clean and efficient, just the way I like it, Sister." },
	},
	-- ArtemisChat37 = {
	-- 	UseableOffSource = true,
	-- 	PreEventFunctionName = "BoonInteractPresentation",
	-- 	PreEventFunctionArgs = { PickupWait = 1.0 },
	-- 	GameStateRequirements = {
	-- 		{
	-- 			Path = { "CurrentRun", "ProjectileRecord", "ArtemisSniperBolt" },
	-- 			Comparison = "<=",
	-- 			Value = 4,
	-- 		},
	-- 		{
	-- 			PathFalse = { "CurrentRun", "SpeechRecord", "/VO/Artemis_0448" },
	-- 		},
	-- 	},
	-- 	{ Cue = "/VO/Artemis_0453", UseEventEndSound = true, Text = "Next time leave more of them for me, would you?" },
	-- },
	-- ArtemisChat40 = {
	-- 	UseableOffSource = true,
	-- 	PreEventFunctionName = "BoonInteractPresentation",
	-- 	PreEventFunctionArgs = { PickupWait = 1.0 },
	-- 	GameStateRequirements = {
	-- 		{
	-- 			FunctionName = "RequireRunsSinceTextLines",
	-- 			FunctionArgs = { TextLines = { "ArtemisGrantsReward01" }, Min = 9 },
	-- 		},
	-- 	},
	-- 	{ Cue = "/VO/Artemis_0468", UseEventEndSound = true, Text = "Here, a little extra Moon magick for all you've done, and still intend to do." },
	-- },
}

local spawnrequirements = nil
local godtype = "god"
if config.Artemis.spawnRequirements.enabled then
	spawnrequirements = {
		maximumSpawns = math.max(config.Artemis.spawnRequirements.maximumSpawns - 1, 0), -- cause they say they want x spawns, but game handles it to be lessthan or equal spawns, so if they pass in x, they will actually get x+1 without doing -1
	}
	-- rom.log.warning(spawnrequirements.maximumSpawns)
	godtype = "npcgod"
end

local weaponBoons = nil
local boons = nil
if not config.Artemis.splitTraits then -- basically, if we split the boons, it will get populated later by different mods in LootData
	weaponBoons = game.EnemyData.NPC_Artemis_Field_01.WeaponUpgrades
	boons = game.EnemyData.NPC_Artemis_Field_01.Traits
	game.EnemyData.NPC_Artemis_Field_01.RarityChances = nil
end

gods.InitializeGod({
	godName = "Artemis",
	godType = godtype,
	Gender = "F",
	skipCodex = true,
	LoadPackages = { "NPC_Artemis_Field_01", "Artemis" },
	FlavorTextIds = { "ArtemisUpgrade_FlavorText01", "ArtemisUpgrade_FlavorText02", "ArtemisUpgrade_FlavorText03" },
	SFX_Portrait = "/SFX/ArtemisBoonArrow",
	Color = { 91, 255, 100, 255 },
	LightingColor = { 210, 255, 97, 255 },
	LootColor = { 20, 120, 7, 255 },
	SubtitleColor = Color.ArtemisVoice,

	SpawnLikeHermes = spawnrequirements,
	WeaponUpgrades = weaponBoons,
	Traits = boons,

	ExtraFields = {
		Speaker = "NPC_Artemis_01",
		SpeakerName = "Artemis",
		Portrait = "Portrait_Artemis_Default_01",
		OverlayAnim = "ArtemisOverlay",
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

	UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Artemis_Field_01.UpgradeMenuOpenVoiceLines,
	--#endregion
})

gods.CreateOlympianSJSONData({
	godName = "Artemis",
	godType = godtype,
	iconPathOverrides = {
		boonSelectSymbolPath = true,
	},
	boonSelectSymbolPath = "GUI\\Screens\\BoonSelectSymbols\\Artemis",
	iconSpinPath = "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisIconSpin",
	previewPath = "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisPreview",
	colorA = { Red = 0.39, Green = 0.52, Blue = 0.21, Opacity = 0.93 },
	colorB = { Red = 0.28, Green = 0.46, Blue = 0.12, Opacity = 0.91 },
	colorC = { Red = 0.23, Green = 0.57, Blue = 0.31, Opacity = 1.0 },
	godDescriptionText = "Goddess of the Hunt",
})

if not game.LootData[mod.ArtemisUpgradeName] then
	rom.log.error("Artemis not correctly initialized into LootData, please restart your game, if this error persists, please report it.")
	return
end

game.LootData[mod.ArtemisUpgradeName].UpgradeMenuOpenVoiceLines[1].PreLineWait = 0.6
game.LootData[mod.ArtemisUpgradeName].UpgradeMenuOpenVoiceLines[2].PreLineWait = 0.7
game.LootData[mod.ArtemisUpgradeName].UpgradeMenuOpenVoiceLines[3].PreLineWait = 0.7

--* Too many vars to do in for loops, and I CBA do it
if not mod.zagJourney then
	local devArtemis = sjson.to_object({
		Name = "DevotionArtemis",
		InheritFrom = "1_BaseEnemyMagicProjectile",
		DetonateFx = "RadialNovaDevotion-Artemis",
		Type = "HOMING",
		Fuse = 1.5,
		AllowTargetInvulnerable = true,
		Damage = 8,
		DamageRadius = 160.0,
		DamageRadiusScaleY = 0.6,
		ImpactVelocity = 0,
		MaxAdjustRate = 200, --160
		Speed = 600,
		Range = 1600,
		FlashBeforeExpireDuration = 0.5,
		DieWithOwner = true,
		InheritOwnerElapsedTimeMultiplier = false,
		CheckUnitImpact = false,
		CheckObstacleImpact = false,
		MaxVictimZ = 9999,
		SpawnRadius = 700,
		IgnoreCoverageAngles = true,
		GroupName = "FX_Terrain",
		DissipateFx = "TheseusGodPowerPreviewDecalDarkFade",
		AffectsEnemies = true,
		AffectsFriends = false,
		AffectsSelf = false,
		CanBeReflected = false,
		CanBeProjectileDefenseDestroyed = false,
		CanBeProjectileDefenseDestroyedByName = "null",
		CanBeProjectileDefenseDestroyedByLayer = "null",
		CanBeProjectileDefenseDestroyedByName2 = "null",
		DetonateSound = "null",
		Thing = {
			Graphic = "TheseusGodPowerPreviewDecal_Artemis",
			RotateGeometry = false,
			Scale = 1.0,
			Color = {
				Red = 0,
				Green = 1.0,
				Blue = 0.1,
				Opacity = 1.0,
			},
			Points = {
				{
					X = 0,
					Y = 8,
				},
				{
					X = 32,
					Y = 0,
				},
				{
					X = 0,
					Y = -8,
				},
				{
					X = -32,
					Y = 0,
				},
			},
		},
	}, mod.Order)

	sjson.hook(mod.enemyProjFile, function(data)
		table.insert(data.Projectiles, devArtemis)
	end)

	local wepData = {
		DevotionArtemis = {
			Name = "DevotionArtemis",
			AIData = {
				DeepInheritance = true,
				ProjectileName = "DevotionArtemis",

				PreAttackDuration = 0.3,
				FireDuration = 0.0,
				PostAttackDuration = 0.0,
				PostAttackCooldownMin = 2.5,
				PostAttackCooldownMax = 2.8,
				Spread = 360,

				RandomTargetAngle = true,
				TargetOffsetDistanceMin = 200,
				TargetOffsetDistanceMax = 300,
				PreMoveTeleport = true,
				TeleportToTarget = true,

				FireTicksMin = 5,
				FireTicksMax = 7,
				NumProjectiles = 2,

				FireInterval = 0.3,
				ResetTargetPerTick = true,
				CreateOwnTargetFromOriginalTarget = true,
			},
		},
	}

	OverwriteTableKeys(game.WeaponData, wepData)
	OverwriteTableKeys(game.WeaponDataEnemies, wepData)
	wepData = nil
end
