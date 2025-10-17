---@meta _
zanncdwbl_Droppable_Gods = zanncdwbl_Droppable_Gods or {}

---@diagnostic disable-next-line: undefined-global
local mods = rom.mods

---@diagnostic disable: lowercase-global
---@module 'SGG_Modding-ENVY-auto'
mods["SGG_Modding-ENVY"].auto()

---@diagnostic disable-next-line: undefined-global
rom = rom
---@diagnostic disable-next-line: undefined-global
_PLUGIN = PLUGIN

game = rom.game

modutil = mods["SGG_Modding-ModUtil"]
chalk = mods["SGG_Modding-Chalk"]
reload = mods["SGG_Modding-ReLoad"]
sjson = mods["SGG_Modding-SJSON"]

---@module 'Droppable_Gods-zannc-config'
config = chalk.auto("config.lua")
public.config = config

import_as_fallback(rom.game)

local function on_ready()
	import("ready.lua")
	import("sjson.lua")

	import("artemis/artemisLoot.lua")
	import("athena/athenaLoot.lua")
	import("dionysus/dionysusLoot.lua")
end

local function on_reload() end

local loader = reload.auto_single()

modutil.once_loaded.game(function()
	if config.enabled == false then
		return
	end
	loader.load(on_ready, on_reload)
end)
