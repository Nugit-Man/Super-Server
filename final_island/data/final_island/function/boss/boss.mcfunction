#Check if the Zombie King is alive and if players are there
scoreboard players set FI_Boss_Zombie_Player FI_Boss_Check 0
scoreboard players set FI_Boss_Zombie_Zombie FI_Boss_Check 0
execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run execute as @a[distance=..18] run scoreboard players add FI_Boss_Zombie_Player FI_Boss_Check 1
execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run execute as @e[type=zombie,distance=..18] run scoreboard players add FI_Boss_Zombie_Zombie FI_Boss_Check 1


#open the door if there is no zombie
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run clone 68968 81 28 68976 86 28 68981 91 18
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run fill 68981 91 18 68989 96 18 air


#remove the boss and items if there are no players
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run kill @e[type=zombie,distance=..18]
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Check] run kill @e[type=item,distance=..18]


#remove the windcharge scheudle if there is no boss
execute if score FI_Boss_Zombie_Player FI_Boss_Check matches 0 run schedule clear final_island:boss/boss_windcharge

#Give the boss speed 2
effect give @e[type=zombie,tag=FI_Zombie_Boss] speed infinite 1 true



#spawn the boss
execute at @e[type=marker,tag=FI_Zombie_Boss_Spawner] as @e[distance=..1,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:zombie_head"}}] run function final_island:boss/boss_spawn
execute at @e[type=marker,tag=FI_Zombie_Boss_Spawner] as @e[distance=..1,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:zombie_head"}}] run tp @s ~ ~-10 ~
execute at @e[type=marker,tag=FI_Zombie_Boss_Spawner] as @e[distance=..1,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:zombie_head"}}] run kill @s



#Zombie king bossbar
execute store result score FI_Zombie_Bossbar FI_Misc run data get entity @e[tag=FI_Zombie_Boss,limit=1,type=zombie] Health 1
execute store result bossbar fi_zombie_king value run scoreboard players get FI_Zombie_Bossbar FI_Misc


execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run execute at @e[type=zombie,tag=FI_Zombie_Boss] run bossbar set fi_zombie_king players @a[distance=..25]


execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run bossbar set fi_zombie_king players


#Call this function
schedule function final_island:boss/boss 10t




#FI_Boss_Music system
#0 - Not near the boss
#1 - Going Down the Staircase, first movement plays
#2 - Going through the door
#3 - at 2 With the helmet on
#4 - Boss Spawns, third movement plays
#5 - Boss Spawns while helmet is on, Taking helmet off will send you to 4
#When the Boss defeated, music stops and you are set back to 2

#Since the only current way to lower max mana is with the crown. 
#With full lush armor and a red mana crystal you will be at 90 mana
#The system for showoff currently has just checking if you are under 100 max mana
#This will have to be changed in the future if more max mana is possible or if you can lower it without the crown


#Set it to 0
execute at @e[type=marker,tag=FI_Music_End] run stopsound @a[distance=..5] master minecraft:final_island.1st_movement
execute at @e[type=marker,tag=FI_Music_End] run scoreboard players set @a[distance=..5] FI_Boss_Music 0

#Set it to 1 if at 0
execute at @e[type=marker,tag=FI_Music_Start] run playsound minecraft:final_island.1st_movement master @a[distance=..5,scores={FI_Boss_Music=0}] ~ ~ ~
execute at @e[type=marker,tag=FI_Music_Start] run scoreboard players set @a[distance=..5,scores={FI_Boss_Music=0}] FI_Boss_Music 1

#Set it to 2 if at 1
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run execute at @e[type=marker,tag=FI_Zombie_Boss_Door] run scoreboard players set @a[distance=..5,scores={FI_Boss_Music=1}] FI_Boss_Music 2

#Set it to 3 if at 2
scoreboard players set @a[scores={MAIN_Game=1,FI_Boss_Music=2,FI_Mana_Max=..99}] FI_Boss_Music 3

#Set it to 4 if at 2
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run stopsound @a[scores={FI_Boss_Music=2..3}] master minecraft:final_island.1st_movement
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run scoreboard players set @a[scores={FI_Boss_Music=2}] FI_Boss_Music 4

#Set it to 5 if at 3
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 1.. run scoreboard players set @a[scores={FI_Boss_Music=3}] FI_Boss_Music 5

#Set it to 4 if at 5
scoreboard players set @a[scores={FI_Boss_Music=5,FI_Mana_Max=100..}] FI_Boss_Music 4

#Set it to 2 if at 4
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run advancement grant @a[scores={FI_Boss_Music=4..5}] only final_island:dethroner
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run scoreboard players set @a[scores={FI_Boss_Music=4}] FI_Boss_Music 2

#Set it to 2 if at 5
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run advancement grant @a[scores={FI_Boss_Music=5}] only final_island:show_off
execute if score FI_Boss_Zombie_Zombie FI_Boss_Check matches 0 run scoreboard players set @a[scores={FI_Boss_Music=5}] FI_Boss_Music 2