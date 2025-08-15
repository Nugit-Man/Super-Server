scoreboard players set FI_dripstone FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:pointed_dripstone",count:64}}] run scoreboard players add FI_dripstone FI_Item_Cap 1

execute store result score FI_dripstone FI_Random run random value 1..150
execute if score FI_dripstone FI_Item_Cap matches 0 in final_island:game if score FI_dripstone FI_Random matches 1..75 run summon item 68981 15 -1 {Item:{id:"minecraft:pointed_dripstone",count:1b}}
execute if score FI_dripstone FI_Item_Cap matches 0 in final_island:game if score FI_dripstone FI_Random matches 11..85 run summon item 68966 16 -1 {Item:{id:"minecraft:pointed_dripstone",count:1b}}
execute if score FI_dripstone FI_Item_Cap matches 0 in final_island:game if score FI_dripstone FI_Random matches 21..95 run summon item 68986 15 -12 {Item:{id:"minecraft:pointed_dripstone",count:1b}}
schedule function final_island:spawn_items/spider_caves/dripstone 68t