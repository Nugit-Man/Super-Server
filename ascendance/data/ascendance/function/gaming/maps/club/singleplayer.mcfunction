#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_Club 1
execute if score $Time_10s AS_Map_Club matches 10 run scoreboard players add $Time_sec AS_Map_Club 1
execute if score $Time_10s AS_Map_Club matches 10 run scoreboard players set $Time_10s AS_Map_Club 0
execute if score $Time_sec AS_Map_Club matches 60 run scoreboard players add $Time_min AS_Map_Club 1
execute if score $Time_sec AS_Map_Club matches 60 run scoreboard players set $Time_sec AS_Map_Club 0
execute if score $Time_min AS_Map_Club matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_Club matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_Club += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=1}] run execute at @e[type=marker,tag=AS_Training_Club_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=2}] run execute at @e[type=marker,tag=AS_Training_Club_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=3}] run execute at @e[type=marker,tag=AS_Training_Club_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=4}] run execute at @e[type=marker,tag=AS_Training_Club_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=5}] run execute at @e[type=marker,tag=AS_Training_Club_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=6}] run execute at @e[type=marker,tag=AS_Training_Club_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=7}] run execute at @e[type=marker,tag=AS_Training_Club_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=8}] run execute at @e[type=marker,tag=AS_Training_Club_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=9}] run execute at @e[type=marker,tag=AS_Training_Club_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=10}] run execute at @e[type=marker,tag=AS_Training_Club_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=11}] run execute at @e[type=marker,tag=AS_Training_Club_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=12}] run execute at @e[type=marker,tag=AS_Training_Club_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=13}] run execute at @e[type=marker,tag=AS_Training_Club_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=14}] run execute at @e[type=marker,tag=AS_Training_Club_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=15}] run execute at @e[type=marker,tag=AS_Training_Club_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=16}] run execute at @e[type=marker,tag=AS_Training_Club_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=17}] run execute at @e[type=marker,tag=AS_Training_Club_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=18}] run execute at @e[type=marker,tag=AS_Training_Club_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=19}] run execute at @e[type=marker,tag=AS_Training_Club_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_Club","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_Club","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Club","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Club","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_Club","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Club","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Club","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Club=20}] run scoreboard objectives remove AS_Map_Club