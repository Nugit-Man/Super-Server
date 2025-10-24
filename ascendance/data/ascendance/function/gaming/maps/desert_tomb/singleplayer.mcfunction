#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_DesertTomb 1
execute if score $Time_10s AS_Map_DesertTomb matches 10 run scoreboard players add $Time_sec AS_Map_DesertTomb 1
execute if score $Time_10s AS_Map_DesertTomb matches 10 run scoreboard players set $Time_10s AS_Map_DesertTomb 0
execute if score $Time_sec AS_Map_DesertTomb matches 60 run scoreboard players add $Time_min AS_Map_DesertTomb 1
execute if score $Time_sec AS_Map_DesertTomb matches 60 run scoreboard players set $Time_sec AS_Map_DesertTomb 0
execute if score $Time_min AS_Map_DesertTomb matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_DesertTomb matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_DesertTomb += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=1}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=2}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=3}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=4}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=5}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=6}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=7}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=8}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=9}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=10}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=11}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=12}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=13}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=14}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=15}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=16}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=17}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=18}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=19}] run execute at @e[type=marker,tag=AS_Training_DesertTomb_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_DesertTomb","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_DesertTomb","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_DesertTomb=20}] run scoreboard objectives remove AS_Map_DesertTomb