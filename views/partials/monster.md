{% if data.hp.max %}**HP** {{data.hp.max}}{% endif %} | {% if data.defense %}**DEF** {{data.defense}}{% endif %} | **Speed** {{data.movement.speed|default: '6'}}{% if data.movement.type %} ({{data.movement.type|map: 'MovementType'}}){% endif %}

{% if data.size %}**Size** {{data.size|map: 'Size'}}{% endif %}{% if data.armor %} | **Armor** {{data.armor|map: 'MonsterArmor'}}{% endif %}
