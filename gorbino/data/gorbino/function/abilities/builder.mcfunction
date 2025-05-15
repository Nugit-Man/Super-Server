give @s minecraft:oak_planks[custom_name=[{text:"Builder",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0.5,animation:block,sound:"entity.horse.step_wood",has_consume_particles:0b},use_cooldown={seconds:7.5}]
execute store result score @s velocity run data get entity @s Rotation[1]
execute if entity @s[scores={velocity=..-70}] run function gorbino:abilities/builder_y
execute if entity @s[scores={velocity=..-70}] run scoreboard players set @s velocity -200

execute if entity @s[scores={velocity=-69..}] run execute store result score @s velocity run data get entity @s Rotation[0]
execute if entity @s[scores={velocity=-45..45}] run function gorbino:abilities/builder_z
execute if entity @s[scores={velocity=45..135}] run function gorbino:abilities/builder_x
execute if entity @s[scores={velocity=135..180}] run function gorbino:abilities/builder_z
execute if entity @s[scores={velocity=-180..-135}] run function gorbino:abilities/builder_z
execute if entity @s[scores={velocity=-135..-45}] run function gorbino:abilities/builder_x
