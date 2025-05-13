summon marker ~ ~ ~ {Tags:[Builder_z]}
scoreboard players set @e[limit=1,tag=Builder_z,sort=nearest] velocity 0
execute if entity @s[scores={velocity=-45..45}] run tp @e[limit=1,tag=Builder_z,sort=nearest] ~ ~1 ~4
execute if entity @s[scores={velocity=135..180}] run tp @e[limit=1,tag=Builder_z,sort=nearest] ~ ~1 ~-4
execute if entity @s[scores={velocity=-180..-135}] run tp @e[limit=1,tag=Builder_z,sort=nearest] ~ ~1 ~-4