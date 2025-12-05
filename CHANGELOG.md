# Changelog

All notable changes to the Nimble RPG System for Encounter+ will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2024-12-04

### Added

#### Character System
- **Wounds System**: Track serious injuries (0-6, death at 6 wounds)
- **Mana System**: Replaces spell slots with mana pool
  - Full Caster: (casting stat x level) + 5
  - Half Caster: (casting stat x level / 2) + 3
- **Hit Dice Pool**: Current and max tracking for rest healing
- **Actions Per Turn**: Default 3 for heroes
- **Caster Type**: None, Full, or Half caster designation

#### Monster System
- **Armor Type Clarification**: None/Medium/Heavy affects damage taken, not "to hit"
  - None: Full damage (dice + modifiers)
  - Medium: Dice only (no stat modifier)
  - Heavy: Half dice only (round down)
- **Removed Defense Field**: Monsters don't have a target number (attacks always hit)
- **Legendary Monster Fields**: isLegendary, legendaryResistance, legendaryActions
- **Bloodied State**: Threshold and special abilities at 50% HP
- **Last Stand**: Separate HP pool and behavior when reduced to 0 HP

#### Spell System
- **Spell Form**: Complete form with all fields (school, tier, mana cost, components, etc.)
- **Spell View**: Styled view with component badges and upcast effects
- **New Types**: CastingTime, SpellRange, SpellDuration

#### Item System
- **Weapon Form/View**: Damage, properties, attack stat, magic bonus
- **Armor Form/View**: Defense bonus, DEX limit, stealth disadvantage
- **Generic Item Form/View**: Charges, attunement, consumable, rarity color coding
- **New Types**: WeaponType, DexLimit

#### Rules System
- **Rule View**: For displaying conditions and rules
- **Status Effects**: Configured via Rule:condition provider

#### Sample Content
- **Spells**: 16 sample spells across all 7 schools (cantrips and leveled)
- **Monsters**: 11 sample monsters (levels 1/4 to 20, all armor types)
- **Backgrounds**: 10 character backgrounds with traits and equipment

### Changed
- **Character Defense**: Uses `data.defense` instead of `data.ac.value`
- **Initiative**: Based on WIL modifier (not DEX)
- **Influence Skill**: Now uses INT (was incorrectly WIL)
- **Speed Display**: Shows "ft" units
- **Monster Config**: Shows armor type instead of AC in combat tracker

### Fixed
- Skill-stat mappings now match Nimble rules (Influence -> INT)
- Monster view no longer shows DEF (not used in Nimble combat)

## [0.1.0] - 2024-11-30

### Added
- Initial system definition based on D&D 5e structure
- All 11 character classes with full descriptions
- All 24 ancestries with special abilities
- Complete equipment catalog (22 weapons, 20 armor types, items)
- Core game mechanics (stats, skills, conditions)
- Entity definitions for Character, Monster, NPC, Spell, Item, etc.
- Type collections and enumerations
- Filter definitions for content organization
- Basic character and monster forms
- Hero and monster views

### Notes
- Based on Nimble RPG v0.1 ruleset
- Compatible with Encounter+ VTT
