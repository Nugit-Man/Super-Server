#Manage timer
execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s AS_Map_Brutalism 1
execute if score $Time_10s AS_Map_Brutalism matches 10 run scoreboard players add $Time_sec AS_Map_Brutalism 1
execute if score $Time_10s AS_Map_Brutalism matches 10 run scoreboard players set $Time_10s AS_Map_Brutalism 0
execute if score $Time_sec AS_Map_Brutalism matches 60 run scoreboard players add $Time_min AS_Map_Brutalism 1
execute if score $Time_sec AS_Map_Brutalism matches 60 run scoreboard players set $Time_sec AS_Map_Brutalism 0
execute if score $Time_min AS_Map_Brutalism matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100}] add AS_GoHome
execute if score $Time_min AS_Map_Brutalism matches 10 run function ascendance:gaming/end/go_home

#increase score
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100}] run scoreboard players operation @s AS_Map_Brutalism += @s AS_Singleplayer_Kills
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=1}] run execute at @e[type=marker,tag=AS_Training_Bidge_2] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=2}] run execute at @e[type=marker,tag=AS_Training_Bidge_3] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=3}] run execute at @e[type=marker,tag=AS_Training_Bidge_4] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=4}] run execute at @e[type=marker,tag=AS_Training_Bidge_5] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=5}] run execute at @e[type=marker,tag=AS_Training_Bidge_6] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=6}] run execute at @e[type=marker,tag=AS_Training_Bidge_7] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=7}] run execute at @e[type=marker,tag=AS_Training_Bidge_8] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=8}] run execute at @e[type=marker,tag=AS_Training_Bidge_9] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=9}] run execute at @e[type=marker,tag=AS_Training_Bidge_10] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=10}] run execute at @e[type=marker,tag=AS_Training_Bidge_11] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=11}] run execute at @e[type=marker,tag=AS_Training_Bidge_12] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=12}] run execute at @e[type=marker,tag=AS_Training_Bidge_13] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=13}] run execute at @e[type=marker,tag=AS_Training_Bidge_14] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=14}] run execute at @e[type=marker,tag=AS_Training_Bidge_15] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=15}] run execute at @e[type=marker,tag=AS_Training_Bidge_16] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=16}] run execute at @e[type=marker,tag=AS_Training_Bidge_17] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=17}] run execute at @e[type=marker,tag=AS_Training_Bidge_18] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=18}] run execute at @e[type=marker,tag=AS_Training_Bidge_19] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=19}] run execute at @e[type=marker,tag=AS_Training_Bidge_20] run summon creeper ~ ~ ~ {NoAI:true,Health:1,Glowing:true}



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_Brutalism","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"AS_Map_Brutalism","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Brutalism","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Brutalism","name":"$Time_10s"}}]

#Winner
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"AS_Map_Brutalism","name":"$Time_min"}},{text:":"},{score:{"objective":"AS_Map_Brutalism","name":"$Time_sec"}},{text:"."},{score:{"objective":"AS_Map_Brutalism","name":"$Time_10s"}}]
tag @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=20}] add AS_GoHome
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=20}] run function ascendance:gaming/end/go_home
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1,AS_Gamemode=100,AS_Singleplayer_Kills=1,AS_Map_Brutalism=20}] run scoreboard objectives remove AS_Map_Brutalism