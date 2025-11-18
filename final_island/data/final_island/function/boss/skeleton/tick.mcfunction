execute store result bossbar minecraft:fi_spider_boss value run data get entity @e[tag=FI_Spider_Boss,limit=1,type=spider] Health 1
execute store result score FI_Spider_Boss FI_Misc run data get entity @e[tag=FI_Spider_Boss,limit=1,type=spider] Health 1
execute store result bossbar minecraft:fi_skeleton_boss value run data get entity @e[tag=FI_Skeleton_Boss,limit=1,type=skeleton] Health 1
execute store result score FI_Skeleton_Boss FI_Misc run data get entity @e[tag=FI_Skeleton_Boss,limit=1,type=skeleton] Health 1


execute if score FI_Skeleton_Boss FI_Misc matches 500 run scoreboard players set FI_Skeleton_Phase FI_Misc 0
execute if score FI_Skeleton_Boss FI_Misc matches ..416 run execute if score FI_Skeleton_Phase FI_Misc matches 0 run scoreboard players set FI_Skeleton_Phase FI_Misc 1
execute if score FI_Skeleton_Boss FI_Misc matches ..333 run execute if score FI_Skeleton_Phase FI_Misc matches 2 run scoreboard players set FI_Skeleton_Phase FI_Misc 3
execute if score FI_Skeleton_Boss FI_Misc matches ..250 run execute if score FI_Skeleton_Phase FI_Misc matches 4 run scoreboard players set FI_Skeleton_Phase FI_Misc 5
execute if score FI_Skeleton_Boss FI_Misc matches ..166 run execute if score FI_Skeleton_Phase FI_Misc matches 6 run scoreboard players set FI_Skeleton_Phase FI_Misc 7
execute if score FI_Skeleton_Boss FI_Misc matches ..83 run execute if score FI_Skeleton_Phase FI_Misc matches 8 run scoreboard players set FI_Skeleton_Phase FI_Misc 9


execute if score FI_Skeleton_Cooldown FI_Misc matches 0 run execute if score FI_Skeleton_Phase FI_Misc matches 1 run scoreboard players set FI_Skeleton_Cooldown FI_Misc 40
execute if score FI_Skeleton_Cooldown FI_Misc matches 0 run execute if score FI_Skeleton_Phase FI_Misc matches 3 run scoreboard players set FI_Skeleton_Cooldown FI_Misc 50
execute if score FI_Skeleton_Cooldown FI_Misc matches 0 run execute if score FI_Skeleton_Phase FI_Misc matches 5 run scoreboard players set FI_Skeleton_Cooldown FI_Misc 60
execute if score FI_Skeleton_Cooldown FI_Misc matches 0 run execute if score FI_Skeleton_Phase FI_Misc matches 7 run scoreboard players set FI_Skeleton_Cooldown FI_Misc 70
execute if score FI_Skeleton_Cooldown FI_Misc matches 0 run execute if score FI_Skeleton_Phase FI_Misc matches 9 run scoreboard players set FI_Skeleton_Cooldown FI_Misc 80



execute if score FI_Skeleton_Cooldown FI_Misc matches 1 run scoreboard players add FI_Skeleton_Phase FI_Misc 1
execute if score FI_Skeleton_Cooldown FI_Misc matches 1.. run scoreboard players remove FI_Skeleton_Cooldown FI_Misc 1


execute if score FI_Skeleton_Cooldown FI_Misc matches 1.. run execute as @e[type=skeleton,tag=FI_Skeleton_Boss,limit=1] at @s anchored eyes positioned ^ ^ ^.5 summon arrow summon area_effect_cloud positioned .0 0 .0 positioned ^ ^ ^10 summon area_effect_cloud at @e[type=area_effect_cloud,nbt={Age:0}] run data modify entity @e[type=arrow,distance=...1,limit=1] Motion set from entity @s Pos
execute at @e[tag=FI_Spider_Boss] run kill @e[type=minecraft:area_effect_cloud,distance=..20]

execute if score FI_Spider_Boss FI_Misc matches 0 run execute if score FI_Skeleton_Boss FI_Misc matches 0 run function final_island:boss/skeleton/win



#Check if you are out of time
scoreboard players remove FI_Boss_Time FI_Misc 1
execute store result bossbar fi_time value run scoreboard players get FI_Boss_Time FI_Misc
execute if score FI_Boss_Time FI_Misc matches 0 run function final_island:boss/skeleton/time