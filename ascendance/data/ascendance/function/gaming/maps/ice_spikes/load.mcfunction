scoreboard objectives add AS_Map_IceSpikes dummy "Map: IceSpikes"
scoreboard players set $ AS_Map_IceSpikes 100
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Gamemode=100}] run scoreboard players set $ AS_Map_IceSpikes 101
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Gamemode=100}] run scoreboard players set $Time_10s AS_Map_IceSpikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Gamemode=100}] run scoreboard players set $Time_sec AS_Map_IceSpikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Gamemode=100}] run scoreboard players set $Time_min AS_Map_IceSpikes 0
execute as @a[scores={MAIN_Game=1,AS_Map=11,AS_Gamemode=100}] run schedule function ascendance:gaming/maps/ice_spikes/spawn_first 13t