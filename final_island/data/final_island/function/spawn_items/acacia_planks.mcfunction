scoreboard players set FI_acacia_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_log",count:48}}] run scoreboard players add FI_acacia_log FI_Item_Cap 1

execute store result score FI_acacia_log FI_Random run random value 1..100
execute if score FI_acacia_log FI_Item_Cap matches 0 in final_island:game if score FI_acacia_log FI_Random matches 1..40 run summon item 60 14 70 {Item:{id:"minecraft:acacia_log",count:1b}}
execute if score FI_acacia_log FI_Item_Cap matches 0 in final_island:game if score FI_acacia_log FI_Random matches 31..70 run summon item 69 14 70 {Item:{id:"minecraft:acacia_log",count:1b}}
schedule function final_island:spawn_items/acacia_planks 28t