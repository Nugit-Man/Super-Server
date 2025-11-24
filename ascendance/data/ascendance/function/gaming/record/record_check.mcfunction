execute as @s[scores={MAIN_Game=1,AS_Map=1}] if score $Time_min AS_Map_DesertTomb < $DT_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=1}] if score $Time_min AS_Map_DesertTomb = $DT_Min AS_Records if score $Time_sec AS_Map_DesertTomb < $DT_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=1}] if score $Time_min AS_Map_DesertTomb = $DT_Min AS_Records if score $Time_sec AS_Map_DesertTomb = $DT_Sec AS_Records if score $Time_10s AS_Map_DesertTomb < $DT_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=2}] if score $Time_min AS_Map_Tabletop < $TT_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=2}] if score $Time_min AS_Map_Tabletop = $TT_Min AS_Records if score $Time_sec AS_Map_Tabletop < $TT_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=2}] if score $Time_min AS_Map_Tabletop = $TT_Min AS_Records if score $Time_sec AS_Map_Tabletop = $TT_Sec AS_Records if score $Time_10s AS_Map_Tabletop < $TT_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=3}] if score $Time_min AS_Map_Brutalism < $BR_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=3}] if score $Time_min AS_Map_Brutalism = $BR_Min AS_Records if score $Time_sec AS_Map_Brutalism < $BR_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=3}] if score $Time_min AS_Map_Brutalism = $BR_Min AS_Records if score $Time_sec AS_Map_Brutalism = $BR_Sec AS_Records if score $Time_10s AS_Map_Brutalism < $BR_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=4}] if score $Time_min AS_Map_Colosseum < $CO_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=4}] if score $Time_min AS_Map_Colosseum = $CO_Min AS_Records if score $Time_sec AS_Map_Colosseum < $CO_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=4}] if score $Time_min AS_Map_Colosseum = $CO_Min AS_Records if score $Time_sec AS_Map_Colosseum = $CO_Sec AS_Records if score $Time_10s AS_Map_Colosseum < $CO_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=5}] if score $Time_min AS_Map_Club < $CL_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=5}] if score $Time_min AS_Map_Club = $CL_Min AS_Records if score $Time_sec AS_Map_Club < $CL_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=5}] if score $Time_min AS_Map_Club = $CL_Min AS_Records if score $Time_sec AS_Map_Club = $CL_Sec AS_Records if score $Time_10s AS_Map_Club < $CL_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=10}] if score $Time_min AS_Map_Cube < $CU_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=10}] if score $Time_min AS_Map_Cube = $CU_Min AS_Records if score $Time_sec AS_Map_Cube < $CU_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=10}] if score $Time_min AS_Map_Cube = $CU_Min AS_Records if score $Time_sec AS_Map_Cube = $CU_Sec AS_Records if score $Time_10s AS_Map_Cube < $CU_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=11}] if score $Time_min AS_Map_IceSpikes < $IS_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=11}] if score $Time_min AS_Map_IceSpikes = $IS_Min AS_Records if score $Time_sec AS_Map_IceSpikes < $IS_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=11}] if score $Time_min AS_Map_IceSpikes = $IS_Min AS_Records if score $Time_sec AS_Map_IceSpikes = $IS_Sec AS_Records if score $Time_10s AS_Map_IceSpikes < $IS_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=12}] if score $Time_min AS_Map_JunglePikes < $JP_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=12}] if score $Time_min AS_Map_JunglePikes = $JP_Min AS_Records if score $Time_sec AS_Map_JunglePikes < $JP_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=12}] if score $Time_min AS_Map_JunglePikes = $JP_Min AS_Records if score $Time_sec AS_Map_JunglePikes = $JP_Sec AS_Records if score $Time_10s AS_Map_JunglePikes < $JP_10s AS_Records run tag @s add AS_Record

execute as @s[scores={MAIN_Game=1,AS_Map=13}] if score $Time_min AS_Map_Bridge < $BR_Min AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=13}] if score $Time_min AS_Map_Bridge = $BR_Min AS_Records if score $Time_sec AS_Map_Bridge < $BR_Sec AS_Records run tag @s add AS_Record
execute as @s[scores={MAIN_Game=1,AS_Map=13}] if score $Time_min AS_Map_Bridge = $BR_Min AS_Records if score $Time_sec AS_Map_Bridge = $BR_Sec AS_Records if score $Time_10s AS_Map_Bridge < $BR_10s AS_Records run tag @s add AS_Record


execute as @s[tag=AS_Record] run function ascendance:gaming/record/recrod_set