summon marker ~ ~ ~ {Tags:[burst_charm]}
tp @e[tag=burst_charm,type=marker] ^ ^ ^6
execute at @e[tag=burst_charm,type=marker] run damage @a[distance=..2.5,limit=1,sort=nearest,tag=!GB_Hazmat] 12 magic by @s
execute at @e[tag=burst_charm,type=marker] run damage @a[distance=..2.5,limit=1,sort=nearest,tag=GB_Hazmat] 6 magic by @s
execute anchored eyes run particle minecraft:end_rod ^ ^ ^6 0 0 0 .09 1000
kill @e[tag=burst_charm,type=marker]
give @s nether_star[custom_name=[{"text":"Burst Charm","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:1,animation:brush,sound:"block.amethyst_block.resonate",has_consume_particles:0b},use_cooldown={seconds:10},use_effects={speed_multiplier:1,can_sprint:true}]