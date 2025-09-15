summon armor_stand ~ ~ ~ {Tags:[burst_charm]}
tp @e[tag=burst_charm,type=armor_stand] ^ ^ ^6
execute at @e[tag=burst_charm,type=armor_stand] run damage @a[distance=..2.5,limit=1,sort=nearest] 12 magic by @s
execute anchored eyes run particle minecraft:end_rod ^ ^ ^6 0 0 0 .09 1000
kill @e[tag=burst_charm,type=armor_stand]
give @s nether_star[custom_name=[{"text":"Burst Charm","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:1,animation:brush,sound:"block.amethyst_block.resonate",has_consume_particles:0b},use_cooldown={seconds:10}]