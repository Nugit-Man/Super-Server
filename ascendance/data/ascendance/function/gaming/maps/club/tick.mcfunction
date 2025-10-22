execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1}] run scoreboard players operation @s AS_Map_Club += @s AS_Kills

#Spawn points
execute at @e[type=marker,limit=1,sort=random,tag=AS_Spawn_Club] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=5,AS_Mode=1}]


#Check if singleplayer or multiiplayer
execute if score $ AS_Map_Club matches 100 run function ascendance:gaming/maps/club/multiplayer
execute if score $ AS_Map_Club matches 101 run function ascendance:gaming/maps/club/singleplayer
