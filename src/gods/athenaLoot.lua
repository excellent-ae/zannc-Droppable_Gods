---@meta _
---@diagnostic disable: lowercase-global

game.EnemyData.NPC_Athena_01.GiftTextLineSets.AthenaGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { mod.AthenaUpgradeName, "NPC_Athena_01" } },
}

local textLineSets = {
	AthenaChat01 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0006", Text = "I shall ensure this area remains secure for now; make your advance!" },
	},
	AthenaChat02 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0007", Text = "Continue your ascent, as I shall keep what passes for the Titan's armies occupied." },
	},
	AthenaChat03 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0008", Text = "They never seem to learn, do they? But neither do they ever seem to stop." },
	},
	AthenaChat04 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0009", Text = "I trust that our defenses have not proven too much of a hindrance to you here." },
	},
	AthenaChat05 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Text = "When our family stands united, there's no hardship that we cannot overcome.",
		},
	},
	AthenaChat08 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "PrevRun", "Cleared" },
			},
		},
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0013",
			Text = "Another victory is within reach; go take it, and I'll cover you as you proceed.",
		},
	},
	AthenaChat09 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0014",
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
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0015",
			Text = "This mountain stronghold of ours shall never fall, try as the Titan might.",
		},
	},
	AthenaChat11 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0016",
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
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0017", Text = "Go quickly but with care; my father and the rest await you at the summit." },
	},
	AthenaChat13 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0018", Text = "I'm grateful that you're back, so that the next stage of our plan can now unfold." },
	},
	AthenaChat14 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0019",
			Text = "You're all the reinforcements we require, and I'm ever-grateful that you're here.",
		},
	},
	AthenaChat15 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0020", Text = "Would that we could fight together, yet we accomplish more going our separate ways." },
	},
	AthenaChat16 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0021", Text = "Our foes swarm at us like insects, and we shall deal with them as such." },
	},
	AthenaChat17 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
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
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0023",
			Text = "Many such victories are still to come before our war is finally ended.",
		},
	},
	AthenaChat19 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0024",
			Text = "It is not enough merely to vanquish our enemies; let us make an example of them.",
		},
	},
	AthenaChat22 = {
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "BiomesReached" },
				HasAny = { "I", "P" },
			},
		},
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0027", Text = "Your skill alone has brought you to this point, although perhaps I may assist." },
	},
	AthenaChat23 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0028",
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
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0029",
			Text = "It is as though the Moon herself directed me to your position here tonight.",
		},
	},
	AthenaChat25 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0030", Text = "Our family has endured for aeons; this shall pass, as does all else." },
	},
	AthenaChat26 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0031",
			Text = "All those who dare oppose us or our rightful rule shall be given no quarter.",
		},
	},
	AthenaChat28 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0033", Text = "What use is a good strategy without the necessary skill to see it through?" },
	},
	AthenaChat29 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{ Cue = "/VO/Athena_0034", Text = "The Titan's forces know nothing of fear, but I trust that they can still be taught." },
	},
	AthenaChat30 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		{
			Cue = "/VO/Athena_0035",
			Text = "May the Boon I now bestow provide a difference in the battles yet to come.",
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
}

local spawnrequirements = nil
local godtype = "god"
if config.Athena.spawnRequirements.enabled then
	spawnrequirements = {
		maximumSpawns = math.max(config.Artemis.spawnRequirements.maximumSpawns - 1, 0), -- cause they say they want x spawns, but game handles it to be lessthan or equal spawns, so if they pass in x, they will actually get x+1 without doing -1
	}
	godtype = "npcgod"
end

local weaponBoons = nil
local boons = nil
if not config.Athena.splitTraits then
	weaponBoons = game.EnemyData.NPC_Athena_01.WeaponUpgrades
	boons = game.EnemyData.NPC_Athena_01.Traits
	game.EnemyData.NPC_Athena_01.RarityChances = nil
end

