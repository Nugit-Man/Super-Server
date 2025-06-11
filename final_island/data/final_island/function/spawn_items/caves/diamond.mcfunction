scoreboard players set FI_diamond FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",count:64}}] run scoreboard players add FI_diamond FI_Item_Cap 1

execute store result score FI_diamond FI_Random run random value 1..2
execute if score FI_diamond FI_Item_Cap matches 0 in final_island:game if score FI_diamond FI_Random matches 1 run summon item 68981 181 44 {Item:{id:"minecraft:diamond",count:1b}}
execute if score FI_diamond FI_Item_Cap matches 0 in final_island:game if score FI_diamond FI_Random matches 2 run summon item 69001 183 36 {Item:{id:"minecraft:diamond",count:1b}}
schedule function final_island:spawn_items/caves/diamond 90t