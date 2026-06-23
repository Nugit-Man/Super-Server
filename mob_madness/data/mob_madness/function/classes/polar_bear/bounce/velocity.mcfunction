data modify entity @s item.id set value "minecraft:blue_ice"

# VIDEO METHOD
execute store result score .x GB_velocity run data get entity @s Pos[0] 100
execute store result score .y GB_velocity run data get entity @s Pos[1] 100
execute store result score .z GB_velocity run data get entity @s Pos[2] 100
 
tp @s ^ ^ ^0.1
 
execute store result score .dx GB_velocity run data get entity @s Pos[0] 100
execute store result score .dy GB_velocity run data get entity @s Pos[1] 100
execute store result score .dz GB_velocity run data get entity @s Pos[2] 100
 
execute store result entity @s Motion[0] double 1 run scoreboard players operation .dx GB_velocity -= .x GB_velocity
execute store result entity @s Motion[1] double 1 run scoreboard players operation .dy GB_velocity -= .y GB_velocity
execute store result entity @s Motion[2] double 1 run scoreboard players operation .dz GB_velocity -= .z GB_velocity

tag @s add MM_Ice_Pinball
scoreboard players set @s MM_Ice_Chain 0