#Winner
tag @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1,AS_Map_IceSpikes=25..}] add AS_Winner
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run tag @a[scores={MAIN_Game=1,AS_Map=11},tag=!AS_Winner] add AS_Loser
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run function ascendance:gaming/end/gameend

#reset the $'s
scoreboard players set $ AS_Spread 0
scoreboard players set $$ AS_Spread 0
scoreboard players set $$$ AS_Spread 0

#Get Spread and Winning
scoreboard players operation $ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] AS_Map_IceSpikes
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run scoreboard players operation @s AS_Spread = @s AS_Map_IceSpikes
scoreboard players operation @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] AS_Spread -= $ AS_Spread
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run execute if score @s AS_Spread matches 0 run tag @s add AS_Winning
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run execute unless score @s AS_Spread matches 0 run tag @s remove AS_Winning
scoreboard players operation $$ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1},tag=!AS_Winning] AS_Map_IceSpikes
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread = @s AS_Map_IceSpikes
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread -= $$ AS_Spread

#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_IceSpikes","name":"@s"}},{text:"/25, Spread: "},{score:{"objective":"AS_Spread","name":"@s"}},{text:", Winning: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1},tag=AS_Winning]"}]

#Check if game ends due to there ony being one player
scoreboard players set $$$ AS_Spread 0
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run scoreboard players add $$$ AS_Spread 1
execute if score $$$ AS_Spread matches 0..1 run tellraw @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] {text:"Game was canceled because there was only one player",italic:false}
execute if score $$$ AS_Spread matches 0..1 run scoreboard objectives remove AS_Map_IceSpikes
execute if score $$$ AS_Spread matches 0..1 run tag @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] add AS_GoHome
execute if score $$$ AS_Spread matches 0..1 run function ascendance:gaming/end/go_home

#Creeper Cleanup
execute at @a[scores={MAIN_Game=1,AS_Map=11,AS_Mode=1}] run kill @e[type=creeper,distance=..250]