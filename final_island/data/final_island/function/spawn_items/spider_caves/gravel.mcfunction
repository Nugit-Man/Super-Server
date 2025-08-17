scoreboard players set FI_gravel FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:gravel",count:64}}] run scoreboard players add FI_gravel FI_Item_Cap 1

execute store result score FI_gravel FI_Random run random value 1..5
execute if score FI_gravel FI_Item_Cap matches 0 in final_island:game if score FI_gravel FI_Random matches 1 run summon item 68994 16 32 {Item:{id:"minecraft:gravel",count:1b}}
execute if score FI_gravel FI_Item_Cap matches 0 in final_island:game if score FI_gravel FI_Random matches 2 run summon item 69012 16 6 {Item:{id:"minecraft:gravel",count:1b}}
execute if score FI_gravel FI_Item_Cap matches 0 in final_island:game if score FI_gravel FI_Random matches 3 run summon item 69000 16 1 {Item:{id:"minecraft:gravel",count:1b}}
schedule function final_island:spawn_items/spider_caves/gravel 8t