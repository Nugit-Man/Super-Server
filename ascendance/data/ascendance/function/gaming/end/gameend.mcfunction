execute if entity @a[scores={MAIN_Game=1,AS_Map=1},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=1}]"},{text:" won the game on Desert Tomb!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=2},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=2}]"},{text:" won the game on Tabletop!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=3},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=3}]"},{text:" won the game on Brutalism!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=4},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=4}]"},{text:" won the game in the Colosseum!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=5},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=5}]"},{text:" won the game on Death Cub!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=10},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=10}]"},{text:" won the game on The Cube!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=11},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=11}]"},{text:" won the game on Ice Spikes!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=12},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=12}]"},{text:" won the game on Jungle Pikes!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=13},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=13}]"},{text:" won the game on the Bridge!"}]

execute if entity @a[scores={MAIN_Game=1,AS_Map=1},tag=AS_Winner] run scoreboard objectives remove AS_Map_DesertTomb
execute if entity @a[scores={MAIN_Game=1,AS_Map=2},tag=AS_Winner] run scoreboard objectives remove AS_Map_Tabletop
execute if entity @a[scores={MAIN_Game=1,AS_Map=3},tag=AS_Winner] run scoreboard objectives remove AS_Map_Brutalism
execute if entity @a[scores={MAIN_Game=1,AS_Map=4},tag=AS_Winner] run scoreboard objectives remove AS_Map_Colosseum
execute if entity @a[scores={MAIN_Game=1,AS_Map=5},tag=AS_Winner] run scoreboard objectives remove AS_Map_Club
execute if entity @a[scores={MAIN_Game=1,AS_Map=10},tag=AS_Winner] run scoreboard objectives remove AS_Map_Cube
execute if entity @a[scores={MAIN_Game=1,AS_Map=11},tag=AS_Winner] run scoreboard objectives remove AS_Map_IceSpikes
execute if entity @a[scores={MAIN_Game=1,AS_Map=12},tag=AS_Winner] run scoreboard objectives remove AS_Map_JunglePikes
execute if entity @a[scores={MAIN_Game=1,AS_Map=13},tag=AS_Winner] run scoreboard objectives remove AS_Map_Bridge



clear @a[tag=AS_Winner,scores={MAIN_Game=1}]
clear @a[tag=AS_Loser,scores={MAIN_Game=1}]

tag @a[tag=AS_Winner,scores={MAIN_Game=1}] add AS_GoHome
tag @a[tag=AS_Loser,scores={MAIN_Game=1}] add AS_GoHome

scoreboard players add @a[tag=AS_GoHome,tag=AS_Winner] AS_Milestone_Wins 1
scoreboard players add @a[tag=AS_GoHome,tag=AS_Winner] AS_Winstreak 1
scoreboard players set @a[tag=AS_GoHome,tag=AS_Loser] AS_Winstreak 0
advancement grant @a[scores={MAIN_Game=1,AS_Winstreak=3},tag=AS_GoHome] only ascendance:ascendance/chicken_dinner

scoreboard players set $Player_Count AS_Records 0
execute as @a[tag=AS_Loser] run scoreboard players add $Player_Count AS_Records 1
execute if score $Player_Count AS_Records matches 4.. run advancement grant @a[scores={MAIN_Game=1},tag=AS_Winner] only ascendance:ascendance/royale

tag @a[scores={MAIN_Game=1}] remove AS_Winner
tag @a[scores={MAIN_Game=1}] remove AS_Loser


schedule function ascendance:gaming/end/go_home 3s
