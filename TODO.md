# Nimble System Implementation TODO

This document tracks all implementation tasks needed to complete the Nimble RPG system for Encounter+. Tasks are organized by priority and category.

---

## Legend
- [ ] Not started
- [x] Completed
- [~] In progress

---

## Phase 1: Core Mechanics Fixes (Critical) - COMPLETED

These are fundamental issues that affect how the system works.

### 1.1 Monster Armor System
- [x] Add `MonsterArmor` type to `types.json` with values: `none`, `medium`, `heavy`
- [x] Update `monster.json` form to include armor type picker
- [x] Update `monster.json` view to display armor type
- [x] Add armor type to `config.json` monster detail template

**Reference (NIMBLE_CORE_MECHANICS.md):**
| Armor Type | Effect on Damage |
|------------|------------------|
| None | Full damage (dice + modifiers) |
| Medium | Dice only (no stat modifier) |
| Heavy | Half of dice only (round down) |

### 1.2 Fix Skill-Stat Mappings
- [x] Update `types.json` - Change Influence from `wil` to `int` per rules doc
- [x] Verify all 10 skills match the rules:
  - Arcana → INT ✓
  - Examination → INT ✓
  - Finesse → DEX ✓
  - Influence → INT ✓ (fixed)
  - Insight → WIL ✓
  - Lore → INT ✓
  - Might → STR ✓
  - Naturecraft → WIL ✓
  - Perception → WIL ✓
  - Stealth → DEX ✓

### 1.3 XP Values Alignment
- [x] Replace `ChallengeRating` with `MonsterLevel` in `types.json` matching Nimble XP table
- [x] Added complete monster statistics reference (HP by armor type, damage/round, save DC)
- [x] XP values now match Nimble rules:
  - 1/4: 25 ✓
  - 1/3: 35 ✓
  - 1/2: 50 ✓
  - 1: 100 ✓
  - (continues through level 20)

### 1.4 Additional Phase 1 Improvements (Completed)
- [x] Changed `data.ac.value` to `data.defense` for Nimble terminology
- [x] Updated config.json to use WIL for initiative (Nimble uses WIL, not DEX)
- [x] Added `SpellTier` type (Cantrip, Tier 1-5)
- [x] Added `DifficultyClass` reference table
- [x] Fixed conditions list to match Nimble (added charmed, hidden, incapacitated, petrified, poisoned)
- [x] Renamed `ArmorType` to `ArmorCategory` for clarity
- [x] Added legendary monster fields to monster form (isLegendary, legendaryResistance, legendaryActions, bloodied, lastStand)
- [x] Added damage modifiers to monster form (vulnerabilities, resistances, immunities)
- [x] Added senses and languages to monster form
- [x] Added reactions section to monster form
- [x] Updated monster view with all new sections
- [x] Changed measurement units from "spaces" to "ft" (Nimble uses feet)

---

## Phase 2: Character System Updates - COMPLETED

### 2.1 Wounds System
- [x] Add `data.wounds` field to character form (number 0-6)
- [x] Add wounds display to `hero.json` view
- [x] Add wounds tracking info to character sheet
- [x] Document wound mechanics in view (death at 6 wounds)

**Reference (NIMBLE_CORE_MECHANICS.md):**
| Wounds | Effect |
|--------|--------|
| 1-2 | Minor injuries |
| 3-4 | Moderate injuries |
| 5 | Severe - functional but critical |
| 6 | Death |

### 2.2 Mana System (Replace Spell Slots)
- [x] Add `data.mana.current` and `data.mana.max` fields to character form
- [x] Removed spell slot fields (replaced with mana system)
- [x] Update `hero.json` view to show mana pool instead of slots
- [x] Add mana calculation reference:
  - Full caster: `(casting stat × level) + 5`
  - Half caster: `(casting stat × level / 2) + 3`
- [x] Added `CasterType` type to types.json (none, full, half)

### 2.3 Hit Dice System
- [x] Ensure hit dice pool tracking works (current: number, max: equal to level)
- [x] Add hit die type display from class
- [x] Added `data.hitDice.current` and `data.hitDice.max` fields

