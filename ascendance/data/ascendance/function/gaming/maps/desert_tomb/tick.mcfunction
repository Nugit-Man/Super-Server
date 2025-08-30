execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1}] run scoreboard players operation @s AS_Map_DesertTomb += @s AS_Kills
tag @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1,AS_Map_DesertTomb=25..}] add AS_Winner
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run tag @a[scores={MAIN_Game=1},tag=!AS_Winner] add AS_Loser
execute as @a[scores={MAIN_Game=1},tag=AS_Winner] run function ascendance:gaming/end/gameend

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_DesertTomb] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1}]