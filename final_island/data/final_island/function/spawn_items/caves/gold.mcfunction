scoreboard players set FI_raw_gold FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold",count:64}}] run scoreboard players add FI_raw_gold FI_Item_Cap 1

execute store result score FI_raw_gold FI_Random run random value 1..100
execute if score FI_raw_gold FI_Item_Cap matches 0 in final_island:game if score FI_raw_gold FI_Random matches 1..45 run summon item 68996 243 58 {Item:{id:"minecraft:raw_gold",count:1b}}
execute if score FI_raw_gold FI_Item_Cap matches 0 in final_island:game if score FI_raw_gold FI_Random matches 36..80 run summon item 68998 243 41 {Item:{id:"minecraft:raw_gold",count:1b}}
schedule function final_island:spawn_items/caves/gold 99t