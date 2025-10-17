---@meta _
---@diagnostic disable: lowercase-global

local package = rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, _PLUGIN.guid)

modutil.mod.Path.Wrap("SetupMap", function(base)
	game.LoadPackages({ Name = package })
	base()
end)

-- * Data from Apollo - LootData_Apollo, Hera, Aphrodite etc
zannc_BaseGod = {
	NarrativeContextArtFlippable = false,
	GodLoot = true,
	TextLinesIgnoreQuests = true,
	GoldConversionEligible = true,
	UsePromptOffsetX = 80,
	CanReceiveGift = true,
	AlwaysShowDefaultUseText = true,
	Weight = 10,
	DestroyOnPickup = true,
	SelectionSound = "/SFX/Menu Sounds/GeneralWhooshMENU",
	ConfirmSound = "/SFX/Menu Sounds/GodBoonChoiceConfirm",
	BackgroundAnimation = "DialogueBackground_Olympus_BoonScreen",
	OnUsedFunctionArgs = { PreserveContextArt = true },
	InheritFrom = { "BaseLoot", "BaseSoundPackage" },
	ReplaceSpecialForGoldify = true,
	BanUnpickedBoonsEligible = true,

	GameStateRequirements = {},
	LastRewardEligible = true,
	-- RequireUseToGift = true,
	AnimOffsetZ = 80,
	LootRejectionAnimation = "BoonDissipateA_Zeus",
	NarrativeContextArt = "DialogueBackground_Olympus",
	GoldifyValue = 400,
	BoxAnimation = "DialogueSpeechBubbleLight",
	BoxExitAnimation = "DialogueSpeechBubbleLightOut",
	--     BoxAnimation = "DialogueSpeechBubble", // WAS using this, now not?

	-- OffersElementalTrait = { "Air", "Water", "Earth" }, // Maybe only if you are adding custom boons idk

	ManualRecordUse = true,
	UsePromptOffsetY = 48,
	ColorGrade = "ZeusLightning",

	UseText = "UseLoot",
	OnUsedFunctionName = "UseLoot",
	UseTextTalkAndGift = "UseLootAndGift",
	UseTextTalkAndSpecial = "UseLootAndSpecial",
	BlockedLootInteractionText = "UseLootLocked",
	UseTextTalkGiftAndSpecial = "UseLootGiftAndSpecial",
	Consumables = {},

	-- ? Everything from this onwards *might* need to be changed to whatever god you want (some can colours can stay the same)
	Color = { 250, 250, 215, 255 },
	NarrativeTextColor = { 32, 32, 30, 255 },
	NameplateSpeakerNameColor = Color.DialogueSpeakerNameOlympian,
	NameplateDescriptionColor = { 145, 45, 90, 255 },
	LightingColor = { 1, 0.91, 0.54, 1 },
	LootColor = { 255, 128, 32, 255 },
	SubtitleColor = { 255, 255, 205, 255 },
	EmoteOffsetX = 30,
	EmoteOffsetY = -320,

	Name = "ApolloUpgrade",
	Speaker = "NPC_Apollo_01",
	SpeakerName = "Apollo",
	SuperSacrificeCombatText = "SuperSacrifice_CombatText_ApolloUpgrade",
	PortraitEnterSound = "/SFX/ApolloBoonHarpPoof",
	LootRejectedText = "Player_GodDispleased_ApolloUpgrade",
	DoorIcon = "BoonDropApolloPreview",
	DoorUpgradedIcon = "BoonDropApolloUpgradedPreview",
	Icon = "BoonSymbolApollo",
	BoonInfoIcon = "BoonInfoSymbolApolloIcon",
	SpawnSound = "/SFX/ApolloBoonHarpPoof",
	LoadPackages = { "Apollo" },
	OverlayAnim = "ApolloOverlay",
	Gender = "Male",
	FlavorTextIds = { "ApolloUpgrade_FlavorText01", "ApolloUpgrade_FlavorText02", "ApolloUpgrade_FlavorText03" },
	UpgradeSelectedSound = "/SFX/ApolloBoonChoice",
	WrathPortrait = "Portrait_Apollo_Default_01_Wrath",
	EchoLastRewardId = "EchoLastRewardBoon_ApolloUpgrade", -- This might not need to have Upgrade at the end
	Portrait = "Portrait_Apollo_Default_01",
	MenuTitle = "UpgradeChoiceMenu_Title_ApolloUpgrade",
	-- Refer to Artemis for next 3
	BoonInfoTitleText = nil, --* Display name in codex, needed for npcs
	SurfaceShopText = nil, --* Not used on main gods, primarily health, mana, armour, some NPCs like Hermes
	SurfaceShopIcon = nil,
	--  OffersElementalTrait = { "Air", "Water", "Earth" },

	--#region Traits
	-- ! Example Traits
	-- Traits // "ApolloRetaliateBoon", "PerfectDamageBonusBoon", "BlindChanceBoon", "ApolloBlindBoon", "ApolloExCastBoon", "ApolloCastAreaBoon", "DoubleStrikeChanceBoon", "ElementalRallyBoon", "DoubleExManaBoon", " ApolloSecondStageCastBoon", " RaiseDeadBoon", " PoseidonSplashSprintBoon", " StormSpawnBoon", " ManaBurstCountBoon", " CoverRegenerationBoon", " BlindClearBoon", " DoubleSwordBoon"
	-- TraitIndex is the Traits table
	-- PriorityUpgrades and WeaponUpgrades is the same // "ApolloWeaponBoon", "ApolloSpecialBoon", "ApolloCastBoon", "ApolloSprintBoon", "ApolloManaBoon"
	--#endregion
	PriorityUpgrades = {},
	WeaponUpgrades = {},
	Traits = {},
	TraitIndex = {},

	-- ! Voice Lines from here downwards
	--#region Voicelines
	FirstSpawnVoiceLines = {},

	OnSpawnVoiceLines = {},

	UpgradeMenuOpenVoiceLines = {
		{ GlobalVoiceLines = "HeraclesBoonReactionVoiceLines" },
	},

	DuoPickupTextLines = {},

	InteractTextLineSets = {},

	BoughtTextLines = {},

	RejectionTextLines = {},

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

	MakeUpTextLines = {},

	GiftTextLineSets = {},

	GiftGivenVoiceLines = {},

	FullSuperActivatedVoiceLines = {},

	DeathTauntVoiceLines = {},

	RarityUpgradeVoiceLines = { { GlobalVoiceLines = "ZagreusRarifyVoiceLines" } },

	BlindBoxOpenedVoiceLines = {},

	--#endregion
}

