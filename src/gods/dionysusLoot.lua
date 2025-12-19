---@meta _
---@diagnostic disable: lowercase-global

game.EnemyData.NPC_Dionysus_01.GiftTextLineSets.DionysusGift01.GameStateRequirements = {
	{ PathTrue = { "GameState", "UseRecord" }, HasAny = { mod.DionysusUpgradeName, "NPC_Dionysus_01" } },
}

local textLineSets = {
	DionysusChat01 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0006", Text = "Things are happening all over but this is the only happening place on {#Emph}this {#Prev}mountain, baby." },
	},
	DionysusChat02 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0007", Text = "Just one drink isn't going to hurt! It's going to do the {#Emph}opposite{#Prev}, you'll see!" },
	},
	DionysusChat03 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0008", Text = "Can't stay and hang out, you got places to go, people to see, I get it, baby!" },
	},
	DionysusChat04 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0009", Emote = "PortraitEmoteCheerful", Text = "You look like you're having a night! And wouldn't you know it, so am {#Emph}I!" },
	},
	DionysusChat05 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0010", Text = "Been going for a while here, baby, and we plan to {#Emph}keep {#Prev}going till all this is over!" },
	},
	DionysusChat06 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0011", Emote = "PortraitEmoteCheerful", Text = "Come on now, relax and have a drink, {#Emph}mingle {#Prev}a bit, this is a {#Emph}feast{#Prev}, you know!" },
	},
	DionysusChat07 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0012", Text = "Remember, don't go telling Dad about this little gathering of ours, all right?" },
	},
	DionysusChat08 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0013", Emote = "PortraitEmoteCheerful", Text = "You're always welcome here but not your worries, baby, you leave those behind!" },
	},
	DionysusChat09 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0014", Emote = "PortraitEmoteCheerful", Text = "Hey, pull yourself together, baby, we're just getting started!" },
	},
	DionysusChat10 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0015", Emote = "PortraitEmoteCheerful", Text = "Sure you don't want to take a quick dip in the spring? It'll warm you right up!" },
	},
	DionysusChat11 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0016", Text = "This mountain isn't going anywhere, and neither are we!" },
	},
	DionysusChat12 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0017", Text = "Come all this way and can't even hang out, that's just not right, baby!" },
	},
	DionysusChat13 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0018", Text = "If you're sick of all the fighting, I've got {#Emph}just {#Prev}the thing for you!" },
	},
	DionysusChat14 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0019", Text = "The water's nice and warm, but if you don't want to take a dip, it's cool!" },
	},
	DionysusChat15 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0020", Text = "I'd ask you tell the fam I told them cheers but that might get a little awkward, yeah?" },
	},
	DionysusChat16 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0021", Emote = "PortraitEmoteCheerful", Text = "Leave your worries at the gate and have yourself a cup of something, {#Emph}here!" },
	},
	DionysusChat17 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0022", Text = "Know that all of us are with you {#Emph}all {#Prev}the way, so cheers to your success!" },
	},
	DionysusChat18 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0023", Text = "Take it from me, there is {#Emph}never {#Prev}a bad time for a good feast!" },
	},
	DionysusChat20 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0025", Text = "No use fighting the inevitable when you're thirsty, yeah?" },
	},
	DionysusChat21 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0026", Text = "Take a load off, relax, have a drink and all that! The night's still young!" },
	},
	DionysusChat22 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0027", Text = "Well don't just stand there, eat! Drink! Whatever you fancy!" },
	},
	DionysusChat23 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "~=",
				Value = 5,
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0028", Text = "The moon is shining, the water's warm, the Nectar's flowing, what is not to like?" },
	},
	DionysusChat24 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0029", Text = "You keep on showing up but never stick around, quit {#Emph}teasing {#Prev}us, baby!" },
	},
	DionysusChat25 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				FunctionName = "RequiredHealthFraction",
				FunctionArgs = { Comparison = "<", Value = 0.6 },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0030", Text = "Hey Mel baby, you're bringing down the mood a bit looking like that, you get me, yeah?" },
	},
	DionysusChat26 = {
		UseableOffSource = true,
		PreEventFunctionName = "BoonInteractPresentation",
		PreEventFunctionArgs = { PickupWait = 1.0 },
		GameStateRequirements = {
			{
				PathFalse = { "PrevRun", "RoomsEntered", "P_Story01" },
			},
			{
				PathFalse = { "CurrentRun", "UseRecord", "zannc-Droppable_Gods-DionysusUpgrade" },
			},
		},
		{ Cue = "/VO/Dionysus_0031", Text = "Oh you missed a {#Emph}real {#Prev}good time last night... or might have been the night before..." },
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
}

