scoreboard players set FI_melon FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:melon_slice",count:64}}] run scoreboard players add FI_melon FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:pumpkin",count:64}}] run scoreboard players add FI_melon FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",count:64}}] run scoreboard players add FI_melon FI_Item_Cap 1

execute store result score FI_melon FI_Random run random value 1..30
scoreboard players add FI_melon FI_Item_Counter 1
execute if score FI_melon FI_Item_Counter matches 5 run scoreboard players set FI_melon FI_Item_Counter 1
execute if score FI_melon FI_Item_Cap matches 0 in final_island:game if score FI_melon FI_Item_Counter matches 1 if score FI_melon FI_Random matches 1..20 run summon item -85 2 46 {Item:{id:"minecraft:melon_slice",count:1b}}
execute if score FI_melon FI_Item_Cap matches 0 in final_island:game if score FI_melon FI_Item_Counter matches 2 if score FI_melon FI_Random matches 1..20 run summon item -91 2 40 {Item:{id:"minecraft:pumpkin",count:1b}}
execute if score FI_melon FI_Item_Cap matches 0 in final_island:game if score FI_melon FI_Item_Counter matches 4 if score FI_melon FI_Random matches 1..2 run summon item -97 2 49 {Item:{id:"minecraft:beetroot",count:1b}}
schedule function final_island:spawn_items/farm2 16t