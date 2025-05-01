scoreboard players set FI_jungle_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_log",count:48}}] run scoreboard players add FI_jungle_log FI_Item_Cap 1
scoreboard players set FI_mangrove_log FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:mangrove_log",count:48}}] run scoreboard players add FI_mangrove_log FI_Item_Cap 1


execute store result score FI_jungle_log FI_Random run random value 1..6
execute if score FI_jungle_log FI_Item_Cap matches 0 in final_island:game if score FI_jungle_log FI_Random matches 1..2 run summon item -29 9 57 {Item:{id:"minecraft:jungle_log",count:1b}}
execute if score FI_jungle_log FI_Item_Cap matches 0 in final_island:game if score FI_jungle_log FI_Random matches 2..3 run summon item -33 9 73 {Item:{id:"minecraft:jungle_log",count:1b}}
execute if score FI_mangrove_log FI_Item_Cap matches 0 in final_island:game if score FI_jungle_log FI_Random matches 4..5 run summon item -50 9 77 {Item:{id:"minecraft:mangrove_log",count:1b}}
execute if score FI_mangrove_log FI_Item_Cap matches 0 in final_island:game if score FI_jungle_log FI_Random matches 5..6 run summon item -31 9 90 {Item:{id:"minecraft:mangrove_log",count:1b}}
schedule function final_island:spawn_items/jungle 16t