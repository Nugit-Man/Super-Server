execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=1}] run function ascendance:gaming/maps/desert_tomb/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] run function ascendance:gaming/maps/tabletop/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] run function ascendance:gaming/maps/brutalism/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=4}] run function ascendance:gaming/maps/colosseum/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=5}] run function ascendance:gaming/maps/club/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=10}] run function ascendance:gaming/maps/cube/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=11}] run function ascendance:gaming/maps/ice_spikes/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] run function ascendance:gaming/maps/jungle_pikes/load
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=13}] run function ascendance:gaming/maps/bridge/load

execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Gamemode=2}] run schedule function ascendance:gaming/spawn_first 10t
execute as @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Gamemode=2}] run schedule function ascendance:gaming/remove_creeprs 9t