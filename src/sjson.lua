---@meta _
---@diagnostic disable: lowercase-global

zanncdwbl_Droppable_Gods.GameplayFile = rom.path.combine(rom.paths.Content, "Game/Obstacles/Gameplay.sjson")
zanncdwbl_Droppable_Gods.MacroTextFile = rom.path.combine(rom.paths.Content, "Game/Text/en/MacroText.sjson")
zanncdwbl_Droppable_Gods.GUIScreensVFXFile = rom.path.combine(rom.paths.Content, "Game/Animations/GUI_Screens_VFX.sjson")
zanncdwbl_Droppable_Gods.ItemsGeneralVFX = rom.path.combine(rom.paths.Content, "Game/Animations/Items_General_VFX.sjson")
zanncdwbl_Droppable_Gods.TraitTextFile = rom.path.combine(rom.paths.Content, "Game/Text/en/TraitText.en.sjson")

zanncdwbl_Droppable_Gods.Order = { "Id", "DisplayName", "Description" }
zanncdwbl_Droppable_Gods.IconOrder = { "Name", "InheritFrom", "FilePath", "OffsetZ", "Scale", "Hue" }
zanncdwbl_Droppable_Gods.GameplayOrder = { "Name", "InheritFrom", "DisplayInEditor", "Thing" }

zanncdwbl_Droppable_Gods.FxBoonDropOrder = { "Name", "InheritFrom", "ChildAnimation", "CreateAnimations", "Color" }
zanncdwbl_Droppable_Gods.FxMainOrder = { "Name", "InheritFrom", "NumFrames", "FilePath", "OffsetZ", "Scale", "ColorFromOwner", "AngleFromOwner", "Sound" }
