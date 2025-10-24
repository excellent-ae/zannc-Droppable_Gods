---@meta _
---@diagnostic disable: lowercase-global

game.TraitData.ArtemisWeaponBoon = {
	InheritFrom = { "BaseTrait", "EarthBoon" },
	Elements = { "Earth" },
	Name = "ArtemisWeaponBoon",
	BoonInfoTitle = "ArtemisWeaponBoon",
	Icon = "Boon_Artemis_ArtemisWeaponBoon",
	Slot = "Melee", -- If not a core slot, omit this.
	Cost = 30,
	BlockStacking = false,
	RarityLevels = {
		Common = {
			Multiplier = 1.00,
		},
		Rare = {
			Multiplier = 1.50,
		},
		Epic = {
			Multiplier = 2.00,
		},
		Heroic = {
			Multiplier = 2.50,
		},
		Perfect = {
			Multiplier = 3.50,
		},
	},

	AddOutgoingDamageModifiers = {
		ValidWeaponMultiplier = {
			BaseValue = 1.2,
			SourceIsMultiplier = true,
			AbsoluteStackValues = {
				[1] = 1.20,
				[2] = 1.15,
				[3] = 1.10,
			},
		},

		ValidWeapons = WeaponSets.HeroPrimaryWeapons,

		ReportValues = {
			ReportedValidWeaponMultiplier = "ValidWeaponMultiplier",
		},
	},

	StatLines = { "CritChanceStatDisplay1" },

	ExtractValues = { {
		Key = "ReportedValidWeaponMultiplier",
		ExtractAs = "TooltipDamageBonus",
		Format = "PercentDelta",
	} },
}

-- Insert into default game Artemis, and New Artemis Drop
table.insert(game.EnemyData.NPC_Artemis_Field_01.Traits, "ArtemisWeaponBoon")

-- Omit if you are not adding any core boons, for example: ( "ApolloWeaponBoon", "ApolloSpecialBoon", "ApolloCastBoon", "ApolloSprintBoon", "ApolloManaBoon" )
-- This is to allow for the game to check if the trait needs to be replaced (AKA Core slots, Melee, Special, if your trait does not add to core slots, this s not needed.)
table.insert(game.EnemyData.NPC_Artemis_Field_01.PriorityUpgrades, 1, "ArtemisWeaponBoon")

-- You do not need to insert the new boon into LootData traits as Droppable Gods already does that automatically.
table.insert(game.LootData.ArtemisUpgrade.WeaponUpgrades, 1, "ArtemisWeaponBoon") -- If you are not adding Core Boons, this can also be ommited.
table.insert(game.LootData.ArtemisUpgrade.PriorityUpgrades, 1, "ArtemisWeaponBoon") -- ? Same as previous priority.

table.insert(game.LinkedTraitData.WeaponTraits, "ArtemisWeaponBoon") -- Omit if you are not adding anything referring to Weapon
table.insert(game.LinkedTraitData.ArtemisCoreTraits, "ArtemisWeaponBoon") -- Omit if you are not adding any core boons, for example: ( "ApolloWeaponBoon", "ApolloSpecialBoon", "ApolloCastBoon", "ApolloSprintBoon", "ApolloManaBoon" )

game.TraitData.ArtemisWeaponBoon.TraitOrderingValueCache = GetTraitOrderingValue(game.TraitData.ArtemisWeaponBoon) -- Get the Order value automatically.
