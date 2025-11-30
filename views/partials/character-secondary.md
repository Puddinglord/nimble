{% markdown %}
## Defense
**Armor Class:** {{data.ac.value}}{% if data.ac.notes %} ({{data.ac.notes}}){% endif %}  
**Hit Points:** {{data.hp.current}} / {{data.hp.max}}{% if data.hp.temp > 0 %} (+{{data.hp.temp}} temp){% endif %}  
**Initiative:** {{data.initiative|signed}}

## Movement
**Speed:** {{data.movement.walk}} spaces{% if data.movement.fly > 0 %}, fly {{data.movement.fly}} spaces{% endif %}{% if data.movement.swim > 0 %}, swim {{data.movement.swim}} spaces{% endif %}{% if data.movement.climb > 0 %}, climb {{data.movement.climb}} spaces{% endif %}{% if data.movement.burrow > 0 %}, burrow {{data.movement.burrow}} spaces{% endif %}
{% endmarkdown %}
