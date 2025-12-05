# Nimble RPG System for Encounter+

This repository contains the complete Nimble RPG system definition for use with the Encounter+ Virtual Tabletop (VTT).

## About Nimble

Nimble is a fast-paced fantasy tabletop RPG that emphasizes tactical combat, heroic actions, and streamlined mechanics. Built on familiar d20 mechanics similar to D&D 5e, Nimble offers a unique twist with its four-stat system (STR, DEX, INT, WIL) and diverse class roster.

**Key Features:**
- 11 unique character classes with distinct playstyles
- 24 diverse ancestries (5 common, 19 exotic)
- Tactical combat with 3 actions per turn for heroes
- Streamlined d20-based skill system (10 skills)
- Four core stats: STR, DEX, INT, WIL (instead of the traditional six)
- Mana-based magic system (replaces spell slots)
- Wounds system for tracking serious injuries
- Monster armor system (None/Medium/Heavy) that affects damage taken
- Legendary monsters with Bloodied abilities and Last Stand mechanics
- Based on 5e SRD mechanics with Nimble innovations

## Installation

### Option 1: Download Release (Recommended)
1. Download the latest `.system` file from the [Releases](https://github.com/encounterplus/nimble/releases) page
2. On your iOS/Mac device, tap the `.system` file
3. Choose "Open in Encounter+"
4. The system will be automatically imported

### Option 2: Import via Files App
1. Download the latest `.system` file
2. Save it to your Files app (iCloud Drive, Dropbox, etc.)
3. In Encounter+, go to **Settings > Import**
4. Navigate to the `.system` file and import it

### Option 3: AirDrop (iOS/Mac)
1. Download the latest `.system` file
2. AirDrop it to your iOS device
3. Choose "Open in Encounter+"

## System Contents

### Core System Files
- `manifest.json` - System metadata and version info
- `system.json` - System configuration
- `config.json` - Entity templates and measurements
- `collections.json` - Enumerated value collections
- `types.json` - Type definitions and mappings
- `entities.json` - Entity type definitions
- `filters.json` - Content filtering and grouping

### Game Content
- `classes.json` - All 11 character classes
- `ancestries.json` - All 24 ancestries
- `weapons.json` - 22 weapons (melee and ranged)
- `armor.json` - 20 armor types
- `items.json` - Equipment and consumables
- `spells.json` - Sample spells (16 spells across all 7 schools)
- `monsters.json` - Sample monsters (11 creatures, levels 1/4 to 20)
- `backgrounds.json` - Character backgrounds (10 options)

### Classes (11)
1. **Berserker** - Unstoppable force of wrath (d12 Hit Die)
2. **The Cheat** - Sneaky, backstabbing rogue (d6 Hit Die)
3. **Commander** - Battlefield tactician and weapon master (d10 Hit Die)
4. **Hunter** - Resourceful survivalist and bowmaster (d8 Hit Die)
5. **Mage** - Elemental spellcaster: Fire, Ice, Lightning (d6 Hit Die)
6. **Oathsworn** - Holy warrior and divine protector (d10 Hit Die)
7. **Shadowmancer** - Summoner of shadow minions (d8 Hit Die)
8. **Shepherd** - Master of life and death magic (d10 Hit Die)
9. **Songweaver** - Inspiring bard with sharp wit (d8 Hit Die)
10. **Stormshifter** - Shapeshifter and nature master (d8 Hit Die)
11. **Zephyr** - Swift martial artist (d8 Hit Die)

### Ancestries (24)
**Common (5):** Human, Dwarf, Elf, Halfling, Gnome

**Exotic (19):** Bunbun, Dragonborn, Fiendkin, Goblin, Kobold, Orc, Birdfolk, Celestial, Changeling, Crystalborn, Dryad/Shroomling, Half-Giant, Minotaur/Beastfolk, Oozeling/Construct, Planarbeing, Ratfolk, Stoatling, Turtlefolk, Wyrdling

### Stats & Skills
**4 Core Stats:**
- **Strength (STR)** - Physical power, weapon damage, HP
- **Dexterity (DEX)** - Agility, reflexes, initiative, armor
- **Intelligence (INT)** - Knowledge, spellcasting, languages
- **Will (WIL)** - Force of personality, spellcasting, insight

**10 Skills:**
- Arcana (INT), Examination (INT), Influence (INT), Lore (INT)
- Finesse (DEX), Stealth (DEX)
- Might (STR)
- Insight (WIL), Naturecraft (WIL), Perception (WIL)

### Magic System
**7 Spell Schools:**
- Fire, Ice, Lightning (Elemental)
- Wind, Radiant, Necrotic
- Utility

**Spell Tiers:** Cantrips (Tier 0) through Tier 5

**Mana System:**
- Full Casters: (casting stat × level) + 5
- Half Casters: (casting stat × level / 2) + 3

### Combat System
- **Heroes:** 3 actions per turn
- **Monsters:** Variable actions (typically 1-3)
- **No attack rolls vs monsters** - attacks always hit, damage modified by armor
- **Monster Armor Types:**
  - None: Full damage (dice + modifiers)
  - Medium (M): Dice only (no stat modifier)
  - Heavy (H): Half dice only (round down)
- **Defense:** Used when monsters attack heroes (10 + DEX + Armor)
- **Initiative:** Based on WIL modifier

### Wounds System
Separate from HP - represents serious injuries:
- 1-2 Wounds: Minor injuries
- 3-4 Wounds: Moderate injuries
- 5 Wounds: Severe - functional but critical
- 6 Wounds: Death

## File Structure

```
nimble/
├── manifest.json         # System metadata
├── system.json          # System configuration
├── config.json          # Entity templates and measurements
├── collections.json     # Enumerated values
├── types.json           # Type definitions
├── entities.json        # Entity types
├── filters.json         # Content filters
├── classes.json         # Character classes
├── ancestries.json      # Character ancestries/races
├── weapons.json         # Weapon definitions
├── armor.json           # Armor definitions
├── items.json           # Equipment and consumables
├── fonts/               # Custom fonts
├── forms/               # Form templates
├── icons/               # Icon assets
├── images/              # Visual resources
├── lang/                # Language localization
├── themes/              # Visual themes
├── views/               # UI view templates

```

## Building the System

To package the system for distribution:

1. Ensure all JSON files are valid
2. Add banner.jpg and icon.jpg to the `images/` folder
3. Zip all files and folders (excluding .git, Rules/, and other ignored items)
4. Rename the `.zip` file to `.system`
5. The `.system` file can now be imported into Encounter+

## Differences from D&D 5e

While Nimble is built on 5e-compatible mechanics, it includes these key differences:

1. **Four Stats** instead of six (STR, DEX, INT, WIL vs STR, DEX, CON, INT, WIS, CHA)
2. **Simplified Skills** - 10 skills instead of 18
3. **Unique Classes** - 11 original classes, no traditional D&D classes
4. **3 Actions Per Turn** - Heroes get 3 actions instead of action/bonus action/movement
5. **Mana System** - Replaces spell slots with a mana pool
6. **No Attack Rolls vs Monsters** - Attacks always hit; monster armor reduces damage
7. **Wounds System** - Separate from HP, tracks serious injuries (death at 6 wounds)
8. **Initiative Uses WIL** - Not DEX like in 5e
9. **Different Ancestries** - Includes unique options like Bunbun, Crystalborn, etc.
10. **Legendary Monsters** - Bloodied abilities and Last Stand mechanics

## Credits

**Game Design:** Evan Diaz and Nimble Co.

**System Definition for Encounter+:** Based on the official Nimble RPG rulebooks and the D&D 5e system structure

**Inspired by:** D&D 5th Edition SRD, Pathfinder 2e, and other great RPG systems

**Special Thanks:** The Encounter+ development team for creating an excellent VTT platform

## License

This system definition is published under the Nimble 3rd Party Creator License.

"Nimble RPG System for Encounter+" is an independent product published under the Nimble 3rd Party Creator License and is not affiliated with Nimble Co. Nimble © 2025 Nimble Co.

This work includes material taken from the System Reference Document 5.1 ("SRD 5.1") by Wizards of the Coast LLC and available at https://dnd.wizards.com/resources/systems-reference-document. The SRD 5.1 is licensed under the Creative Commons Attribution 4.0 International License available at https://creativecommons.org/licenses/by/4.0/legalcode.

## Links

- **Official Nimble Website:** [nimbleRPG.com](https://www.nimbleRPG.com)
- **Nimble Discord:** [nimbleRPG.com/discord](https://www.nimbleRPG.com/discord)
- **Encounter+ VTT:** [encounter.plus](https://encounter.plus)
- **Encounter+ Help:** [help.encounter.plus](https://help.encounter.plus)

## Version History

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

### v0.2.0 (Current)
- Complete Nimble RPG implementation with all core mechanics
- Mana-based spellcasting system (replaces spell slots)
- Wounds system for tracking serious injuries
- Monster armor system (None/Medium/Heavy)
- Legendary monster support (Bloodied, Last Stand)
- Full form and view support for all entity types
- Sample content: 16 spells, 11 monsters, 10 backgrounds

### v0.1.0 (Initial Release)
- Complete system definition based on D&D 5e structure
- All 11 character classes with full descriptions
- All 24 ancestries with special abilities
- Complete equipment catalog (armor, weapons, items)
- Core game mechanics (stats, skills, conditions)
- Entity definitions and filters
- Type collections and enumerations

## Contributing

This is a community-created system definition. Contributions, bug reports, and suggestions are welcome!

Please ensure:
- JSON files are properly formatted
- Follow the existing structure and naming conventions
- Test changes before submitting pull requests

## Support

**For Nimble RPG questions:** Visit [nimbleRPG.com](https://www.nimbleRPG.com) or join the Discord

**For Encounter+ questions:** Check [help.encounter.plus](https://help.encounter.plus)

**For this system definition:** Open an issue in this repository
