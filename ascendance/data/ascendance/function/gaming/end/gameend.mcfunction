execute if entity @a[scores={MAIN_Game=1,AS_Map=1},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=1}]"},{text:" won the game on Desert Tomb!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=2},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=2}]"},{text:" won the game on Tabletop!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=3},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=3}]"},{text:" won the game on Brutalism!"}]
execute if entity @a[scores={MAIN_Game=1,AS_Map=12},tag=AS_Winner] run tellraw @a[scores={MAIN_Game=1}] [{selector:"@a[tag=AS_Winner,scores={MAIN_Game=1,AS_Map=12}]"},{text:" won the game on Jungle Pikes!"}]

execute if entity @a[scores={MAIN_Game=1,AS_Map=1},tag=AS_Winner] run scoreboard objectives remove AS_Map_DesertTomb
execute if entity @a[scores={MAIN_Game=1,AS_Map=2},tag=AS_Winner] run scoreboard objectives remove AS_Map_Tabletop
execute if entity @a[scores={MAIN_Game=1,AS_Map=3},tag=AS_Winner] run scoreboard objectives remove AS_Map_Brutalism
execute if entity @a[scores={MAIN_Game=1,AS_Map=12},tag=AS_Winner] run scoreboard objectives remove AS_Map_JunglePikes

clear @a[tag=AS_Winner,scores={MAIN_Game=1}]
clear @a[tag=AS_Loser,scores={MAIN_Game=1}]

tag @a[tag=AS_Winner,scores={MAIN_Game=1}] add AS_GoHome
tag @a[tag=AS_Loser,scores={MAIN_Game=1}] add AS_GoHome

tag @a[scores={MAIN_Game=1}] remove AS_Winner
tag @a[scores={MAIN_Game=1}] remove AS_Loser


schedule function ascendance:gaming/end/go_home 3s
