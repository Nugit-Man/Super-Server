execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] run scoreboard players operation @s AS_Map_JunglePikes += @s AS_Kills
tag @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1,AS_Map_JunglePikes=25..}] add AS_Winner
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run tag @a[scores={MAIN_Game=1,AS_Map=12},tag=!AS_Winner] add AS_Loser
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run function ascendance:gaming/end/gameend

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_JunglePikes] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}]



#Get Spread and Winning
scoreboard players operation $ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] AS_Map_JunglePikes
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] run scoreboard players operation @s AS_Spread = @s AS_Map_JunglePikes
scoreboard players operation @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] AS_Spread -= $ AS_Spread
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] run execute if score @s AS_Spread matches 0 run tag @s add AS_Winning
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] run execute unless score @s AS_Spread matches 0 run tag @s remove AS_Winning
scoreboard players operation $$ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1},tag=!AS_Winning] AS_Map_JunglePikes
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread = @s AS_Map_JunglePikes
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread -= $$ AS_Spread



#actionbar
execute as @a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Map_JunglePikes","name":"@s"}},{text:"/25, Spread: "},{score:{"objective":"AS_Spread","name":"@s"}},{text:", Winning: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=12,AS_Mode=1},tag=AS_Winning]"}]