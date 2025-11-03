summon marker ~ ~ ~ {Tags:[GB_Freeze]}
scoreboard players set @e[tag=GB_Freeze,limit=1,sort=nearest,distance=..3] GB_velocity 0
execute anchored eyes run tp @e[tag=GB_Freeze,limit=1,sort=nearest,distance=..3] ^ ^ ^2.5 ~ ~
give @s breeze_rod[custom_name=[{"text":"Freeze Bolt","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.2,animation:spear,sound:"entity.player.hurt_freeze",has_consume_particles:0b},use_cooldown={seconds:7.5}]
execute at @s run summon minecraft:splash_potion ~ ~2.5 ~ {Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
tag @s add GB_Frost_Fix