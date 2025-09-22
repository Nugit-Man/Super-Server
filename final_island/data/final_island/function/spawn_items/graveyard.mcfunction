scoreboard players set FI_dark_oak_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:48}}] run scoreboard players add FI_dark_oak_log FI_Item_Cap 1
scoreboard players set FI_spruce_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:48}}] run scoreboard players add FI_spruce_log FI_Item_Cap 1


execute store result score FI_dark_oak_log FI_Random run random value 1..4
execute if score FI_dark_oak_log FI_Item_Cap matches 0 in final_island:game if score FI_dark_oak_log FI_Random matches 1 run summon item 58 11 98 {Item:{id:"minecraft:dark_oak_log",count:1b}}
execute if score FI_dark_oak_log FI_Item_Cap matches 0 in final_island:game if score FI_dark_oak_log FI_Random matches 2 run summon item 50 11 105 {Item:{id:"minecraft:dark_oak_log",count:1b}}
execute if score FI_spruce_log FI_Item_Cap matches 0 in final_island:game if score FI_dark_oak_log FI_Random matches 3 run summon item 33 11 115 {Item:{id:"minecraft:spruce_log",count:1b}}
execute if score FI_spruce_log FI_Item_Cap matches 0 in final_island:game if score FI_dark_oak_log FI_Random matches 4 run summon item 29 11 120 {Item:{id:"minecraft:spruce_log",count:1b}}
schedule function final_island:spawn_items/graveyard 8t