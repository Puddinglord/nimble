{% markdown %}
## Abilities
**STR** {{data.abilities.str.score}} ({{data.abilities.str.modifier|signed}}) | **DEX** {{data.abilities.dex.score}} ({{data.abilities.dex.modifier|signed}}) | **INT** {{data.abilities.int.score}} ({{data.abilities.int.modifier|signed}}) | **WIL** {{data.abilities.wil.score}} ({{data.abilities.wil.modifier|signed}})

## Skills
{% for skill, skillData in data.skills %}
- **{{skill|map: 'Skill'|titlecase}}**: {{skillData.bonus|signed}}{% if skillData.proficiency %} ({{skillData.proficiency|map: 'ProficiencyLevel'}}){% endif %}
{% endfor %}

{% if data.languages %}
## Languages
{{data.languages}}
{% endif %}

{% if data.proficiencies.armor or data.proficiencies.weapons %}
## Proficiencies
{% if data.proficiencies.armor %}**Armor:** {{data.proficiencies.armor}}  {% endif %}
{% if data.proficiencies.weapons %}**Weapons:** {{data.proficiencies.weapons}}{% endif %}
{% endif %}
{% endmarkdown %}
