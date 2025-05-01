scoreboard players set FI_dirt FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:dirt",count:64}}] run scoreboard players add FI_dirt FI_Item_Cap 1
execute in final_island:game if score FI_dirt FI_Item_Cap matches 0 run summon item -22 -1 6 {Item:{id:"minecraft:dirt",count:1b}}
schedule function final_island:spawn_items/dirt 16t