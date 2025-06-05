#Zombie King
scoreboard players set FI_Boss_Zombie_Player FI_Boss_Check 0
scoreboard players set FI_Boss_Zombie_Zombie FI_Boss_Check 0
execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run execute as @a[distance=..18] run scoreboard players add FI_Boss_Zombie_Player FI_Boss_Check 1
execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run execute as @e[type=zombie,distance=..18] run scoreboard players add FI_Boss_Zombie_Zombie FI_Boss_Check 1

execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run execute at @e[type=marker,tag=FI_Zombie_Boss_Door] run clone 68968 81 28 68976 86 28 68981 91 18
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Door] run fill 68981 91 18 68989 96 18 air

execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run execute at @e[type=marker,tag=FI_Zombie_Boss_Door] run effect give @e[type=zombie,distance=..18] speed infinite 1

execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run kill @e[type=zombie,distance=..18]
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run kill @e[type=item,distance=..18]

#
#BOSS SHIT NO WORK!!!
#kinda does now
#Also give him speed 2
#

#Zombie Music
#1st Movement
execute at @e[type=armor_stand,tag=FI_Music_Start] run playsound minecraft:final_island.1st_movement master @a[distance=..5,scores={FI_Boss_Music=0}] ~ ~ ~
execute at @e[type=armor_stand,tag=FI_Music_Start] run scoreboard players set @a[distance=..5] FI_Boss_Music 1
execute at @e[type=armor_stand,tag=FI_Music_End] run stopsound @a[distance=..5] master minecraft:final_island.1st_movement
execute at @e[type=armor_stand,tag=FI_Music_End] run scoreboard players set @a[distance=..5] FI_Boss_Music 0
#3rd Movement
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. at @e[type=marker,tag=FI_Zombie_Boss_Check] run tag @a[distance=..18,scores={FI_Boss_Music=1}] add FI_Boss_Music
execute at @a[tag=FI_Boss_Music] as @a[tag=FI_Boss_Music] run playsound minecraft:final_island.3rd_movement master @s ~ ~ ~
stopsound @a[tag=FI_Boss_Music] master minecraft:final_island.1st_movement
scoreboard players set @a[tag=FI_Boss_Music] FI_Boss_Music 3
tag @a[scores={FI_Boss_Music=3}] remove FI_Boss_Music
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Door] run stopsound @a[scores={FI_Boss_Music=3}] master minecraft:final_island.3rd_movement










schedule function final_island:boss 10t