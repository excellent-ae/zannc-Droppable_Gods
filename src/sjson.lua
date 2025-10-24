---@meta _
---@diagnostic disable: lowercase-global

mod.GameplayFile = rom.path.combine(rom.paths.Content, "Game/Obstacles/Gameplay.sjson")
mod.MacroTextFile = rom.path.combine(rom.paths.Content, "Game/Text/en/MacroText.sjson")
mod.GUIScreensVFXFile = rom.path.combine(rom.paths.Content, "Game/Animations/GUI_Screens_VFX.sjson")
mod.ItemsGeneralVFX = rom.path.combine(rom.paths.Content, "Game/Animations/Items_General_VFX.sjson")
mod.TraitTextFile = rom.path.combine(rom.paths.Content, "Game/Text/en/TraitText.en.sjson")

mod.Order = { "Id", "DisplayName", "Description" }
mod.IconOrder = { "Name", "InheritFrom", "FilePath", "OffsetZ", "Scale", "Hue" }
mod.GameplayOrder = { "Name", "InheritFrom", "DisplayInEditor", "Thing" }

mod.FxBoonDropOrder = { "Name", "InheritFrom", "ChildAnimation", "CreateAnimations", "Color" }
mod.FxMainOrder = { "Name", "InheritFrom", "NumFrames", "FilePath", "OffsetZ", "Scale", "ColorFromOwner", "AngleFromOwner", "Sound" }
