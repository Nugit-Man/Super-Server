scoreboard objectives add AS_Map_Tabletop dummy "Map: Tabletop"
scoreboard players set $ AS_Map_Tabletop 100
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=1}] run scoreboard players set $Par AS_Map_Tabletop 25
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=2}] run scoreboard players set $Par AS_Map_Tabletop 100
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=100}] run scoreboard players set $ AS_Map_Tabletop 101
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_Tabletop 0
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_Tabletop 0
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_Tabletop 0
execute as @a[scores={MAIN_Game=1,AS_Map=2,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/tabletop/spawn_first 13t