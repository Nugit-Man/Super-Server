#Make it so they can not trample farmland
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 1 true
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 1 true

effect give @a[scores={MAIN_Game=0}] saturation 1 0 true





#I use arch btw
#and I'm keeping it that way


###
###
###interaction warps

#Lobby --> Final Island
execute in final_island:game run spawnpoint @a[tag=GoTo_Final_Island] 0 1 0 90
execute in final_island:game run tp @a[tag=GoTo_Final_Island] 0 1 0 90 0
tag @a remove GoTo_Final_Island


#Final Island --> Lobby
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] on target run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=FI_Lobby] run data remove entity @s interaction

#Lobby --> Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] on target run tag @s add Main_Join_Skyblock
execute as @e[type=interaction,limit=1,tag=Main_Skyblock] run data remove entity @s interaction
function super_server:skyblock/join

#Lobby --> Gorbino
execute in gorbino:lobby run spawnpoint @a[tag=GoTo_Gorbino] 56 5 26 0
execute in gorbino:lobby run tp @a[tag=GoTo_Gorbino] 56 5 26 0 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Menu 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Radiation 0
scoreboard players set @a[tag=GoTo_Gorbino] GB_Mode 0
tag @a remove GoTo_Gorbino

#Anywhere --> Lobby
scoreboard players enable @a Lobby
execute in super_server:lobby run spawnpoint @a[scores={Lobby=1..}] 8 -59 -10 0
execute in super_server:lobby run tp @a[scores={Lobby=1..}] 8 -59 -10 0 0
scoreboard players set @a Lobby 0

#Gorbino --> Lobby
execute as @e[type=interaction,limit=1,tag=GB_Lobby] on target run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0
execute as @e[type=interaction,limit=1,tag=GB_Lobby] on target run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @e[type=interaction,limit=1,tag=GB_Lobby] run data remove entity @s interaction

#Lobby --> Mace
execute in super_server:mace_master run spawnpoint @a[tag=GoTo_Mace_Masters] 0 301 0 0
execute in super_server:mace_master run tp @a[tag=GoTo_Mace_Masters] 0 301 0 0 0
tag @a remove GoTo_Mace_Masters

#Lobby --> Ascendance
execute in ascendance:game run spawnpoint @a[tag=GoTo_Ascendance] 38 25 37 0
execute in ascendance:game run tp @a[tag=GoTo_Ascendance] 38 25 37 0 0
tag @a[tag=GoTo_Ascendance] remove AS_Welcome
tag @a remove GoTo_Ascendance







#Deal with players logging on
tag @a[scores={MAIN_Leave=1..}] remove MAIN_log
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0
execute as @a[tag=!MAIN_log] run scoreboard players set @s MAIN_Menu 0
#reset attribute
execute as @a[scores={MAIN_Game=0}] run attribute @s armor base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s armor_toughness base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_damage base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_knockback base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_speed base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s block_break_speed base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s block_interaction_range base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s entity_interaction_range base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s fall_damage_multiplier base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s gravity base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s jump_strength base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s knockback_resistance base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s luck base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s max_health base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s step_height base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s scale base reset
#Finish login
tag @a[tag=!MAIN_log] add MAIN_log
scoreboard players set @a[scores={MAIN_Leave=1..}] MAIN_Leave 0








#change the score of MAIN_Game depending on what world they are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor
#5 - Skyblock
#6 - Mace master


execute as @a[nbt={Dimension:"super_server:lobby"}] run scoreboard players set @s MAIN_Game 0
execute as @a[nbt={Dimension:"ascendance:game"}] run scoreboard players set @s MAIN_Game 1
execute as @a[nbt={Dimension:"final_island:game"}] run scoreboard players set @s MAIN_Game 2
execute as @a[nbt={Dimension:"gorbino:game"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"gorbino:lobby"}] run scoreboard players set @s MAIN_Game 3
execute as @a[nbt={Dimension:"parkor:game"}] run scoreboard players set @s MAIN_Game 4
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s MAIN_Game 5
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s MAIN_Game 5
execute as @a[nbt={Dimension:"super_server:mace_master"}] run scoreboard players set @s MAIN_Game 6


team join Final_Island @a[scores={MAIN_Game=2}]
team join Gorbino @a[scores={MAIN_Game=3}]
team join Skyblock @a[scores={MAIN_Game=5}]
team join Mace_Master @a[scores={MAIN_Game=6}]
team join Lobby @a[scores={MAIN_Game=0}]
team join Ascendance @a[scores={MAIN_Game=1}]


