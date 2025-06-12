scoreboard players set FI_raw_iron FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron",count:64}}] run scoreboard players add FI_raw_iron FI_Item_Cap 1

execute store result score FI_raw_iron FI_Random run random value 1..100
execute if score FI_raw_iron FI_Item_Cap matches 0 in final_island:game if score FI_raw_iron FI_Random matches 1..10 run summon item 68998 228 -3 {Item:{id:"minecraft:raw_iron",count:8b}}
execute if score FI_raw_iron FI_Item_Cap matches 0 in final_island:game if score FI_raw_iron FI_Random matches 11..22 run summon item 69006 233 12 {Item:{id:"minecraft:raw_iron",count:6b}}
schedule function final_island:spawn_items/caves/iron 179t