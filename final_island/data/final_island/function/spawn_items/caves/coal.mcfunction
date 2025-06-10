scoreboard players set FI_coal FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:coal",count:8}}] run scoreboard players add FI_coal FI_Item_Cap 1

execute store result score FI_coal FI_Random run random value 1..120
execute if score FI_coal FI_Item_Cap matches 0 in final_island:game if score FI_coal FI_Random matches 1..75 run summon item 68975 276 37 {Item:{id:"minecraft:coal",count:1b}}
execute if score FI_coal FI_Item_Cap matches 0 in final_island:game if score FI_coal FI_Random matches 11..85 run summon item 68996 278 54 {Item:{id:"minecraft:coal",count:1b}}
execute if score FI_coal FI_Item_Cap matches 0 in final_island:game if score FI_coal FI_Random matches 21..95 run summon item 68973 277 48 {Item:{id:"minecraft:coal",count:1b}}
schedule function final_island:spawn_items/caves/coal 128t