#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_Colosseum 1
execute if score $Time_10s AS_Map_Colosseum matches 10 run scoreboard players add $Time_sec AS_Map_Colosseum 1
execute if score $Time_10s AS_Map_Colosseum matches 10 run scoreboard players set $Time_10s AS_Map_Colosseum 0
execute if score $Time_sec AS_Map_Colosseum matches 60 run scoreboard players add $Time_min AS_Map_Colosseum 1
execute if score $Time_sec AS_Map_Colosseum matches 60 run scoreboard players set $Time_sec AS_Map_Colosseum 0
execute if score $Time_min AS_Map_Colosseum matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_Colosseum matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_Colosseum += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=1}] run execute at @e[type=marker,tag=AS_Training_Colosseum_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=2}] run execute at @e[type=marker,tag=AS_Training_Colosseum_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=3}] run execute at @e[type=marker,tag=AS_Training_Colosseum_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=4}] run execute at @e[type=marker,tag=AS_Training_Colosseum_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=5}] run execute at @e[type=marker,tag=AS_Training_Colosseum_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=6}] run execute at @e[type=marker,tag=AS_Training_Colosseum_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=7}] run execute at @e[type=marker,tag=AS_Training_Colosseum_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=8}] run execute at @e[type=marker,tag=AS_Training_Colosseum_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=9}] run execute at @e[type=marker,tag=AS_Training_Colosseum_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=10}] run execute at @e[type=marker,tag=AS_Training_Colosseum_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=11}] run execute at @e[type=marker,tag=AS_Training_Colosseum_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=12}] run execute at @e[type=marker,tag=AS_Training_Colosseum_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=13}] run execute at @e[type=marker,tag=AS_Training_Colosseum_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=14}] run execute at @e[type=marker,tag=AS_Training_Colosseum_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=15}] run execute at @e[type=marker,tag=AS_Training_Colosseum_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=16}] run execute at @e[type=marker,tag=AS_Training_Colosseum_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=17}] run execute at @e[type=marker,tag=AS_Training_Colosseum_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=18}] run execute at @e[type=marker,tag=AS_Training_Colosseum_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=19}] run execute at @e[type=marker,tag=AS_Training_Colosseum_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_Colosseum","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_Colosseum","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Colosseum","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Colosseum","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_Colosseum","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Colosseum","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Colosseum","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=4,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Colosseum=20}] run scoreboard objectives remove AS_Map_Colosseum