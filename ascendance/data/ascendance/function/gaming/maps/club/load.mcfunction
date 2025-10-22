scoreboard objectives add AS_Map_Cube dummy "Map: Cube"
scoreboard players set $ AS_Map_Cube 100
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Cube 101
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Cube 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Cube 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Cube 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/cube/spawn_first 13t