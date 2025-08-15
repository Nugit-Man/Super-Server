scoreboard players set FI_moss FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:moss_carpet",count:64}}] run scoreboard players add FI_moss FI_Item_Cap 1

execute store result score FI_moss FI_Random run random value 1..120
execute if score FI_moss FI_Item_Cap matches 0 in final_island:game if score FI_moss FI_Random matches 1..75 run summon item 69029 16 34 {Item:{id:"minecraft:moss_carpet",count:1b}}
execute if score FI_moss FI_Item_Cap matches 0 in final_island:game if score FI_moss FI_Random matches 11..85 run summon item 69041 19 32 {Item:{id:"minecraft:moss_carpet",count:1b}}
execute if score FI_moss FI_Item_Cap matches 0 in final_island:game if score FI_moss FI_Random matches 21..95 run summon item 69035 20 23 {Item:{id:"minecraft:moss_carpet",count:1b}}
schedule function final_island:spawn_items/spider_caves/moss 28t