local spawnrequirements = nil
local godtype = "god"
if config.Dionysus.spawnRequirements.enabled then
	spawnrequirements = {
		maximumSpawns = math.max(config.Dionysus.spawnRequirements.maximumSpawns - 1, 0), -- cause they say they want x spawns, but game handles it to be lessthan or equal spawns, so if they pass in x, they will actually get x+1 without doing -1
	}
	godtype = "npcgod"
end

local weaponBoons = nil
local boons = nil
if not config.Dionysus.splitTraits then
	weaponBoons = game.EnemyData.NPC_Dionysus_01.WeaponUpgrades
	boons = game.EnemyData.NPC_Dionysus_01.Traits
	game.EnemyData.NPC_Dionysus_01.RarityChances = nil
end

local packages = nil
if dioimproved then
	-- rom.log.warning(dioimproved)
	packages = { "NPC_Dionysus_01", "Dionysus", dioimproved._PLUGIN.guid }
else
	packages = { "NPC_Dionysus_01", "Dionysus" }
end

gods.InitializeGod({
	godName = "Dionysus",
	godType = godtype,
	Gender = "F",
	skipCodex = true,
	LoadPackages = packages,
	FlavorTextIds = { "DionysusUpgrade_FlavorText01", "DionysusUpgrade_FlavorText02", "DionysusUpgrade_FlavorText03" },
	SFX_Portrait = "/SFX/DionysusBoonWineLaugh",
	Color = { 91, 255, 100, 255 },
	LightingColor = { 200, 0, 255, 255 },
	LootColor = { 200, 0, 255, 227 },
	SubtitleColor = Color.DionysusVoice,

	SpawnLikeHermes = spawnrequirements,
	WeaponUpgrades = weaponBoons,
	Traits = boons,

	ExtraFields = {
		Speaker = "NPC_Dionysus_01",
		SpeakerName = "Dionysus",
		Portrait = "Portrait_Dionysus_Default_01",
		OverlayAnim = "DionysusOverlay",
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
})

gods.CreateOlympianSJSONData({
	godName = "Dionysus",
	godType = godtype,
	iconPathOverrides = {
		boonSelectSymbolPath = true,
	},
	boonSelectSymbolPath = "GUI\\Screens\\BoonSelectSymbols\\Dionysus",
	iconSpinPath = "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusIconSpin",
	previewPath = "Items\\Loot\\Boon\\DionysusIconSpin\\DionysusPreview",
	colorA = { Red = 0.65, Green = 0.16, Blue = 0.76 },
	colorB = { Red = 0.57, Green = 0.11, Blue = 0.70 },
	colorC = { Red = 0.50, Green = 0.21, Blue = 0.65 },
	godDescriptionText = "God of Wine",
})

if not game.LootData[mod.DionysusUpgradeName] then
	rom.log.error("Dionysus not correctly initialized into LootData, please restart your game, if this error persists, please report it.")
	return
end

if not mod.zagJourney then
	local devDionysus = sjson.to_object({
		Name = "DevotionDionysus",
		InheritFrom = "1_BaseEnemyMagicProjectile",
		DetonateFx = "null", --RadialNovaTheseusWrath-Dionysus
		Type = "INSTANT",
		Fuse = 0.25,
		Damage = 5,
		DamageRadius = 100.0,
		DamageRadiusScaleY = 0.6,
		ImpactVelocity = 0,
		DieWithOwner = true,
		InheritOwnerElapsedTimeMultiplier = false,
		CheckUnitImpact = false,
		CheckObstacleImpact = false,
		MaxVictimZ = 9999,
		SpawnRadius = 0,
		TotalFuse = 10.0,
		MultiDetonate = true,
		ImmunityDuration = 0.1,
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
		DetonateSound = "/SFX/Explosion1",
		Thing = {
			Graphic = "DevotionPreAttackBase_Dionysus", --DevotionPreAttackBase_Dionysus
			RotateGeometry = false,
			Scale = 1.0,
			Color = {
				Red = 0.3,
				Green = 0.0,
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
	}, mod.Order)

	local devPreAttackDio = sjson.to_object({
		Name = "DevotionPreAttackFx_Dionysus",
		InheritFrom = "DevotionPreAttackFx",
		ClearCreateAnimations = true,
		CreateAnimations = {
			{ Name = "DevotionRings_Dionysus" },
			{ Name = "DevotionLines_Dionysus" },
		},
	}, mod.Order)

	local devLinesDio = sjson.to_object({
		Name = "DevotionLines_Dionysus",
		InheritFrom = "DevotionLines",
		Red = 0.3,
		Green = 0.1,
		Blue = 1,
		Scale = 3,
		ScaleFromOwner = "Ignore",
		ColorFromOwner = "Ignore",
	}, mod.Order)

	local devRingsDio = sjson.to_object({
		Name = "DevotionRings_Dionysus",
		InheritFrom = "DevotionRings",
		Red = 0.3,
		Green = 0.1,
		Blue = 1,
		ColorFromOwner = "Ignore",
	}, mod.Order)

	local devPreAttackEndDio = sjson.to_object({
		Name = "DevotionPreAttackBaseEnd_Dionysus",
		InheritFrom = "DevotionPreAttackBaseEnd",
		Red = 0.3,
		Green = 0.1,
		Blue = 1,
	}, mod.Order)

	local devPreAttackBaseDio = sjson.to_object({
		Name = "DevotionPreAttackBase_Dionysus",
		InheritFrom = "DevotionPreAttackBase",
		VisualFx = "DevotionPreAttackFx_Dionysus",
		CreateAnimationOnEnd = "DevotionPreAttackBaseEnd_Dionysus",
		Red = 0.3,
		Green = 0.1,
		Blue = 1,
		ColorFromOwner = "Ignore",
		EndAlpha = 0.2,
		Sound = "/SFX/Player Sounds/DionysusLobProjectileGas",
		StopSoundOnFinishFade = 0.2,
		CreateAnimation = "DionysusCloudB_Devotion",
	}, mod.Order)

	sjson.hook(mod.enemyProjFile, function(data)
		table.insert(data.Projectiles, devDionysus)
	end)

	sjson.hook(mod.enemyAnimFile, function(data)
		table.insert(data.Animations, devPreAttackDio)
		table.insert(data.Animations, devLinesDio)
		table.insert(data.Animations, devRingsDio)
		table.insert(data.Animations, devPreAttackEndDio)
		table.insert(data.Animations, devPreAttackBaseDio)
	end)

	local wepData = {
		DevotionDionysus = {
			Name = "DevotionDionysus",
			AIData = {
				DeepInheritance = true,
				ProjectileName = "DevotionDionysus",

				PreAttackDuration = 0,
				FireDuration = 0.0,
				PostAttackDuration = 0.0,
				PostAttackCooldownMin = 0.9,
				PostAttackCooldownMax = 1.2,
				CreateOwnTargetFromOriginalTarget = true,
				RandomTargetAngle = true,
				TargetOffsetDistanceMin = 150,
				TargetOffsetDistanceMax = 350,
				PreMoveTeleport = true,
				TeleportToTarget = true,
			},
		},
	}

	OverwriteTableKeys(game.WeaponData, wepData)
	OverwriteTableKeys(game.WeaponDataEnemies, wepData)
	wepData = nil
end
