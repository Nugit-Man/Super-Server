execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}] run scoreboard players operation @s AS_Map_Brutalism += @s AS_Kills

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_Brutalism] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=3,AS_Mode=1}]


#Kill if go on glass
execute as @a[scores={AS_Map=3,MAIN_Game=1}] at @s run execute if block ~ ~-1 ~ minecraft:gray_stained_glass run kill @s


#Check if singleplayer or multiiplayer
execute if score $ AS_Map_Brutalism matches 100 run function ascendance:gaming/maps/brutalism/multiplayer
execute if score $ AS_Map_Brutalism matches 101 run function ascendance:gaming/maps/brutalism/singleplayer
