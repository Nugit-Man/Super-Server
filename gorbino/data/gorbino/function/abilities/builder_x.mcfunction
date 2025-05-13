summon marker ~ ~ ~ {Tags:[Builder_x]}
scoreboard players set @e[limit=1,tag=Builder_x,sort=nearest] velocity 0
execute if entity @s[scores={velocity=45..135}] run tp @e[limit=1,tag=Builder_x,sort=nearest] ~-4 ~1 ~
execute if entity @s[scores={velocity=-135..-45}] run tp @e[limit=1,tag=Builder_x,sort=nearest] ~4 ~1 ~