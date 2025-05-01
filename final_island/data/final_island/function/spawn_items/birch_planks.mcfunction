scoreboard players set FI_birch_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_log",count:48}}] run scoreboard players add FI_birch_log FI_Item_Cap 1

execute if score FI_birch_log FI_Item_Cap matches 0 in final_island:game run summon item 68 11 18 {Item:{id:"minecraft:birch_log",count:1b}}
execute if score FI_birch_log FI_Item_Cap matches 0 in final_island:game run summon item 71 11 30 {Item:{id:"minecraft:birch_log",count:1b}}
schedule function final_island:spawn_items/birch_planks 32t