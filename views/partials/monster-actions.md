{% for action in data.actions %}
{% if action.attackBonus %}
{% include "partials/attack.md" with attack=action %}
{% else %}
{% include "partials/ability.md" with ability=action %}
{% endif %}

{% endfor %}
