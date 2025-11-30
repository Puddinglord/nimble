# Nimble RPG System v0.1.0 - Release Notes

**Release Date:** November 30, 2025  
**System Version:** 0.1.0  
**Compatibility:** Encounter+ VTT 5.0.0+3848 and above

---

## 🎉 What's New

This is the **complete rewrite** of the Nimble RPG system for Encounter+ VTT, featuring a professional implementation based on the EncounterPlus PF2e architecture.

### ✨ Major Features

#### Character System
- **Complete Character Creation**: Full support for all 11 Nimble classes
- **24 Ancestries**: Including unique options like Bunbun, Crystalborn, Wyrdling, etc.
- **4-Stat System**: STR, DEX, INT, WIL with automatic modifier calculation
- **10 Skills**: All Nimble skills with proficiency tracking
- **Spellcasting**: Full spell management for cantrips through 5th-level spells
- **Equipment Management**: Track armor, weapons, items, and silver currency

#### Character Sheets
- **Dual View System**: 
  - Mobile-optimized JSON view for iOS/Mac apps
  - Beautiful web-based HTML character sheet
- **Professional Design**: Nimble-themed with brand colors (green, gold, brown)
- **Complete Information Display**:
  - Abilities, skills, proficiencies
  - HP tracking with temporary HP
  - Spells and spellcasting
  - Class features and ancestry features
  - Equipment and inventory
  - Personality traits, ideals, bonds, flaws

#### Monster/NPC System
- **Full Stat Blocks**: Professional stat block creation and display
- **Challenge Rating**: CR 0-30 with XP calculations
- **Complete Stat Management**:
  - All abilities, skills, senses, languages
  - Damage vulnerabilities, resistances, immunities
  - Condition immunities
  - Movement types (walk, fly, swim, climb, burrow)
- **Special Abilities**: Traits, actions, reactions, legendary actions
- **Monster Spellcasting**: Full spellcasting blocks for magical creatures
- **Loot & Rewards**: Track treasure and items

#### Combat Tracker Integration
- **Initiative Tracking**: Automatic initiative based on stats
- **AC Display**: Armor class visible in tracker
- **HP Bars**: Visual HP tracking with temporary HP support
- **Entity Roles**: Friendly (characters), Hostile (monsters), Neutral (NPCs)

### 🎨 User Interface

#### Styling
- **Nimble Brand Colors**: Custom color palette throughout
  - Primary Green: #2d5016
  - Gold Accents: #DBC385
  - Dark Brown: #3d2817
  - Dark Red: #4E1B0E
  - Cream Background: #f5f0e8
- **Responsive Design**: Works on all screen sizes
- **Print-Friendly**: Optimized styles for printing character sheets
- **Professional Layout**: Clean, organized stat blocks and character sheets

### 📋 Forms System

#### Character Form
Comprehensive character creation with sections for:
- Basic Information (name, level, class, ancestry, background)
- Abilities (STR, DEX, INT, WIL)
- Hit Points & Defense
- Movement & Initiative
- Skills (all 10 Nimble skills)
- Proficiencies & Languages
- Combat (attacks, proficiency bonus)
- Spellcasting (complete spell management)
- Class Features & Abilities
- Ancestry Features
- Equipment & Currency
- Character Details (personality, ideals, bonds, flaws)

#### Monster/NPC Form
Full stat block editing with:
- Basic creature information
- All ability scores
- Defense & HP
- Movement types
- Skills & Senses
- Damage modifiers (vulnerabilities, resistances, immunities)
- Special traits
- Actions & Attacks
- Reactions
- Legendary Actions
- Spellcasting
- Loot & GM Notes

#### Reusable Form Partials
- Ability/Feature partial
- Attack partial
- Skill partial
- Spell partial
- Equipment partial

---

## 📦 What's Included

### Core System Files
- `manifest.json` - System metadata
- `system.json` - System configuration
- `config.json` - Entity configurations with combat tracker integration
- `entities.json` - Entity type definitions
- `types.json` - Comprehensive type mappings (100+ types)
- `collections.json` - Collection enumerations
- `filters.json` - Content filtering

### Content Files
- `classes.json` - All 11 Nimble classes
- `ancestries.json` - All 24 ancestries
- `weapons.json` - 22 weapon definitions
- `armor.json` - 20 armor types
- `items.json` - Equipment and consumables

### Forms
- Character creation form (15+ sections)
- Monster/NPC creation form (11+ sections)
- 5 reusable form partials

### Views
- Character sheet (JSON + HTML)
- Monster stat block (JSON + HTML)
- Base HTML template
- 9 view partials (markdown templates)

### Styles
- Complete CSS stylesheet (400+ lines)
- Responsive design
- Print optimization
- Nimble brand theming

### Assets
- Character sheet images
- System icon and banner
- Font support
- Custom themes

---

## 🚀 Installation

