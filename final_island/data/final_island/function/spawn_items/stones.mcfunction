scoreboard players set FI_stone FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:64}}] run scoreboard players add FI_stone FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:andesite",count:64}}] run scoreboard players add FI_stone FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:diorite",count:64}}] run scoreboard players add FI_stone FI_Item_Cap 1
execute as @e[type=item,nbt={Item:{id:"minecraft:granite",count:64}}] run scoreboard players add FI_stone FI_Item_Cap 1

scoreboard players add FI_stone FI_Item_Counter 1
execute if score FI_stone FI_Item_Counter matches 5 run scoreboard players set FI_stone FI_Item_Counter 1
execute if score FI_stone FI_Item_Cap matches 0 in final_island:game if score FI_stone FI_Item_Counter matches 1 run summon item -13 -33 -39 {Item:{id:"minecraft:cobblestone",count:1b}}
execute if score FI_stone FI_Item_Cap matches 0 in final_island:game if score FI_stone FI_Item_Counter matches 2 run summon item -18 -37 -50 {Item:{id:"minecraft:granite",count:1b}}
execute if score FI_stone FI_Item_Cap matches 0 in final_island:game if score FI_stone FI_Item_Counter matches 3 run summon item -32 -38 -45 {Item:{id:"minecraft:andesite",count:1b}}
execute if score FI_stone FI_Item_Cap matches 0 in final_island:game if score FI_stone FI_Item_Counter matches 4 run summon item -22 -41 -37 {Item:{id:"minecraft:diorite",count:1b}}
schedule function final_island:spawn_items/stones 3t