###
###
###interaction warps

#Turn on final Island genorators
execute if entity @a[tag=GoTo_Final_Island] run function final_island:optimize/schedule_boot

#Lobby --> Final Island
execute in final_island:game run spawnpoint @a[tag=GoTo_Final_Island] 0 1 0 90 0
execute in final_island:game run tp @a[tag=GoTo_Final_Island] 0 1 0 90 0
tag @a remove GoTo_Final_Island


#Final Island --> Lobby
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] run data remove entity @s interaction

#Lobby --> Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] on target run tag @s add Main_Join_Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] run data remove entity @s interaction
function super_server:skyblock/join

#Lobby --> Gorbino
execute in gorbino:lobby run spawnpoint @a[tag=GoTo_Gorbino] 56 5 26 0 0
execute in gorbino:lobby run tp @a[tag=GoTo_Gorbino] 56 5 26 0 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Menu 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Radiation 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Mode 0
tag @a remove GoTo_Gorbino

#Anywhere --> Lobby
scoreboard players enable @a Lobby
execute in super_server:lobby run spawnpoint @a[scores={Lobby=1..}] 8 -59 -10 0 0
execute in super_server:lobby run tp @a[scores={Lobby=1..}] 8 -59 -10 0 0
scoreboard players set @a Lobby 0

#Gorbino --> Lobby
execute as @e[type=interaction,limit=1,tag=GB_Lobby] on target run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=GB_Lobby] on target run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=GB_Lobby] run data remove entity @s interaction

#Lobby --> Mace
execute in super_server:mace_master run spawnpoint @a[tag=GoTo_Mace_Masters] 0 301 0 0 0
execute in super_server:mace_master run tp @a[tag=GoTo_Mace_Masters] 0 301 0 0 0
tag @a remove GoTo_Mace_Masters

#Lobby --> Ascendance
execute in ascendance:game run spawnpoint @a[tag=GoTo_Ascendance] 38 25 37 0 0
execute in ascendance:game run tp @a[tag=GoTo_Ascendance] 38 25 37 0 0
tag @a[tag=GoTo_Ascendance] remove AS_Welcome
tag @a remove GoTo_Ascendance

#Lobby --> RIC
execute in ric:lobby run spawnpoint @a[tag=GoTo_RIC] -31 -31 8 -90 0
execute in ric:lobby run tp @a[tag=GoTo_RIC] -31 -31 8 -90 0
tag @a remove GoTo_RIC

#Lobby --> Kanye
execute in super_server:kanye if score MAIN_2t MAIN_Time matches 2 run tp @a[tag=GoTo_Kanye] 155.30 -28.00 -33.70 -45 14
execute in super_server:kanye if score MAIN_2t MAIN_Time matches 1 run tp @a[tag=GoTo_Kanye] 257.70 -28.00 132.70 135 14
tag @a remove GoTo_Kanye

#Lobby --> Mob Madness
execute in mob_madness:game run spawnpoint @a[tag=GoTo_Final_Island] 0 0 0 90 0
execute in mob_madness:game run tp @a[tag=GoTo_Final_Island] 0 0 0 90 0
tag @a remove GoTo_Mob_Madness