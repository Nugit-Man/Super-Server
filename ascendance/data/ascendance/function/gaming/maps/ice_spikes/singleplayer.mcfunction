#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_IceSpikes 1
execute if score $Time_10s AS_Map_IceSpikes matches 10 run scoreboard players add $Time_sec AS_Map_IceSpikes 1
execute if score $Time_10s AS_Map_IceSpikes matches 10 run scoreboard players set $Time_10s AS_Map_IceSpikes 0
execute if score $Time_sec AS_Map_IceSpikes matches 60 run scoreboard players add $Time_min AS_Map_IceSpikes 1
execute if score $Time_sec AS_Map_IceSpikes matches 60 run scoreboard players set $Time_sec AS_Map_IceSpikes 0
execute if score $Time_min AS_Map_IceSpikes matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_IceSpikes matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_IceSpikes += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=1}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=2}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=3}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=4}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=5}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=6}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=7}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=8}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=9}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=10}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=11}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=12}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=13}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=14}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=15}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=16}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=17}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=18}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=19}] run execute at @e[type=marker,tag=AS_Training_IceSpikes_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_IceSpikes","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_IceSpikes","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_IceSpikes=20}] run scoreboard objectives remove AS_Map_IceSpikes