### 2.4 Defense Calculation
- [x] Update character form to use `data.defense` instead of `data.ac.value`
- [x] Add defense calculation reference to character view
- [x] Formula: `Defense = 10 + DEX Modifier + Armor Bonus`

### 2.5 Actions Per Turn
- [x] Add `data.actionsPerTurn` field (default 3 for heroes)
- [x] Display in combat section of character view

### 2.6 Additional Phase 2 Improvements
- [x] Fixed Influence skill display to show INT (not WIL) in hero.json view
- [x] Updated speed display to show "ft" units
- [x] Added conditional mana display (only shows when max mana > 0)

---

## Phase 3: Monster/Creature Updates - COMPLETED

### 3.1 Legendary Monster Fields
- [x] Add `data.isLegendary` boolean field
- [x] Add `data.bloodied.threshold` field (usually max HP / 2)
- [x] Add `data.bloodied.abilities` text area for bloodied-state abilities
- [x] Add `data.lastStand.hp` field for Last Stand HP pool
- [x] Add `data.lastStand.behavior` field for Last Stand description
- [x] Add `data.legendaryResistance` number field (usually 3)
- [x] Add `data.legendaryActions` text area
- [x] Update monster view to show legendary sections conditionally

### 3.2 Monster Actions Structure
- [x] ~~Consider structured actions instead of free text~~ SKIPPED - free text approach works well
- [x] ~~Create `forms/partials/monster-action.json` partial~~ SKIPPED - not needed

### 3.3 Monster Defense Field
- [x] Add `data.defense` field (target number to hit)
- [x] Changed from `data.ac.value` to `data.defense` for Nimble terminology

### 3.4 Damage Resistances/Immunities/Vulnerabilities
- [x] Add `data.vulnerabilities` text field
- [x] Add `data.resistances` text field
- [x] Add `data.immunities` text field
- [x] Add `data.conditionImmunities` text field
- [x] Update monster view to display these

### 3.5 Senses and Languages
- [x] Add `data.senses` text field
- [x] Add `data.languages` text field
- [x] Display in monster view

### 3.6 Additional Monster Improvements
- [x] Add `data.reactions` text area
- [x] Add `data.actionsPerTurn` number field
- [x] Add `data.tactics` text area for GM notes
- [x] Add `data.spellcasting` section with ability, DC, attack bonus, spells

---

## Phase 4: Spell System - COMPLETED

### 4.1 Create Spell Form
- [x] Create `forms/spell.json` with fields:
  - Name
  - School (Fire, Ice, Lightning, Wind, Radiant, Necrotic, Utility)
  - Tier (0-5, where 0 = cantrip)
  - Mana cost
  - Casting time
  - Range
  - Components (V, S, M)
  - Concentration (boolean)
  - Duration
  - Description
  - Damage/healing dice
  - Save type (if applicable)
  - Upcast effects

### 4.2 Create Spell View
- [x] Create `views/spell.json` with proper Nimble styling
- [x] Show school with appropriate color coding
- [x] Display tier and mana cost prominently
- [x] Format components, range, duration
- [x] Show damage/save information
- [x] Include upcast scaling info

### 4.3 Spell Types Update
- [x] Verify `SpellSchool` in types.json matches rules
- [x] Add `SpellTier` type
- [x] Add `CastingTime` type
- [x] Add `SpellRange` type
- [x] Add `SpellDuration` type

---

## Phase 5: Item System - COMPLETED

### 5.1 Create Weapon View
- [x] Create `views/weapon.json`
- [x] Display damage dice and type
- [x] Show properties (light, two-handed, thrown, etc.)
- [x] Show range for ranged weapons
- [x] Display attack stat (STR/DEX/finesse)

### 5.2 Create Armor View
- [x] Create `views/armor.json`
- [x] Display defense bonus
- [x] Show DEX limit (if any)
- [x] Show category (cloth, leather, mail, plate)
- [x] Display any stealth disadvantage

### 5.3 Create Generic Item View
- [x] Create `views/item.json`
- [x] Display item type
- [x] Show rarity with color coding
- [x] Display weight/slots
- [x] Show description and effects

