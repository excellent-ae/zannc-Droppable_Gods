---@meta Droppable_Gods-zannc-config
return {
    enabled = true,
    RandomOneGod = false,
    Artemis = {
        enabled = true,
        spawnRequirements = {
            enabled = false,
            maximumSpawns = 2,
        },
        splitTraits = false,
    },
    Athena = {
        enabled = true,
        spawnRequirements = {
            enabled = false,
            maximumSpawns = 2,
        },
        splitTraits = false,
    },
    Dionysus = {
        enabled = true,
        spawnRequirements = {
            enabled = false,
            maximumSpawns = 2,
        },
        splitTraits = false,
    },
    Hades = {
        enabled = true,
        spawnRequirements = {
            enabled = true,
            maximumSpawns = 2,
        },
        splitTraits = false,
    },
    _RandomGod = {
        chosenGod = "default",
    },
}, {
    enabled = "Set to true to enable the mod, false to disable.",
    RandomOneGod = "Sets it so there is only one god per run, eg Artemis for an entire run, Dionysus for next run, Artemis for third run etc.",
    Artemis = {
        enabled = "Set to true to enable Artemis, false to disable.",
        spawnRequirements = {
            enabled = "Set to true to force Artemis to spawn with restrictions, like Hermes does.",
            maximumSpawns = "Limit how many times Artemis can NATURALLY spawn in a run.",
        },
        splitTraits = "Set to true to split traits between the DROPPED god and NPC god - default game boons will be locked to the NPC version, and any new ones will be in the dropped version",
    },
    Athena = {
        enabled = "Set to true to enable Athena, false to disable.",
        spawnRequirements = {
            enabled = "Set to true to force Athena to spawn with restrictions, like Hermes does.",
            maximumSpawns = "Limit how many times Athena can NATURALLY spawn in a run.",
        },
        splitTraits = "Set to true to split traits between the DROPPED god and NPC god - default game boons will be locked to the NPC version, and any new ones will be in the dropped version",
    },
    Dionysus = {
        enabled = "Set to true to enable Dionysus, false to disable.",
        spawnRequirements = {
            enabled = "Set to true to force Dionysus to spawn with restrictions, like Hermes does.",
            maximumSpawns = "Limit how many times Dionysus can NATURALLY spawn in a run.",
        },
        splitTraits = "Set to true to split traits between the DROPPED god and NPC god - default game boons will be locked to the NPC version, and any new ones will be in the dropped version",
    },
    Hades = {
        enabled = "Set to true to enable Hades, false to disable.",
        spawnRequirements = {
            enabled = "Set to true to force Hades to spawn with restrictions, like Hermes does.",
            maximumSpawns = "Limit how many times Hades can NATURALLY spawn in a run.",
        },
        splitTraits = "Set to true to split traits between the DROPPED god and NPC god - default game boons will be locked to the NPC version, and any new ones will be in the dropped version",
    },
    _RandomGod = "Just values so the RandomOneGod above is consistent, changing this is not advised and may break your game.",
}
