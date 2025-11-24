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