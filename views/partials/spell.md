**Mana** {{data.manaCost|default: '0'}} | **Casting Time** {{data.castingTime|default: '1 Action'}} | **Range** {{data.range|default: 'Self'}}{{data.rangeCustom}} | **Duration** {{data.duration|default: 'Instant'}}{{data.durationCustom}}

{% if data.components.verbal == true %}V{% endif %}{% if data.components.somatic == true %}S{% endif %}{% if data.components.material == true %}M{% endif %}{% if data.concentration == true %} | *Concentration*{% endif %}{% if data.ritual == true %} | *Ritual*{% endif %}{% if data.attackRoll == true %} | *Attack Roll*{% endif %}

{% if data.components.material == true and data.components.materialDescription %}**Materials** {{data.components.materialDescription}}{% endif %}

{% if data.damage %}**Damage/Healing** {{data.damage}}{% endif %}

{% if data.saveType %}**Save** {{data.saveType}} – {{data.saveEffect}}{% endif %}

{% if data.area %}**Area** {{data.area}}{% endif %}

{% if data.targets %}**Targets** {{data.targets}}{% endif %}
