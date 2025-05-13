summon marker ~ ~ ~ {Tags:[Frog]}
particle minecraft:portal ~ ~0.5 ~ 0 0 0 1 10000
schedule function gorbino:abilities/frog2 2.5s
give @s minecraft:ochre_froglight[custom_name='["",{"text":"Frog","italic":false}]',consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.frog.ambient",has_consume_particles:0b},use_cooldown={seconds:10}]