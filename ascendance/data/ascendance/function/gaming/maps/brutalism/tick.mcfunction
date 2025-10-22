execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run scoreboard players operation @s AS_Map_Brutalism += @s AS_Kills

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_Brutalism] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}]


#Check if singleplayer or multiiplayer
execute if score $ AS_Map_Brutalism matches 100 run function ascendance:gaming/maps/brutalism/multiplayer
execute if score $ AS_Map_Brutalism matches 101 run function ascendance:gaming/maps/brutalism/singleplayer
