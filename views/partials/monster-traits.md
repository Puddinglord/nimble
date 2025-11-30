{% if data.traits %}
{% markdown %}
{% for trait in data.traits %}
{% include "partials/ability.md" with ability=trait %}

{% endfor %}
{% endmarkdown %}
{% endif %}
