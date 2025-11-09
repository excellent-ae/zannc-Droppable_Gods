---@meta _
---@diagnostic disable: lowercase-global

game.EnemyData.NPC_Artemis_01.GiftTextLineSets.ArtemisGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { "ArtemisUpgrade", "NPC_Artemis_Field_01" } },
}

game.EnemyData.NPC_Artemis_Field_01.WeaponUpgrades = {}

local textLineSets = {
	ArtemisChat01 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0004", UseEventEndSound = true, Text = "Take this, Sister, and go find your mark." },
	},
	ArtemisChat02 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0005", UseEventEndSound = true, Text = "Tread ever softly and strike swift and true, Sister." },
	},
	ArtemisChat03 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0006", UseEventEndSound = true, Text = "Happened to be in the area again, so thought I'd stop on by." },
	},
	ArtemisChat04 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0007", UseEventEndSound = true, Text = "May Moonlight guide you to your prey, and expose his every weakness." },
	},
	ArtemisChat05 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0008", UseEventEndSound = true, Text = "Another night, another duty for the Silver Sisters." },
	},
	ArtemisChat06 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
				IsAny = { "F" },
			},
		},
		{ Cue = "/VO/Artemis_0009", UseEventEndSound = true, Portrait = "Portrait_Artemis_Serious_01", Text = "I have to say, these woods are not my favorite..." },
	},
	ArtemisChat07 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "G" },
			},
		},
		{ Cue = "/VO/Artemis_0010", UseEventEndSound = true, Text = "I can't venture any further below, though I can give you this." },
	},
	ArtemisChat08 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0011", UseEventEndSound = true, Text = "The skilled huntress keeps her bag of tricks full and with her at all times." },
	},
	ArtemisChat09 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0012", UseEventEndSound = true, Text = "Steady yourself, Sister. You have my full support and more." },
	},
	ArtemisChat10 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0013", UseEventEndSound = true, Text = "May your aim ever be true. Not unlike mine!" },
	},
	ArtemisChat11 = {
		PlayFirst = true,
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0014", UseEventEndSound = true, Text = "I still think you should try a bow again sometime..." },
	},
	ArtemisChat12 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0015", UseEventEndSound = true, Text = "We hunt alone. Although these run-ins aren't so bad!" },
	},
	ArtemisChat13 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0016", UseEventEndSound = true, Text = "Always a pleasure working with you, Sister." },
	},
	ArtemisChat14 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "F" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
		},
		{ Cue = "/VO/Artemis_0017", UseEventEndSound = true, Text = "Go cut that wretched Titan down to size for me, would you?" },
	},
	ArtemisChat15 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0018", UseEventEndSound = true, Text = "May none dare stand between a witch and her prey." },
	},
	ArtemisChat16 = {
		UseableOffSource = true,
		GameStateRequirements = {
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
		},
		{ Cue = "/VO/Artemis_0019", UseEventEndSound = true, Text = "Fine night for hunting Titans, don't you think?" },
	},
	ArtemisChat17 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0020", UseEventEndSound = true, Portrait = "Portrait_Artemis_Serious_01", Text = "Picked up the scent of a few stragglers I'll take care of after this..." },
	},
	ArtemisChat18 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0021", UseEventEndSound = true, Text = "You'll find your mark. I know you will." },
	},
	ArtemisChat19 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0022", UseEventEndSound = true, Text = "Yours is the most dangerous prey of all. I'm a bit envious!" },
	},
	ArtemisChat20 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0023", UseEventEndSound = true, Text = "Here's a little something to go with those witching arts of yours." },
	},
	ArtemisChat21 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0024", UseEventEndSound = true, Text = "I've got your back, Sister, so just keep moving forward." },
	},
	ArtemisChat22 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0025", UseEventEndSound = true, Text = "We're the Silver Sisters, and we never miss our mark." },
	},
	ArtemisChat23 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0026", UseEventEndSound = true, Text = "We are the Silver Sisters, and this is our time to shine." },
	},
	ArtemisChat24 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0027", UseEventEndSound = true, Text = "Got to say it's nice to get away from it all like this." },
	},
	ArtemisChat25 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "SpeechRecord" },
				HasNone = { "/VO/Artemis_0094" },
			},
		},
		{ Cue = "/VO/Artemis_0028", UseEventEndSound = true, Text = "Fancy running into you again, and here of all places!" },
	},
	ArtemisChat26 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0029", UseEventEndSound = true, Text = "You tracked {#Emph}me {#Prev}down this time, I'll have you know!" },
	},
	ArtemisChat27 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0030", UseEventEndSound = true, Text = "You were born to do this, Sister, and you're going to succeed." },
	},
	ArtemisChat28 = {
		UseableOffSource = true,
		{ Cue = "/VO/Artemis_0031", UseEventEndSound = true, Text = "Sure beats being back on that mountaintop, let me tell you." },
	},
	ArtemisChat29 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 1,
			},
		},
		{ Cue = "/VO/Artemis_0032", UseEventEndSound = true, Text = "The Moon is full again. May our combined might take you far." },
	},
	ArtemisChat30 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 5,
			},
		},
		{ Cue = "/VO/Artemis_0033", UseEventEndSound = true, Text = "A new moon marks a new beginning, so take heart, Sister." },
	},
	ArtemisChat31 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 4,
			},
		},
		{ Cue = "/VO/Artemis_0034", UseEventEndSound = true, Text = "The Moon's light wanes again, but your strength needn't falter." },
	},
	ArtemisChat32 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 8,
			},
		},
		{ Cue = "/VO/Artemis_0035", UseEventEndSound = true, Text = "As the light of the waxing Moon intensifies, so too does our potential, Sister." },
	},
	ArtemisChat33 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "N" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
		},
		{ Cue = "/VO/Artemis_0449", UseEventEndSound = true, Text = "Good hunting on the way up to the mountain, Sister." },
	},
	ArtemisChat34 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "GameState", "ReachedTrueEnding" },
			},
		},
		{ Cue = "/VO/Artemis_0450", UseEventEndSound = true, Text = "Father better have expressed his gratitude for all you've done." },
	},
	ArtemisChat35 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "GameState", "ReachedTrueEnding" },
			},
			{
				PathTrue = { "CurrentRun", "BiomesReached", "N" },
			},
			NamedRequirementsFalse = { "StandardPackageBountyActive" },
		},
		{ Cue = "/VO/Artemis_0451", UseEventEndSound = true, Text = "Good of you to deal with Typhon so that we don't have to anymore!" },
	},
	ArtemisChat36 = {
		UseableOffSource = true,
		GameStateRequirements = {},
		{ Cue = "/VO/Artemis_0452", UseEventEndSound = true, Text = "I'll cover your tracks, but first, here's something for the road." },
	},
	ArtemisChat37 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "ProjectileRecord", "ArtemisSniperBolt" },
				Comparison = "<=",
				Value = 4,
			},
			{
				PathFalse = { "CurrentRun", "SpeechRecord", "/VO/Artemis_0448" },
			},
		},
		{ Cue = "/VO/Artemis_0453", UseEventEndSound = true, Text = "Next time leave more of them for me, would you?" },
	},
	-- 38 blank
	ArtemisChat39 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				FunctionName = "RequiredHealthFraction",
				FunctionArgs = { Comparison = ">=", Value = 0.8 },
			},
			{
				FunctionName = "RequireRunsSinceTextLines",
				FunctionArgs = { TextLines = { "ArtemisAboutSayingLittle01" }, Min = 9 },
			},
		},
		{ Cue = "/VO/Artemis_0467", UseEventEndSound = true, Text = "Clean and efficient, just the way I like it, Sister." },
	},
	ArtemisChat40 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				FunctionName = "RequireRunsSinceTextLines",
				FunctionArgs = { TextLines = { "ArtemisGrantsReward01" }, Min = 9 },
			},
		},
		{ Cue = "/VO/Artemis_0468", UseEventEndSound = true, Text = "Here, a little extra Moon magick for all you've done, and still intend to do." },
	},
}

