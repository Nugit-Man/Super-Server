scoreboard players set FI_oak_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:48}}] run scoreboard players add FI_oak_log FI_Item_Cap 1
scoreboard players set FI_apple FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:apple",count:8}}] run scoreboard players add FI_apple FI_Item_Cap 1


execute store result score FI_oak_log FI_Random run random value 1..80
execute if score FI_oak_log FI_Item_Cap matches 0 in final_island:game if score FI_oak_log FI_Random matches 1..40 run summon item 32 7 54 {Item:{id:"minecraft:oak_log",count:1b}}
execute if score FI_oak_log FI_Item_Cap matches 0 in final_island:game if score FI_oak_log FI_Random matches 31..70 run summon item 23 7 63 {Item:{id:"minecraft:oak_log",count:1b}}
execute if score FI_apple FI_Item_Cap matches 0 in final_island:game if score FI_oak_log FI_Random matches 1 run summon item 32 7 54 {Item:{id:"minecraft:apple",count:1b}}
execute if score FI_apple FI_Item_Cap matches 0 in final_island:game if score FI_oak_log FI_Random matches 70 run summon item 23 7 63 {Item:{id:"minecraft:apple",count:1b}}
schedule function final_island:spawn_items/oak_planks 24t