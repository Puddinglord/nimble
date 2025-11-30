# Installing Nimble RPG in Encounter+

## Quick Start

Your **Nimble v0.1.0.system** file is ready to install! It's located in:
- **Downloads folder:** `~/Downloads/Nimble v0.1.0.system`
- **Project folder:** `/Users/dakotahcote/Documents/nimble/Nimble v0.1.0.system`

## Installation Methods

### Method 1: Direct Install (iOS/Mac - Easiest)
1. Open the **Nimble v0.1.0.system** file from your Downloads folder
2. Choose **"Open in Encounter+"**
3. The system will be automatically imported

### Method 2: Files App (iOS)
1. Open the **Files** app on your iOS device
2. Navigate to **Downloads** or save the file to **iCloud Drive**
3. Tap the **Nimble v0.1.0.system** file
4. Choose **"Open in Encounter+"**

### Method 3: AirDrop (Mac to iOS)
1. On your Mac, find the file in **Downloads**
2. Right-click and choose **AirDrop** to your iOS device
3. On iOS, tap the file when it arrives
4. Choose **"Open in Encounter+"**

### Method 4: Encounter+ Import Menu
1. Transfer the file to a cloud service (iCloud, Dropbox, Google Drive)
2. Open **Encounter+** on your device
3. Go to **Settings > Import**
4. Navigate to the **Nimble v0.1.0.system** file
5. Select it to import

## Verifying Installation

After importing, you should see:
- **System Name:** Nimble RPG
- **Version:** 0.1.0
- **11 Character Classes** available
- **24 Ancestries** to choose from
- **Equipment, Weapons, and Armor** in the system

## What's Included

### Core System
- ✅ Complete system definition (manifest, config, types, entities, filters)
- ✅ 4 Stats: STR, DEX, INT, WIL
- ✅ 10 Skills: Arcana, Examination, Finesse, Influence, Insight, Might, Lore, Naturecraft, Perception, Stealth

### Character Options
- ✅ 11 Classes (Berserker, The Cheat, Commander, Hunter, Mage, Oathsworn, Shadowmancer, Shepherd, Songweaver, Stormshifter, Zephyr)
- ✅ 24 Ancestries (5 Common + 19 Exotic)
- ✅ Subclass options for each class

### Equipment
- ✅ 20 Armor types (Cloth, Leather, Mail, Plate, Shields)
- ✅ 22 Weapons (15 melee, 7 ranged)
- ✅ 20 Items (healing potions, adventuring gear, etc.)

### Game Mechanics
- ✅ Conditions and status effects
- ✅ Damage types
- ✅ Spell schools (Fire, Ice, Lightning, Wind, Radiant, Necrotic, Utility)
- ✅ Challenge ratings and XP values
- ✅ Movement types
- ✅ Size categories

## Known Limitations (v0.1.0)

This is the initial release. The following features are planned for future updates:
- 📋 Individual spell definitions (structure exists, spells need to be added)
- 📋 Monster/NPC stat blocks
- 📋 Character sheet forms customization
- 📋 Custom themes and styling
- 📋 Background options
- 📋 Feature details for all classes

## Troubleshooting

### File Won't Open
- Make sure you have **Encounter+ installed** on your device
- Verify the file extension is `.system` (not `.zip`)
- Try re-downloading the file if it appears corrupted

### Import Fails
- Check that you're running **Encounter+ version 5.0.0+3848 or higher**
- Try importing via the **Settings > Import** menu instead
- Restart Encounter+ and try again

### System Doesn't Appear
- Check **Settings > Game Systems** in Encounter+
- The system may need to be selected for your campaign
- Try creating a new campaign and selecting "Nimble RPG"

## Building from Source

If you want to rebuild the system file:

```bash
cd /Users/dakotahcote/Documents/nimble
zip -r "Nimble v0.1.0.system" . -x "*.git*" -x "*Rules/*" -x "*.DS_Store" -x "*extract_pdf.py" -x "*Heros.pdf"
```

## Support

- **Nimble RPG:** [nimbleRPG.com](https://www.nimbleRPG.com)
- **Encounter+ Help:** [help.encounter.plus](https://help.encounter.plus)
- **Issues:** Open an issue on GitHub

## Version History

### v0.1.0 (November 30, 2025)
- Initial release
- Complete system structure based on D&D 5e format
- All classes, ancestries, and equipment defined
- Ready for character creation and gameplay