### 5.4 Item Forms
- [x] Create `forms/weapon.json`
- [x] Create `forms/armor.json`
- [x] Create `forms/item.json`
- [x] Ensure all item properties are editable

### 5.5 Additional Types Added
- [x] Added `WeaponType` (simple/martial melee/ranged, exotic)
- [x] Added `DexLimit` for armor DEX caps

---

## Phase 6: Rules and Conditions - COMPLETED

### 6.0 Armor Mechanics Clarification (Added)
- [x] Clarified Nimble armor system: Monsters have armor type (None/M/H), NOT a defense target number
- [x] Removed `data.defense` from monster form (monsters don't have a "to hit" number)
- [x] Updated monster view to remove DEF display
- [x] Updated config.json to show armor type instead of AC for monsters/NPCs
- [x] Hero Defense remains (used when monsters attack heroes)

**Nimble Combat Summary:**
- Heroes attacking monsters: Always hit, roll damage (modified by armor type)
- Monsters attacking heroes: Roll vs hero's Defense (10 + DEX + Armor)

### 6.1 Condition Rules
- [x] Conditions defined in `types.json` (Condition type)
- [ ] Create condition entries in Rules collection for reference (OPTIONAL - can be added later with content)

### 6.2 Create Rule View
- [x] Create `views/rule.json` for displaying rules
- [x] Style appropriately for quick reference

### 6.3 Status Effects Configuration
- [x] `config.json` statusEffects already configured with `Rule:condition` provider
- [x] Conditions will appear in Encounter+ status menu when Rule entries are created

---

## Phase 7: Reference Data - COMPLETED

### 7.1 Populate Spell Database
- [x] Create sample spells for each school (Fire, Ice, Lightning, Wind, Radiant, Necrotic, Utility)
- [x] Include cantrips and leveled spells (16 spells total)
- [x] Cover common spell types (damage, healing, utility, buffs)
- [x] Created `spells.json` with properly formatted spell data

### 7.2 Populate Monster Database  
- [x] Create sample monsters at various levels (1/4, 1/2, 1, 2, 3, 5, 10, 20)
- [x] Include examples of each armor type (none, medium, heavy)
- [x] Create at least one legendary monster example (Ancient Fire Dragon)
- [x] Created `monsters.json` with 11 sample monsters

### 7.3 Background Definitions
- [x] Create background entries with skill proficiency, trait, and starting equipment
- [x] Created `backgrounds.json` with 10 backgrounds:
  - Soldier, Scholar, Criminal, Acolyte, Entertainer
  - Outlander, Noble, Guild Artisan, Hermit, Sailor

---

## Phase 8: Polish and Testing - COMPLETED

### 8.1 View Styling Consistency
- [x] Ensure all views use consistent Nimble color scheme:
  - Primary: #3a7a58 (green)
  - Secondary: #58180D (dark red)
  - Accent: #d8c384 (gold)
  - Background: #F5F1E8 (cream)
  - Text: #2B2622 (dark brown)
  - Brown accent: #8F5441

### 8.2 Form Validation
- [x] Test all forms create valid data
- [x] Ensure picker fields reference correct types
- [x] Verify conditional visibility works

### 8.3 Build and Package
- [x] Run build.sh and verify no errors
- [x] Build successful: `Nimble v0.2.0.system` (124K, 51 files)
- [ ] Test import into Encounter+ (manual testing required)
- [ ] Verify all entity types display correctly (manual testing required)
- [ ] Test combat tracking features (manual testing required)

### 8.4 Documentation
- [x] Update README.md with current feature list
- [x] Create CHANGELOG.md for version tracking
- [x] Updated version to 0.2.0 in manifest.json and system.json

---

## Notes and Decisions

### Naming Conventions
- Use `defense` for target number (not AC) - Nimble terminology
- Use `mana` for spell resource (not spell slots)
- Use `wounds` for injury tracking
- Use `level` for monsters (not CR) - Nimble terminology
- Monster stats are modifiers directly (not scores like characters)

### Data Structure Decisions
- Characters use `data.abilities.X.score` and `data.abilities.X.modifier`
- Monsters use `data.abilities.X` directly as modifier
- Keep backwards compatibility where possible

### Open Questions
- ~~Should we keep spell slots in character form for backwards compatibility?~~ **RESOLVED**: Removed spell slots, replaced with mana system
- How to handle the "after each hero's turn" legendary action timing in Encounter+?
- Should monster actions be structured data or free text? (Current: free text with markdown formatting)

---

## Completed Items Archive

_Move completed items here with completion date_

- [x] Initial project setup
- [x] Create basic entities.json
- [x] Create basic types.json
- [x] Create character form
- [x] Create monster form
- [x] Create hero.json view
- [x] Create monster.json view
- [x] Analyze implementation gaps (2024-12-04)
- [x] **Phase 1: Core Mechanics Fixes (2024-12-04)**
  - [x] Monster Armor System (none/medium/heavy)
  - [x] Skill-Stat Mappings (fixed Influence → INT)
  - [x] XP/Monster Level alignment
  - [x] Defense terminology (AC → Defense)
  - [x] Initiative using WIL
  - [x] Conditions list update
  - [x] Legendary monster fields
  - [x] Damage modifiers (vulnerabilities, resistances, immunities)
  - [x] Monster senses/languages
  - [x] Monster reactions
  - [x] Spellcasting section for monsters
- [x] **Phase 2: Character System Updates (2024-12-04)**
  - [x] Wounds system (data.wounds 0-6, death at 6)
  - [x] Mana system (replaced spell slots with mana pool)
  - [x] CasterType type (none, full, half caster)
  - [x] Hit dice pool tracking (current/max)
  - [x] Defense field (replaced data.ac.value)
  - [x] Actions per turn (default 3 for heroes)
  - [x] Updated hero.json view with all new sections
  - [x] Fixed Influence skill to show INT
- [x] **Phase 3: Monster/Creature Updates (2024-12-04)**
  - [x] All legendary monster fields completed in Phase 1
  - [x] Skipped optional structured actions (free text works well)
- [x] **Phase 4: Spell System (2024-12-04)**
  - [x] Created forms/spell.json with all spell fields
  - [x] Created views/spell.json with Nimble styling
  - [x] Added CastingTime, SpellRange, SpellDuration types
  - [x] Component badges (V, S, M), concentration, ritual indicators
  - [x] Mana cost display, upcast effects section
- [x] **Phase 5: Item System (2024-12-04)**
  - [x] Created forms/weapon.json and views/weapon.json
  - [x] Created forms/armor.json and views/armor.json
  - [x] Created forms/item.json and views/item.json
  - [x] Added WeaponType and DexLimit types
  - [x] Rarity color coding (common→artifact)
  - [x] Property badges for weapons, stealth disadvantage for armor
- [x] **Phase 6: Rules and Conditions (2024-12-04)**
  - [x] Clarified Nimble armor mechanics (no attack rolls vs monsters)
  - [x] Removed monster Defense field (not used in Nimble)
  - [x] Updated config.json to display armor type for monsters/NPCs
  - [x] Created views/rule.json for condition/rule display
  - [x] Status effects configured via Rule:condition provider
- [x] **Phase 7: Reference Data (2024-12-04)**
  - [x] Created spells.json with 16 sample spells (all 7 schools, cantrips + leveled)
  - [x] Created monsters.json with 11 monsters (levels 1/4 to 20, all armor types)
  - [x] Created backgrounds.json with 10 backgrounds
  - [x] Legendary monster example: Ancient Fire Dragon with bloodied/last stand
- [x] **Phase 8: Polish and Testing (2024-12-04)**
  - [x] Verified all form picker fields reference correct types
  - [x] Build successful: Nimble v0.2.0.system (124K, 51 files)
  - [x] Updated README.md with complete feature documentation
  - [x] Created CHANGELOG.md with full version history
  - [x] Updated version to 0.2.0 in manifest.json and system.json

---

## References

- **Nimble Rules**: `/rules/NIMBLE_CORE_MECHANICS.md`
- **Nimble Data Model**: `/rules/NIMBLE_DATA_MODEL.md`
- **Nimble Monsters**: `/rules/NIMBLE_MONSTERS_ENCOUNTERS.md`
- **PF2e Reference**: https://github.com/encounterplus/pf2e
