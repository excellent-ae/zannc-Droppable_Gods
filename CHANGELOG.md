# Changelog

## [Unreleased]

## [3.0.3] - 2025-12-09

- Fix config setting for maximum spawns.
- Remove print

## [3.0.2] - 2025-12-09

- Hopefully fix issue with portraits not loading.
- GodsAPI Fix - Icon size in Hermes Shop.
- GodsAPI Fix - Travel Deal interaction.
- Hopefully fix issues with Portraits not loading correctly, without breaking anything :doom:
- Added config option to limit SpawnLikeHermes spawns to a specific number (eg, 1 max spawn per run)

## [3.0.1] - 2025-12-08

- Icon Update

## [3.0.0] - 2025-12-08

- Added Hades as a functioning droppable god! (To progress his story you still have to meet him in the underworld)
- Added Family Dispute attacks for Artemis/Dionysus/Athena.
- Animation for Hades boon drop, blender file included in source.
- Added Config option to allow you to split any new traits between the original npc and the dropped god (new traits to go drop, old ones stay in npcs)
- Pony Menu integration.
- Compat with Zagreus' Journey's Theseus fight.
- DEV: Duplication check for Zagreus' Journey's devotion weapons.
- DEV: Removed Rarirty Chances for NPC tables if you do not split the traits.
- Updated README.md
- Fix Dionysus Improved integration.
- Fix issue of no animation prewaiting when picking up a boon (it used to just play the animation but cut straight to the boon/text screen.)

## [2.1.3] - 2025-12-01

- Update to GodsAPI latest

## [2.1.2] - 2025-11-28

## [2.1.1] - 2025-11-09

- Update to work w/ GodsAPI latest.

## [2.1.0] - 2025-11-08

- Fixed issue which wouldnt allow any traits in slots to overwrite already slotted boons.
- Reworked Config.
- Fixed issue where if you gifted Artemis/Dio/Athena for the first time, it wouldn't display their respective keepsake animation. 
- DEV: Changed to function with GodsAPI.

## [2.0.1] - 2025-10-24

- Reduced package size in half.
- Fix Changelog.

## [2.0.0] - 2025-10-24

- Blocked stacking for the default boons per the NPCs.
- Added `Cost` to the NPC traits (needed for more boons to be added)
- (Hopefully) Made it so any new boons added to the NPCs will be implemented correctly (and ordered as such).
- Turned down the brightness of Artemis' boon drop.
- Changed the `TextLineSets` you can recieve from a drop to be the repeatable dialogue, to progress stories, you now have to find their respective NPC rooms.
- Added config options to allow for customizing how the gods spawn.
- Fixed issue with Dionysus (and possibly Athena) which wouldnt allow you to interact with them if you have already talked to them in the current run.
- Updated ReadME.

## [1.0.0] - 2025-10-17

Initial Release.

[unreleased]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/3.0.3...HEAD
[3.0.3]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/3.0.2...3.0.3
[3.0.2]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/3.0.1...3.0.2
[3.0.1]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/3.0.0...3.0.1
[3.0.0]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.1.3...3.0.0
[2.1.3]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.1.2...2.1.3
[2.1.2]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.1.1...2.1.2
[2.1.1]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.1.0...2.1.1
[2.1.0]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.0.1...2.1.0
[2.0.1]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/1.0.0...2.0.0
[1.0.0]: https://github.com/excellent-ae/zannc-Droppable_Gods/compare/73aa3aa4e19b033b6e57de667555f2554a7c487c...1.0.0
