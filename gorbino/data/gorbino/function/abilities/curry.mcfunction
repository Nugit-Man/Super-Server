execute anchored eyes run particle minecraft:flame ^ ^ ^2 0 0 0 0.01 100
execute positioned ^ ^ ^2 as @s run damage @r[distance=..1.5] 6 in_fire
give @s minecraft:bowl[custom_name='["",{"text":"Curry","italic":false}]',consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.generic.eat",has_consume_particles:0b},use_cooldown={seconds:0.2}]