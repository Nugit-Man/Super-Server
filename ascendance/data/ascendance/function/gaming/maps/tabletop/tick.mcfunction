execute as @a[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1}] run scoreboard players operation @s AS_Map_Tabletop += @s AS_Kills

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_Tabletop] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=1,AS_Mode=1}]


#Check if singleplayer or multiiplayer
execute if score $ AS_Map_Tabletop matches 100 run function ascendance:gaming/maps/tabletop/multiplayer
execute if score $ AS_Map_Tabletop matches 101 run function ascendance:gaming/maps/tabletop/singleplayer
