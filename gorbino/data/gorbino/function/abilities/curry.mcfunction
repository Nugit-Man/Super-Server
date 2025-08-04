execute anchored eyes run particle minecraft:flame ^ ^ ^2 0 0 0 0.01 100
execute positioned ^ ^ ^2 as @s run damage @r[distance=..1.5] 6 in_fire
give @s bowl[custom_name=[{"text":"Curry","italic":false}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,sound:"entity.generic.eat",has_consume_particles:0b},use_cooldown={seconds:0.2}]