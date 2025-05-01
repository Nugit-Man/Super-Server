scoreboard players set FI_sand FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:sand",count:64}}] run scoreboard players add FI_sand FI_Item_Cap 1

execute store result score FI_sand FI_Random run random value 1..100
execute if score FI_sand FI_Item_Cap matches 0 in final_island:game if score FI_sand FI_Random matches 1..30 run summon item 94 11 -15 {Item:{id:"minecraft:sand",count:1b}}
execute if score FI_sand FI_Item_Cap matches 0 in final_island:game if score FI_sand FI_Random matches 21..50 run summon item 88 12 -21 {Item:{id:"minecraft:sand",count:1b}}
schedule function final_island:spawn_items/sand 14t