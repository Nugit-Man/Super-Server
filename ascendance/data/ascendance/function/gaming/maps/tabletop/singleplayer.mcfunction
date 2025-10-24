#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_Tabletop 1
execute if score $Time_10s AS_Map_Tabletop matches 10 run scoreboard players add $Time_sec AS_Map_Tabletop 1
execute if score $Time_10s AS_Map_Tabletop matches 10 run scoreboard players set $Time_10s AS_Map_Tabletop 0
execute if score $Time_sec AS_Map_Tabletop matches 60 run scoreboard players add $Time_min AS_Map_Tabletop 1
execute if score $Time_sec AS_Map_Tabletop matches 60 run scoreboard players set $Time_sec AS_Map_Tabletop 0
execute if score $Time_min AS_Map_Tabletop matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_Tabletop matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_Tabletop += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=1}] run execute at @e[type=marker,tag=AS_Training_Tabletop_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=2}] run execute at @e[type=marker,tag=AS_Training_Tabletop_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=3}] run execute at @e[type=marker,tag=AS_Training_Tabletop_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=4}] run execute at @e[type=marker,tag=AS_Training_Tabletop_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=5}] run execute at @e[type=marker,tag=AS_Training_Tabletop_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=6}] run execute at @e[type=marker,tag=AS_Training_Tabletop_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=7}] run execute at @e[type=marker,tag=AS_Training_Tabletop_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=8}] run execute at @e[type=marker,tag=AS_Training_Tabletop_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=9}] run execute at @e[type=marker,tag=AS_Training_Tabletop_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=10}] run execute at @e[type=marker,tag=AS_Training_Tabletop_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=11}] run execute at @e[type=marker,tag=AS_Training_Tabletop_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=12}] run execute at @e[type=marker,tag=AS_Training_Tabletop_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=13}] run execute at @e[type=marker,tag=AS_Training_Tabletop_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=14}] run execute at @e[type=marker,tag=AS_Training_Tabletop_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=15}] run execute at @e[type=marker,tag=AS_Training_Tabletop_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=16}] run execute at @e[type=marker,tag=AS_Training_Tabletop_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=17}] run execute at @e[type=marker,tag=AS_Training_Tabletop_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=18}] run execute at @e[type=marker,tag=AS_Training_Tabletop_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=19}] run execute at @e[type=marker,tag=AS_Training_Tabletop_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_Tabletop","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_Tabletop","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Tabletop","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Tabletop","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_Tabletop","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Tabletop","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Tabletop","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Tabletop=20}] run scoreboard objectives remove AS_Map_Tabletop