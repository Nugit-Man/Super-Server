scoreboard players set FI_sugar_cane FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar_cane",count:64}}] run scoreboard players add FI_sugar_cane FI_Item_Cap 1

execute store result score FI_sugar_cane FI_Random run random value 1..5
execute if score FI_sugar_cane FI_Item_Cap matches 0 in final_island:game if score FI_sugar_cane FI_Random matches 1 run summon item 108 11.5 -29 {Item:{id:"minecraft:sugar_cane",count:3b}}
execute if score FI_sugar_cane FI_Item_Cap matches 0 in final_island:game if score FI_sugar_cane FI_Random matches 2..3 run summon item 108 11.5 -29 {Item:{id:"minecraft:sugar_cane",count:2b}}
execute if score FI_sugar_cane FI_Item_Cap matches 0 in final_island:game if score FI_sugar_cane FI_Random matches 4..5 run summon item 108 11.5 -29 {Item:{id:"minecraft:sugar_cane",count:1b}}
schedule function final_island:spawn_items/sugar_cane 36t