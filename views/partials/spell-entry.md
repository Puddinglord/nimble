**{{spell.name}}**  
*{{spell.level|map: 'SpellLevel'}} {{spell.school|map: 'SpellSchool'}}*

**Casting Time:** {{spell.castingTime}}  
**Range:** {{spell.range}}  
**Components:** {{spell.components|join: ', '}}  
**Duration:** {{spell.duration}}

{{spell.description}}

{% if spell.higherLevel %}**At Higher Levels.** {{spell.higherLevel}}{% endif %}
