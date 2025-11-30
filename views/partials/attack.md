**{{attack.name}}** *{{attack.range}}*: {{attack.attackBonus|signed}} to hit. *Hit:* {{attack.damage}} {{attack.damageType|map: 'DamageType'}} damage.{% if attack.properties %} ({{attack.properties}}){% endif %}{% if attack.text %}  
{{attack.text}}{% endif %}
