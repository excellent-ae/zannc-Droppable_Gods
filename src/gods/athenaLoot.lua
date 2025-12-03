---@meta _
---@diagnostic disable: lowercase-global

game.EnemyData.NPC_Athena_01.GiftTextLineSets.AthenaGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { mod.AthenaUpgradeName, "NPC_Athena_01" } },
}

local textLineSets = {
	AthenaChat01 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0006", Text = "I shall ensure this area remains secure for now; make your advance!" },
	},
	AthenaChat02 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0007", Text = "Continue your ascent, as I shall keep what passes for the Titan's armies occupied." },
	},
	AthenaChat03 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0008", Text = "They never seem to learn, do they? But neither do they ever seem to stop." },
	},
	AthenaChat04 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0009", Text = "I trust that our defenses have not proven too much of a hindrance to you here." },
	},
	AthenaChat05 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0010",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "When our family stands united, there's no hardship that we cannot overcome.",
		},
	},
	-- AthenaChat06 = {
	-- 	UseableOffSource = true,
	-- 	{
	-- 		Cue = "/VO/Athena_0011",
	-- 		PreLineThreadedFunctionName = "PlayCharacterAnim",
	-- 		PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
	-- 		PostLineAnim = "Athena_Proud_End",
	-- 		Text = "I've wrath to spare for all those you shall confront on your way to the summit.",
	-- 	},
	-- },
	-- AthenaChat07 = {
	-- 	UseableOffSource = true,
	-- 	{ Cue = "/VO/Athena_0012", Text = "Make haste toward the Palace, Cousin, and my blessing be with you." },
	-- },
	AthenaChat08 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "PrevRun", "Cleared" },
			},
		},
		{
			Cue = "/VO/Athena_0013",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "Another victory is within reach; go take it, and I'll cover you as you proceed.",
		},
	},
	AthenaChat09 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0014",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "Battle rages all around us still, Melinoë. Then let us finish what our enemies began.",
		},
	},
	AthenaChat10 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathFalse = { "GameState", "ReachedTrueEnding" },
			},
		},
		{
			Cue = "/VO/Athena_0015",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "This mountain stronghold of ours shall never fall, try as the Titan might.",
		},
	},
	AthenaChat11 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0016",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "Climb forth, Cousin, and may your foothold never falter on the way.",
		},
	},
	AthenaChat12 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathFalse = { "GameState", "ReachedTrueEnding" },
			},
		},
		{ Cue = "/VO/Athena_0017", Text = "Go quickly but with care; my father and the rest await you at the summit." },
	},
	AthenaChat13 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0018", Text = "I'm grateful that you're back, so that the next stage of our plan can now unfold." },
	},
	AthenaChat14 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0019",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "You're all the reinforcements we require, and I'm ever-grateful that you're here.",
		},
	},
	AthenaChat15 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0020", Text = "Would that we could fight together, yet we accomplish more going our separate ways." },
	},
	AthenaChat16 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0021", Text = "Our foes swarm at us like insects, and we shall deal with them as such." },
	},
	AthenaChat17 = {
		UseableOffSource = true,

		{ Cue = "/VO/Athena_0022", Text = "I knew that I could count on you to be here tonight precisely at this time." },
	},
	AthenaChat18 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathFalse = { "GameState", "ReachedTrueEnding" },
			},
		},
		{
			Cue = "/VO/Athena_0023",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "Many such victories are still to come before our war is finally ended.",
		},
	},
	AthenaChat19 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0024",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "It is not enough merely to vanquish our enemies; let us make an example of them.",
		},
	},
	-- AthenaChat20 = {
	-- 	UseableOffSource = true,
	-- 	GameStateRequirements = {
	-- 		{
	-- 			PathTrue = { "CurrentRun", "BiomesReached", "P" },
	-- 		},
	-- 	},
	-- 	{
	-- 		Cue = "/VO/Athena_0025",
	-- 		PreLineThreadedFunctionName = "PlayCharacterAnim",
	-- 		PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
	-- 		PostLineAnim = "Athena_Proud_End",
	-- 		Text = "The peak of Olympus awaits; go, and I'll ensure you need not watch your back.",
	-- 	},
	-- },
	-- AthenaChat21 = {
	-- 	UseableOffSource = true,
	-- 	GameStateRequirements = {
	-- 		{
	-- 			PathTrue = { "CurrentRun", "BiomesReached", "N" },
	-- 		},
	-- 	},
	-- 	{ Cue = "/VO/Athena_0026", Text = "I know you've scores to settle in the Underworld, so thank you for being here." },
	-- },
	AthenaChat22 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "BiomesReached" },
				HasAny = { "I", "P" },
			},
		},
		{ Cue = "/VO/Athena_0027", Text = "Your skill alone has brought you to this point, although perhaps I may assist." },
	},
	AthenaChat23 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0028",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "Let our enemies rue the moment they deigned to stand against we gods.",
		},
	},
	AthenaChat24 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "~=",
				Value = 5,
			},
			{
				PathTrue = { "CurrentRun", "UseRecord", "SpellDrop" },
			},
		},
		{
			Cue = "/VO/Athena_0029",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "It is as though the Moon herself directed me to your position here tonight.",
		},
	},
	AthenaChat25 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0030", Text = "Our family has endured for aeons; this shall pass, as does all else." },
	},
	AthenaChat26 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0031",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "All those who dare oppose us or our rightful rule shall be given no quarter.",
		},
	},
	-- AthenaChat27 = {
	-- 	PlayFirst = true,
	-- 	UseableOffSource = true,
	-- 	GameStateRequirements = {
	-- 		{
	-- 			PathTrue = { "CurrentRun", "BiomesReached", "N" },
	-- 		},
	-- 		{
	-- 			PathFalse = { "GameState", "ReachedTrueEnding" },
	-- 		},
	-- 	},
	-- 	{ Cue = "/VO/Athena_0032", Text = "Proceed immediately to the Palace and I'll cover you, Melinoë." },
	-- },
	AthenaChat28 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0033", Text = "What use is a good strategy without the necessary skill to see it through?" },
	},
	AthenaChat29 = {
		UseableOffSource = true,
		{ Cue = "/VO/Athena_0034", Text = "The Titan's forces know nothing of fear, but I trust that they can still be taught." },
	},
	AthenaChat30 = {
		UseableOffSource = true,
		{
			Cue = "/VO/Athena_0035",
			PreLineThreadedFunctionName = "PlayCharacterAnim",
			PreLineThreadedFunctionArgs = { Name = "Athena_Proud_Start", WaitTime = 1.0 },
			PostLineAnim = "Athena_Proud_End",
			Text = "May the Boon I now bestow provide a difference in the battles yet to come.",
		},
	},
}

