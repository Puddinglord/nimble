{% markdown %}
**Armor Class:** {{data.ac.value}}{% if data.ac.notes %} ({{data.ac.notes}}){% endif %}  
**Hit Points:** {{data.hp.current}}/{{data.hp.max}}{% if data.hp.formula %} ({{data.hp.formula}}){% endif %}  
**Speed:** {{data.movement.walk}} spaces{% if data.movement.fly > 0 %}, fly {{data.movement.fly}} spaces{% endif %}{% if data.movement.swim > 0 %}, swim {{data.movement.swim}} spaces{% endif %}{% if data.movement.climb > 0 %}, climb {{data.movement.climb}} spaces{% endif %}{% if data.movement.burrow > 0 %}, burrow {{data.movement.burrow}} spaces{% endif %}{% if data.movement.notes %} ({{data.movement.notes}}){% endif %}

---

| STR | DEX | INT | WIL |
|:---:|:---:|:---:|:---:|
| {{data.abilities.str.score}} ({{data.abilities.str.modifier|signed}}) | {{data.abilities.dex.score}} ({{data.abilities.dex.modifier|signed}}) | {{data.abilities.int.score}} ({{data.abilities.int.modifier|signed}}) | {{data.abilities.wil.score}} ({{data.abilities.wil.modifier|signed}}) |

---

{% if data.skills.perception or data.skills.stealth or data.skills.arcana or data.skills.insight or data.skills.influence or data.skills.other %}
**Skills:** {% if data.skills.perception %}Perception {{data.skills.perception|signed}}{% endif %}{% if data.skills.stealth %}, Stealth {{data.skills.stealth|signed}}{% endif %}{% if data.skills.arcana %}, Arcana {{data.skills.arcana|signed}}{% endif %}{% if data.skills.insight %}, Insight {{data.skills.insight|signed}}{% endif %}{% if data.skills.influence %}, Influence {{data.skills.influence|signed}}{% endif %}{% if data.skills.other %}, {{data.skills.other}}{% endif %}  
{% endif %}
{% if data.damage.vulnerabilities %}**Damage Vulnerabilities:** {{data.damage.vulnerabilities}}  {% endif %}
{% if data.damage.resistances %}**Damage Resistances:** {{data.damage.resistances}}  {% endif %}
{% if data.damage.immunities %}**Damage Immunities:** {{data.damage.immunities}}  {% endif %}
{% if data.damage.conditionImmunities %}**Condition Immunities:** {{data.damage.conditionImmunities}}  {% endif %}
{% if data.senses %}**Senses:** {{data.senses}}  {% endif %}
{% if data.languages %}**Languages:** {{data.languages}}  {% endif %}
**Challenge:** {{data.cr}}{% if data.xp %} ({{data.xp}} XP){% endif %}

---
{% endmarkdown %}
