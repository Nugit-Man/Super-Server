#Make it so they can not trample farmland
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 1 true
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 1 true

#change the score of MAIN_Game depending on what world they are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor
#5 - Skyblock


execute as @a[nbt={Dimension:"super_server:lobby"}] run scoreboard players set @s MAIN_Game 0
execute as @a[nbt={Dimension:"ascendance:game"}] run scoreboard players set @s MAIN_Game 1
execute as @a[nbt={Dimension:"final_island:game"}] run scoreboard players set @s MAIN_Game 2
execute as @a[nbt={Dimension:"gorbino:game"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"gorbino:lobby"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"parkor:game"}] run scoreboard players set @s MAIN_Game 4
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s MAIN_Game 5
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s MAIN_Game 5



#Pass the MAIN_------ scoreboards into the game specific ones
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sneak_Time = @s MAIN_Sneak_Time
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Health = @s MAIN_Health
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Deaths += @s MAIN_Deaths
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Kills_Mobs += @s MAIN_Total_Kills
execute as @a[scores={MAIN_Game=2,MAIN_Total_Kills=1..}] run scoreboard players operation @s FI_Milestone_Kills_Mobs -= @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Fishing += @s MAIN_Fish_Caught
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Jumps += @s MAIN_Jumps
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Check_Deaths = @s MAIN_Deaths

execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Shotgun = @s MAIN_Crossbow_Used


#Deal with players logging on
tag @a[scores={MAIN_Leave=1..}] remove MAIN_log
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0
tag @a[tag=!MAIN_log] add MAIN_log
scoreboard players set @a[scores={MAIN_Leave=1..}] MAIN_Leave 0






#Reset things like sneak time
scoreboard players set @a MAIN_Sneak_Time 0
scoreboard players set @a MAIN_Deaths 0
scoreboard players set @a MAIN_Crossbow_Used 0
scoreboard players set @a MAIN_Total_Kills 0
scoreboard players set @a MAIN_Jumps 0
scoreboard players set @a MAIN_Fish_Caught 0



function super_server:skyblock/advancement



###
###
###interaction warps

#Lobby --> Final Island
execute as @e[type=interaction,limit=1,tag=Main_Final_Island] on target run execute in final_island:game run spawnpoint @s 0 1 0 90
execute as @e[type=interaction,limit=1,tag=Main_Final_Island] on target run execute in final_island:game run tp @s 0 1 0 90 0
execute as @e[type=interaction,limit=1,tag=Main_Final_Island] run data remove entity @s interaction


#Final Island --> Lobby
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] run data remove entity @s interaction

#Lobby --> Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] on target run tag @s add Main_Join_Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] run data remove entity @s interaction
function super_server:skyblock/join


#Anywhere --> Lobby
scoreboard players enable @a Lobby
execute in super_server:lobby run spawnpoint @a[scores={Lobby=1..}] 8 -59 -10 0
execute in super_server:lobby run tp @a[scores={Lobby=1..}] 8 -59 -10 0 0
scoreboard players set @a Lobby 0

#Awarding Xp
scoreboard players set @a[scores={MAIN_Game=1..}] MAIN_XP_Timer 0
scoreboard players add @a[scores={MAIN_Game=0}] MAIN_XP_Timer 1
execute as @a[scores={MAIN_XP_Timer=10,MAIN_Achivement_XP=1..}] run tellraw @s [{"text":"XP Gained: ","color":"gray"},{"color":"gray","score":{"objective":"MAIN_Achivement_XP","name":"@s"}}]
experience add @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] 1 points
execute at @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] run playsound minecraft:entity.experience_orb.pickup master @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}]
scoreboard players remove @a[scores={MAIN_XP_Timer=16,MAIN_Achivement_XP=1..}] MAIN_Achivement_XP 1
scoreboard players set @a[scores={MAIN_XP_Timer=21,MAIN_Achivement_XP=1..}] MAIN_XP_Timer 14