local spawnrequirements = false
local godtype = "god"
if config.Athena.requirements then
	spawnrequirements = true
	godtype = "npcgod"
end

gods.InitializeGod({
	godName = "Athena",
	godType = godtype,
	Gender = "F",
	skipCodex = true,
	LoadPackages = { "Athena" },
	FlavorTextIds = { "AthenaUpgrade_FlavorText01", "AthenaUpgrade_FlavorText02", "AthenaUpgrade_FlavorText03" },
	SFX_Portrait = "/SFX/AthenaWrathHolyShield",
	Color = { 91, 255, 100, 255 },
	LightingColor = { 175, 157, 255, 255 },
	LootColor = { 175, 157, 255, 235 },
	SubtitleColor = Color.AthenaVoice,
	WeaponUpgrades = game.EnemyData.NPC_Athena_01.WeaponUpgrades,
	Traits = game.EnemyData.NPC_Athena_01.Traits,

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

	UpgradeMenuOpenVoiceLines = game.EnemyData.NPC_Athena_01.UpgradeMenuOpenVoiceLines,
	--#endregion
})

gods.CreateOlympianSJSONData({
	godName = "Athena",
	godType = godtype,
	iconPathOverrides = {
		boonSelectSymbolPath = true,
	},
	boonSelectSymbolPath = "GUI\\Screens\\BoonSelectSymbols\\Athena",
	iconSpinPath = "Items\\Loot\\Boon\\AthenaIconSpin\\AthenaIconSpin",
	previewPath = "Items\\Loot\\Boon\\AthenaIconSpin\\AthenaPreview",
	colorA = { Red = 0.76, Green = 0.64, Blue = 0.16 },
	colorB = { Red = 0.68, Green = 0.57, Blue = 0.12 },
	colorC = { Red = 0.60, Green = 0.51, Blue = 0.19 },
	godDescriptionText = "Goddess of Wisdom",
})

if game.LootData[mod.AthenaUpgradeName] then
	game.LootData[mod.AthenaUpgradeName].SpeakerName = "Athena"
	game.LootData[mod.AthenaUpgradeName].Portrait = "Portrait_Athena_Default_01"
	game.LootData[mod.AthenaUpgradeName].OverlayAnim = "AthenaOverlay"
end
