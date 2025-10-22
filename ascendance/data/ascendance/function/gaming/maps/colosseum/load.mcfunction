scoreboard objectives add AS_Map_Colosseum dummy "Map: Colosseum"
scoreboard players set $ AS_Map_Colosseum 100
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Colosseum 101
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Colosseum 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Colosseum 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Colosseum 0
execute as @a[scores={MAIN_Game=1,AS_Map=5,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/colosseum/spawn_first 13t