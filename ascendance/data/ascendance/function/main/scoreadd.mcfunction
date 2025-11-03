#This function will manage adding the score for players in each and every one of the games

#Add 1 point per kill in deathmatch
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Gamemode=1}] run scoreboard players operation @s AS_Score_Add += @s AS_Kills

#Add 1 point per second of having the crown in kings crown
execute if score $Time_1s MAIN_Time matches 1 run scoreboard players add @a[scores={MAIN_Game=1,AS_Mode=1,AS_Gamemode=2},tag=AS_Crown] AS_Score_Add 1 



#Add 1 point per creeper shot in singleplayer
execute as @a[scores={MAIN_Game=1,AS_Mode=2}] run scoreboard players operation @s AS_Score_Add += @s AS_Singleplayer_Kills



#Add score in multiplayer
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=1}] run scoreboard players operation @s AS_Map_DesertTomb += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=2}] run scoreboard players operation @s AS_Map_Tabletop += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=3}] run scoreboard players operation @s AS_Map_Brutalism += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=4}] run scoreboard players operation @s AS_Map_Colosseum += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=5}] run scoreboard players operation @s AS_Map_Club += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=10}] run scoreboard players operation @s AS_Map_Cube += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=11}] run scoreboard players operation @s AS_Map_IceSpikes += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=12}] run scoreboard players operation @s AS_Map_JunglePikes += @s AS_Score_Add
execute as @a[scores={MAIN_Game=1,AS_Mode=1,AS_Map=13}] run scoreboard players operation @s AS_Map_Bridge += @s AS_Score_Add



#Add score in singleplayer
execute as @a[scores={MAIN_Game=1,AS_Mode=2}] run scoreboard players operation @s AS_Score_Singleplayer += @s AS_Score_Add



#Spawn enemies in singleplayer
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=1}] run execute at @e[type=marker,tag=AS_Training_1,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=2}] run execute at @e[type=marker,tag=AS_Training_2,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=3}] run execute at @e[type=marker,tag=AS_Training_3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=4}] run execute at @e[type=marker,tag=AS_Training_4,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=5}] run execute at @e[type=marker,tag=AS_Training_5,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=6}] run execute at @e[type=marker,tag=AS_Training_6,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=7}] run execute at @e[type=marker,tag=AS_Training_7,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=8}] run execute at @e[type=marker,tag=AS_Training_8,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=9}] run execute at @e[type=marker,tag=AS_Training_9,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=10}] run execute at @e[type=marker,tag=AS_Training_10,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=11}] run execute at @e[type=marker,tag=AS_Training_11,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=12}] run execute at @e[type=marker,tag=AS_Training_12,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=13}] run execute at @e[type=marker,tag=AS_Training_13,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=14}] run execute at @e[type=marker,tag=AS_Training_14,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=15}] run execute at @e[type=marker,tag=AS_Training_15,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=16}] run execute at @e[type=marker,tag=AS_Training_16,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=17}] run execute at @e[type=marker,tag=AS_Training_17,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=18}] run execute at @e[type=marker,tag=AS_Training_18,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute at @a[scores={MAIN_Game=1,AS_Mode=2,AS_Score_Add=1,AS_Score_Singleplayer=19}] run execute at @e[type=marker,tag=AS_Training_19,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}





scoreboard players set @a[scores={MAIN_Game=1,AS_Mode=1..}] AS_Score_Add 0