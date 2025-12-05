{% if data.itemType %}**Type** {{data.itemType}}{% endif %}{% if data.rarity %} | **Rarity** {{data.rarity}}{% endif %}{% if data.quantity > 1 %} | **Qty** {{data.quantity}}{% endif %}

{% if data.value %}**Value** {{data.value}} sp{% endif %}{% if data.weight %} | **Weight** {{data.weight}} lbs{% endif %}

{% if data.consumable == true %}*Consumable*{% endif %}{% if data.attunement == true %} | *Requires Attunement*{% if data.attunementRequirements %}: {{data.attunementRequirements}}{% endif %}{% endif %}

{% if data.charges.max > 0 %}**Charges** {{data.charges.current}}/{{data.charges.max}}{% if data.recharge %} ({{data.recharge}}){% endif %}{% endif %}