local requirementName = { MaxHealthDrop = true, MaxManaDrop = true, RoomMoneyDrop = true, StackUpgrade = true, Devotion = true }

function zannc_AddGodtoRunData(runData, upgrade)
	for _, entry in ipairs(runData) do
		if requirementName[entry.Name] then
			if entry.GameStateRequirements then
				for _, requirement in ipairs(entry.GameStateRequirements) do
					if requirement.CountOf then
						table.insert(requirement.CountOf, upgrade)
					end
				end
			end
		end
	end
end

-- Just creates a new entry based on original, just so it doesnt crash when you open from boon select
--? game.CodexData.OlympianGods.Entries.ArtemisUpgrade = game.CodexData.OlympianGods.Entries.NPC_Artemis_01

-- Super Magical Code by Jowday, this way you dont have to do the method above, and doesn't give weird codex unlock popup
modutil.mod.Path.Wrap("AttemptOpenUpgradeChoiceBoonInfo", function(base, screen, button)
	if screen.Source.Name == "AthenaUpgrade" then
		local newScreen = {
			Source = {
				Name = "NPC_Athena_01",
			},
		}
		base(newScreen, button)
	elseif screen.Source.Name == "ArtemisUpgrade" then
		local newScreen = {
			Source = {
				Name = "NPC_Artemis_Field_01",
			},
		}
		base(newScreen, button)
	elseif screen.Source.Name == "DionysusUpgrade" then
		local newScreen = {
			Source = {
				Name = "NPC_Dionysus_01",
			},
		}
		base(newScreen, button)
	else
		base(screen, button)
	end
end)
