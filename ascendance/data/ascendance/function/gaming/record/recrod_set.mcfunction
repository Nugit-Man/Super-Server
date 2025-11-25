execute as @s run summon text_display ~ ~ ~ {text:{selector:"@s"},Tags:[AS_Record_Set]}


execute as @s[scores={AS_Map=1}] run data modify storage ascendance:records desert_tomb set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=2}] run data modify storage ascendance:records tabletop set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=3}] run data modify storage ascendance:records brutalism set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=4}] run data modify storage ascendance:records colosseum set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=5}] run data modify storage ascendance:records club set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=10}] run data modify storage ascendance:records cube set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=11}] run data modify storage ascendance:records ice_spikes set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=12}] run data modify storage ascendance:records jungle_pikes set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text
execute as @s[scores={AS_Map=13}] run data modify storage ascendance:records bridge set from entity @e[limit=1,type=text_display,tag=AS_Record_Set] text.text

execute as @s[scores={AS_Map=1}] run scoreboard players operation $DT_Min AS_Records = $Time_min AS_Map_DesertTomb
execute as @s[scores={AS_Map=1}] run scoreboard players operation $DT_Min AS_Records = $Time_min AS_Map_DesertTomb
execute as @s[scores={AS_Map=1}] run scoreboard players operation $DT_Min AS_Records = $Time_min AS_Map_DesertTomb

execute as @s[scores={AS_Map=2}] run scoreboard players operation $TT_Min AS_Records = $Time_min AS_Map_Tabletop
execute as @s[scores={AS_Map=2}] run scoreboard players operation $TT_Min AS_Records = $Time_min AS_Map_Tabletop
execute as @s[scores={AS_Map=2}] run scoreboard players operation $TT_Min AS_Records = $Time_min AS_Map_Tabletop

execute as @s[scores={AS_Map=3}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Brutalism
execute as @s[scores={AS_Map=3}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Brutalism
execute as @s[scores={AS_Map=3}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Brutalism

execute as @s[scores={AS_Map=4}] run scoreboard players operation $CO_Min AS_Records = $Time_min AS_Map_Colosseum
execute as @s[scores={AS_Map=4}] run scoreboard players operation $CO_Min AS_Records = $Time_min AS_Map_Colosseum
execute as @s[scores={AS_Map=4}] run scoreboard players operation $CO_Min AS_Records = $Time_min AS_Map_Colosseum

execute as @s[scores={AS_Map=5}] run scoreboard players operation $CL_Min AS_Records = $Time_min AS_Map_Club
execute as @s[scores={AS_Map=5}] run scoreboard players operation $CL_Min AS_Records = $Time_min AS_Map_Club
execute as @s[scores={AS_Map=5}] run scoreboard players operation $CL_Min AS_Records = $Time_min AS_Map_Club

execute as @s[scores={AS_Map=10}] run scoreboard players operation $CU_Min AS_Records = $Time_min AS_Map_Cube
execute as @s[scores={AS_Map=10}] run scoreboard players operation $CU_Min AS_Records = $Time_min AS_Map_Cube
execute as @s[scores={AS_Map=10}] run scoreboard players operation $CU_Min AS_Records = $Time_min AS_Map_Cube

execute as @s[scores={AS_Map=11}] run scoreboard players operation $IS_Min AS_Records = $Time_min AS_Map_IceSpikes
execute as @s[scores={AS_Map=11}] run scoreboard players operation $IS_Min AS_Records = $Time_min AS_Map_IceSpikes
execute as @s[scores={AS_Map=11}] run scoreboard players operation $IS_Min AS_Records = $Time_min AS_Map_IceSpikes

execute as @s[scores={AS_Map=12}] run scoreboard players operation $JP_Min AS_Records = $Time_min AS_Map_JunglePikes
execute as @s[scores={AS_Map=12}] run scoreboard players operation $JP_Min AS_Records = $Time_min AS_Map_JunglePikes
execute as @s[scores={AS_Map=12}] run scoreboard players operation $JP_Min AS_Records = $Time_min AS_Map_JunglePikes

execute as @s[scores={AS_Map=13}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Bridge
execute as @s[scores={AS_Map=13}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Bridge
execute as @s[scores={AS_Map=13}] run scoreboard players operation $BR_Min AS_Records = $Time_min AS_Map_Bridge


kill @e[type=text_display,tag=AS_Record_Set]
tag @s remove AS_Record