#Pass the MAIN_------ scoreboards into the game specific ones
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Kills = @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Singleplayer_Kills = @s MAIN_Total_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Deaths += @s MAIN_Deaths
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Kills += @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Shots += @s MAIN_Bow_Used

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sneak_Time = @s MAIN_Sneak_Time
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Health = @s MAIN_Health
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Deaths += @s MAIN_Deaths
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Kills_Mobs += @s MAIN_Total_Kills
execute as @a[scores={MAIN_Game=2,MAIN_Total_Kills=1..}] run scoreboard players operation @s FI_Milestone_Kills_Mobs -= @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Fishing += @s MAIN_Fish_Caught
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Jumps += @s MAIN_Jumps
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Check_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sword_Break_Wood = @s MAIN_break_wood_sword
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sword_Break_Gold = @s MAIN_break_gold_sword


execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Shotgun = @s MAIN_Crossbow_Used




#Reset things like sneak time
scoreboard players set @a MAIN_Sneak_Time 0
scoreboard players set @a MAIN_Deaths 0
scoreboard players set @a MAIN_Crossbow_Used 0
scoreboard players set @a MAIN_Total_Kills 0
scoreboard players set @a MAIN_Player_Kills 0
scoreboard players set @a MAIN_Jumps 0
scoreboard players set @a MAIN_Fish_Caught 0
scoreboard players set @a MAIN_Bow_Used 0
scoreboard players set @a MAIN_break_gold_sword 0
scoreboard players set @a MAIN_break_wood_sword 0



function super_server:skyblock/advancement



#Awarding Xp
scoreboard players set @a[scores={MAIN_Game=1..}] MAIN_XP_Timer 0
scoreboard players add @a[scores={MAIN_Game=0}] MAIN_XP_Timer 1
execute as @a[scores={MAIN_XP_Timer=10,MAIN_Achivement_XP=1..}] run tellraw @s [{"text":"XP Gained: ","color":"gray"},{"color":"gray","score":{"objective":"MAIN_Achivement_XP","name":"@s"}}]
experience add @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] 1 points
execute at @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}] run playsound minecraft:entity.experience_orb.pickup master @a[scores={MAIN_XP_Timer=15,MAIN_Achivement_XP=1..}]
scoreboard players remove @a[scores={MAIN_XP_Timer=16,MAIN_Achivement_XP=1..}] MAIN_Achivement_XP 1
scoreboard players set @a[scores={MAIN_XP_Timer=21,MAIN_Achivement_XP=1..}] MAIN_XP_Timer 14

#Mace Masters
function super_server:mace/tick


#Timers
execute if score MAIN_1s MAIN_Time matches 20.. run scoreboard players set MAIN_1s MAIN_Time 0
scoreboard players add MAIN_1s MAIN_Time 1
execute if score MAIN_5s MAIN_Time matches 100.. run scoreboard players set MAIN_5s MAIN_Time 0
scoreboard players add MAIN_5s MAIN_Time 1
execute if score MAIN_2t MAIN_Time matches 2.. run scoreboard players set MAIN_2t MAIN_Time 0
scoreboard players add MAIN_2t MAIN_Time 1


#Barrels
execute in super_server:lobby run item replace block -44 -59 -20 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in super_server:lobby run item replace block 8 -59 8 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in super_server:lobby run item replace block -6 -58 -28 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]

execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Wall] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 1
execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Well] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 2
execute in super_server:lobby at @e[type=marker,tag=MAIN_Barrel_Wall_2] run scoreboard players set @a[distance=..7] MAIN_Barrel_Pos 3

execute as @a[scores={MAIN_Game=0}] run execute store result score @s MAIN_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=1}] only super_server:barrel/hidden/wall
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=2}] only super_server:barrel/hidden/well
advancement grant @a[scores={MAIN_Game=0,MAIN_Barrel_Check=1..,MAIN_Barrel_Pos=3}] only super_server:barrel/hidden/wall_2




advancement revoke @a[tag=!GB_Milestone_Reset] through super_server:milestones/gorbino/gorbino_guy
tag @a add GB_Milestone_Reset


#Give the players menus
execute as @a[scores={MAIN_Game=0,MAIN_Menu=0}] run function super_server:menu/menu0
execute as @a[scores={MAIN_Game=0,MAIN_Menu=1}] run function super_server:menu/menu1