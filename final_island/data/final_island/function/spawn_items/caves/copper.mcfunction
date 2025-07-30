scoreboard players set FI_raw_copper FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper",count:64}}] run scoreboard players add FI_raw_copper FI_Item_Cap 1

execute store result score FI_raw_copper FI_Random run random value 1..100
execute if score FI_raw_copper FI_Item_Cap matches 0 in final_island:game if score FI_raw_copper FI_Random matches 1..35 run summon item 68978 262 48 {Item:{id:"minecraft:raw_copper",count:4b}}
execute if score FI_raw_copper FI_Item_Cap matches 0 in final_island:game if score FI_raw_copper FI_Random matches 36..65 run summon item 68986 247 10 {Item:{id:"minecraft:raw_copper",count:5b}}
execute if score FI_raw_copper FI_Item_Cap matches 0 in final_island:game if score FI_raw_copper FI_Random matches 65..100 run summon item 69011 253 26 {Item:{id:"minecraft:raw_copper",count:4b}}
schedule function final_island:spawn_items/caves/copper 162t