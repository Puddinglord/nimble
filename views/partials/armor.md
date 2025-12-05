**Defense** +{{data.defenseBonus|default: '0'}}{% if data.magicBonus > 0 %} | **Magic** +{{data.magicBonus}}{% endif %}{% if data.rarity %} | **Rarity** {{data.rarity}}{% endif %}

{% if data.dexLimit %}**DEX Limit** {{data.dexLimit}}{% endif %}{% if data.strRequirement > 0 %} | **STR Required** {{data.strRequirement}}{% endif %}{% if data.value %} | **Value** {{data.value}} sp{% endif %}{% if data.weight %} | **Weight** {{data.weight}} lbs{% endif %}

{% if data.stealthDisadvantage == true %}*Stealth Disadvantage*{% endif %}
