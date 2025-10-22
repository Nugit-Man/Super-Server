scoreboard objectives add AS_Map_Brutalism dummy "Map: Brutalism"
scoreboard players set $ AS_Map_Brutalism 100
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Brutalism 101
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Brutalism 0
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Brutalism 0
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Brutalism 0
execute as @a[scores={MAIN_Game=1,AS_Map=3,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/brutalism/spawn_first 13t