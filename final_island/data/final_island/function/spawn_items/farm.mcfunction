scoreboard players set FI_wheat FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat",count:64}}] run scoreboard players add FI_wheat FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",count:64}}] run scoreboard players add FI_wheat FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",count:64}}] run scoreboard players add FI_wheat FI_Item_Cap 1

execute store result score FI_wheat FI_Random run random value 1..3
scoreboard players add FI_wheat FI_Item_Counter 1
execute if score FI_wheat FI_Item_Counter matches 5 run scoreboard players set FI_wheat FI_Item_Counter 1
execute if score FI_wheat FI_Item_Cap matches 0 in final_island:game if score FI_wheat FI_Item_Counter matches 1 if score FI_wheat FI_Random matches 1..2 run summon item -58 6 42 {Item:{id:"minecraft:wheat",count:1b}}
execute if score FI_wheat FI_Item_Cap matches 0 in final_island:game if score FI_wheat FI_Item_Counter matches 2 if score FI_wheat FI_Random matches 1..2 run summon item -70 7 44 {Item:{id:"minecraft:carrot",count:1b}}
execute if score FI_wheat FI_Item_Cap matches 0 in final_island:game if score FI_wheat FI_Item_Counter matches 3 if score FI_wheat FI_Random matches 1..2 run summon item -54 6 47 {Item:{id:"minecraft:wheat",count:1b}}
execute if score FI_wheat FI_Item_Cap matches 0 in final_island:game if score FI_wheat FI_Item_Counter matches 4 if score FI_wheat FI_Random matches 1..2 run summon item -63 5 33 {Item:{id:"minecraft:potato",count:1b}}
schedule function final_island:spawn_items/farm 6t