gods.InitializeGod({
	godName = "Athena",
	godType = godtype,
	Gender = "F",
	skipCodex = true,
	LoadPackages = { "NPC_Athena_01", "Athena" },
	FlavorTextIds = { "AthenaUpgrade_FlavorText01", "AthenaUpgrade_FlavorText02", "AthenaUpgrade_FlavorText03" },
	SFX_Portrait = "/SFX/AthenaWrathHolyShield",
	Color = { 91, 255, 100, 255 },
	LightingColor = { 175, 157, 255, 255 },
	LootColor = { 175, 157, 255, 235 },
	SubtitleColor = Color.AthenaVoice,

	SpawnLikeHermes = spawnrequirements,
	WeaponUpgrades = weaponBoons,
	Traits = boons,

	ExtraFields = {
		Speaker = "NPC_Athena_01",
		SpeakerName = "Athena",
		Portrait = "Portrait_Athena_Default_01",
		OverlayAnim = "AthenaOverlay",
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

if not game.LootData[mod.AthenaUpgradeName] then
	rom.log.error("Athena not correctly initialized into LootData, please restart your game, if this error persists, please report it.")
	return
end

if not mod.zagJourney then
	local devAthena = sjson.to_object({
		Name = "DevotionAthena",
		InheritFrom = "1_BaseEnemyMagicProjectile",
		DetonateFx = "null", --RadialNovaTheseusWrath-Athena
		Type = "INSTANT",
		Fuse = 1.3,
		Damage = 0,
		DamageRadius = 350.0,
		DamageRadiusScaleY = 0.6,
		ImpactVelocity = 0,
		DieWithOwner = true,
		InheritOwnerElapsedTimeMultiplier = false,
		CheckUnitImpact = false,
		CheckObstacleImpact = false,
		MaxVictimZ = 9999,
		SpawnRadius = 0,
		GroupName = "FX_Terrain_Add",
		DissipateFx = "TheseusGodPowerPreviewDecalDarkFade",
		AffectsEnemies = false,
		AffectsFriends = true,
		AffectsSelf = false,
		CanBeReflected = false,
		CanBeProjectileDefenseDestroyed = false,
		CanBeProjectileDefenseDestroyedByName = "null",
		CanBeProjectileDefenseDestroyedByLayer = "null",
		CanBeProjectileDefenseDestroyedByName2 = "null",
		DetonateSound = "/SFX/Player Sounds/AthenaShieldImpactDetonate",
		Thing = {
			Graphic = "DevotionPreAttackBase_Athena", -- DevotionPreAttackBase_Athena
			RotateGeometry = false,
			Scale = 1.0,
			Color = {
				Red = 0.0,
				Green = 0.05,
				Blue = 1.0,
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
		Effect = {
			Name = "MagicShieldInvincible", -- ?
			Type = "INVULNERABLE",
			Duration = 3.5,
			Modifier = 1.0,
			FrontFx = "AthenaProtectionFront",
			BackFx = "AthenaProtectionBack",
			Active = true,
			FlashFrontFxWhenExpiring = true,
		},
	}, mod.Order)

	local devPreAttackAthena = sjson.to_object({
		Name = "DevotionPreAttackFx_Athena",
		InheritFrom = "DevotionPreAttackFx",
		ClearCreateAnimations = true,
		CreateAnimations = {
			{ Name = "DevotionRings_Athena" },
			{ Name = "DevotionLines_Athena" },
		},
	}, mod.Order)

	local devLinesAthena = sjson.to_object({
		Name = "DevotionLines_Athena",
		InheritFrom = "DevotionLines",
		Red = 1,
		Green = 1,
		Blue = 1,
		EndRed = 1,
		EndGreen = 0.9,
		EndBlue = 0.3,
		StartRed = 0,
		StartGreen = 0.05,
		StartBlue = 1,
		ColorFromOwner = "Ignore",
	}, mod.Order)

	local devRingsAthena = sjson.to_object({
		Name = "DevotionRings_Athena",
		InheritFrom = "DevotionRings",
		Red = 1,
		Green = 1,
		Blue = 1,
		EndRed = 1,
		EndGreen = 0.9,
		EndBlue = 0.3,
		StartRed = 0,
		StartGreen = 0.05,
		StartBlue = 1,
		ColorFromOwner = "Ignore",
	}, mod.Order)

	local devPreAttackEndAthena = sjson.to_object({
		Name = "DevotionPreAttackBaseEnd_Athena",
		InheritFrom = "DevotionPreAttackBaseEnd",
		Red = 1,
		Green = 1,
		Blue = 1,
		StartRed = 1,
		StartGreen = 0.9,
		StartBlue = 0.3,
		EndRed = 0,
		EndGreen = 0.05,
		EndBlue = 1,
	}, mod.Order)

	local devPreAttackBaseAthena = sjson.to_object({
		Name = "DevotionPreAttackBase_Athena",
		InheritFrom = "DevotionPreAttackBase",
		VisualFx = "DevotionPreAttackFx_Athena",
		CreateAnimationOnEnd = "DevotionPreAttackBaseEnd_Athena",
		Red = 1,
		Green = 1,
		Blue = 1,
		EndRed = 1,
		EndGreen = 0.9,
		EndBlue = 0.3,
		StartRed = 0,
		StartGreen = 0.05,
		StartBlue = 1,
		ColorFromOwner = "Ignore",
		EndAlpha = 0.2,
		Sound = "/Leftovers/Menu Sounds/ChoirLoop",
		StopSoundOnFinishFade = 0.2,
	}, mod.Order)

	sjson.hook(mod.enemyProjFile, function(data)
		table.insert(data.Projectiles, devAthena)
	end)
	sjson.hook(mod.enemyAnimFile, function(data)
		table.insert(data.Animations, devPreAttackAthena)
		table.insert(data.Animations, devLinesAthena)
		table.insert(data.Animations, devRingsAthena)
		table.insert(data.Animations, devPreAttackEndAthena)
		table.insert(data.Animations, devPreAttackBaseAthena)
	end)

	local wepData = {
		DevotionAthena = {
			Name = "DevotionAthena",
			AIData = {
				DeepInheritance = true,
				ProjectileName = "DevotionAthena",

				PreAttackDuration = 0,
				FireDuration = 0.0,
				PostAttackDuration = 0.0,
				PostAttackCooldownMin = 6.5,
				PostAttackCooldownMax = 7.5,
				CreateOwnTargetFromOriginalTarget = true,
				RandomTargetAngle = true,
				TargetOffsetDistanceMin = 0,
				TargetOffsetDistanceMax = 0,
				PreMoveTeleport = true,
				TeleportToTarget = true,
				TargetRequiredKillEnemy = true,
			},
		},
	}

	OverwriteTableKeys(game.WeaponData, wepData)
	OverwriteTableKeys(game.WeaponDataEnemies, wepData)
	wepData = nil
end