for k, v in pairs(textLineSets) do
	if not v.Name then
		v.Name = k
	end
end

local spawnrequirements = false
if config.Artemis.requirements then
	spawnrequirements = true
end

gods.InitializeGod({
	godName = "Artemis",
	godType = "GOD",
	Gender = "F",
	LoadPackages = { "Artemis" },
	FlavorTextIds = { "ArtemisUpgrade_FlavorText01", "ArtemisUpgrade_FlavorText02", "ArtemisUpgrade_FlavorText03" },
	SFX_Portrait = "/SFX/ArtemisBoonArrow",
	Color = { 91, 255, 100, 255 },
	LightingColor = { 210, 255, 97, 255 },
	LootColor = { 20, 120, 7, 255 },
	SubtitleColor = Color.ArtemisVoice,
	WeaponUpgrades = game.EnemyData.NPC_Artemis_Field_01.WeaponUpgrades,
	Traits = game.EnemyData.NPC_Artemis_Field_01.Traits,

	SpawnLikeHermes = spawnrequirements,

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
	pluginGUID = _PLUGIN.guid,
	godName = "Artemis",
	godType = "god",
	skipBoonSelectSymbol = true,
	iconSpinPath = "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisIconSpin",
	previewPath = "Items\\Loot\\Boon\\ArtemisIconSpin\\ArtemisPreview",
	colorA = { Red = 0.39, Green = 0.52, Blue = 0.21, Opacity = 0.93 },
	colorB = { Red = 0.28, Green = 0.46, Blue = 0.12, Opacity = 0.91 },
	colorC = { Red = 0.23, Green = 0.57, Blue = 0.31, Opacity = 1.0 },
	portraitData = {
		skipNeutralPortrait = true,
	},
})

if game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines then
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[1].PreLineWait = 0.6
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[2].PreLineWait = 0.7
	game.LootData.ArtemisUpgrade.UpgradeMenuOpenVoiceLines[3].PreLineWait = 0.7
end
