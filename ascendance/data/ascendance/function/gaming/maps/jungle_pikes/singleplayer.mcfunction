#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_JunglePikes 1
execute if score $Time_10s AS_Map_JunglePikes matches 10 run scoreboard players add $Time_sec AS_Map_JunglePikes 1
execute if score $Time_10s AS_Map_JunglePikes matches 10 run scoreboard players set $Time_10s AS_Map_JunglePikes 0
execute if score $Time_sec AS_Map_JunglePikes matches 60 run scoreboard players add $Time_min AS_Map_JunglePikes 1
execute if score $Time_sec AS_Map_JunglePikes matches 60 run scoreboard players set $Time_sec AS_Map_JunglePikes 0
execute if score $Time_min AS_Map_JunglePikes matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_JunglePikes matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_JunglePikes += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=1}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=2}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=3}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=4}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=5}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=6}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=7}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=8}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=9}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=10}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=11}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=12}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=13}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=14}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=15}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=16}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=17}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=18}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=19}] run execute at @e[type=marker,tag=AS_Training_JunglePikes_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_JunglePikes","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_JunglePikes","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_JunglePikes=20}] run scoreboard objectives remove AS_Map_JunglePikes