### Method 1: Direct Import (Recommended)
1. Download `Nimble v0.1.0.system`
2. On iOS/Mac: Tap/click the file and choose "Open in Encounter+"
3. The system will be automatically imported

### Method 2: Files App (iOS)
1. Download `Nimble v0.1.0.system`
2. Save to Files app (iCloud Drive, Dropbox, etc.)
3. In Encounter+: Settings > Import
4. Navigate to the `.system` file and import

### Method 3: AirDrop (iOS/Mac)
1. Download `Nimble v0.1.0.system`
2. AirDrop to your iOS device
3. Choose "Open in Encounter+"

---

## 🎮 Getting Started

### Creating a Character

1. **Open Encounter+** and navigate to your campaign
2. **Create New Character**:
   - Tap "+" or "Add Character"
   - Select "Nimble RPG" as system
3. **Fill in Basic Info**:
   - Character name
   - Select class (11 options)
   - Select ancestry (24 options)
   - Choose level (1-20)
4. **Set Abilities**:
   - Enter STR, DEX, INT, WIL scores
   - Modifiers calculate automatically
5. **Configure Skills**:
   - Select proficient skills
   - Set proficiency level (Proficient or Expert)
6. **Add Equipment**:
   - Select armor
   - Add weapons
   - Track inventory
7. **Manage Spells** (for spellcasters):
   - Add known spells
   - Set spell slots
   - Track usage

### Creating a Monster/NPC

1. **Create New Creature**:
   - Tap "+" or "Add Monster"
   - Select "Nimble RPG" as system
2. **Set Basic Stats**:
   - Name, Type, Size, CR
   - Alignment
3. **Configure Abilities**:
   - Set ability scores
   - Add skills and senses
4. **Define Defense**:
   - Set AC
   - Configure HP
   - Add resistances/immunities
5. **Add Special Abilities**:
   - Traits and passive abilities
   - Actions and attacks
   - Reactions
   - Legendary actions (if applicable)
6. **Spellcasting** (optional):
   - Add spellcasting description
   - List spells by level

---

## 📊 System Statistics

- **Total Files**: 38
- **File Size**: 104KB
- **Supported Classes**: 11
- **Supported Ancestries**: 24
- **Skills**: 10
- **Spell Levels**: 6 (cantrips + 1-5)
- **Spell Schools**: 7
- **Damage Types**: 13
- **Conditions**: 15
- **Monster Types**: 14
- **Challenge Ratings**: 0-30

---

## 🔧 Technical Details

### Architecture
- Based on EncounterPlus PF2e system architecture
- Dual-view rendering (JSON for mobile, HTML for web)
- Modular form and view partial system
- Comprehensive type mapping system
- Template-based rendering with Jinja2

### Data Structure
- 4-stat ability system (STR, DEX, INT, WIL)
- Simplified 10-skill system
- Spell slots for levels 1-5
- Equipment tracking with weight and quantity
- HP with temporary HP support

### Compatibility
- **Minimum Version**: Encounter+ 5.0.0+3848
- **Platform**: iOS, iPadOS, macOS
- **Format**: .system (ZIP archive)

---

## 🐛 Known Issues

None currently reported. Please report any issues on GitHub.

---

## 🗺️ Roadmap

### Future Enhancements
- [ ] Spell content database
- [ ] Monster bestiary
- [ ] Magic items database
- [ ] Pre-generated character templates
- [ ] Additional character options
- [ ] Enhanced spellcasting features
- [ ] Automation for level advancement
- [ ] Condition tracking
- [ ] Rest management

---

## 📝 Credits

**Game System**: Nimble RPG by Nimble Co.  
**System Implementation**: Based on EncounterPlus PF2e architecture  
**Platform**: Encounter+ VTT  
**Version**: 0.1.0  
**Release Date**: November 30, 2025

---

## 📄 License

This system definition is published under the Nimble 3rd Party Creator License.

"Nimble RPG System for Encounter+" is an independent product published under the Nimble 3rd Party Creator License and is not affiliated with Nimble Co. Nimble © 2025 Nimble Co.

---

## 🔗 Links

- **Nimble RPG**: [nimbleRPG.com](https://www.nimbleRPG.com)
- **Nimble Discord**: [nimbleRPG.com/discord](https://www.nimbleRPG.com/discord)
- **Encounter+ VTT**: [encounter.plus](https://encounter.plus)
- **Encounter+ Help**: [help.encounter.plus](https://help.encounter.plus)
- **GitHub Repository**: [github.com/encounterplus/nimble](https://github.com/encounterplus/nimble)

---

## 💬 Support

**For Nimble RPG questions**: Visit nimbleRPG.com or join the Discord  
**For Encounter+ questions**: Check help.encounter.plus  
**For this system**: Open an issue on GitHub

---

**Enjoy your adventures with Nimble RPG!** 🎲
