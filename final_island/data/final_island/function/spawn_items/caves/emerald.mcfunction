scoreboard players set FI_emerald FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",count:64}}] run scoreboard players add FI_emerald FI_Item_Cap 1

execute store result score FI_emerald FI_Random run random value 1..100
summon item 68981 143 52 {Item:{id:"minecraft:emerald",count:1b}}
summon item 68969 143 46 {Item:{id:"minecraft:emerald",count:1b}}
execute if score FI_emerald FI_Item_Cap matches 0 in final_island:game if score FI_emerald FI_Random matches 1..40 run schedule function final_island:spawn_items/caves/emerald 134t
execute if score FI_emerald FI_Item_Cap matches 0 in final_island:game if score FI_emerald FI_Random matches 31..70 run schedule function final_island:spawn_items/caves/emerald 164t
execute if score FI_emerald FI_Item_Cap matches 0 in final_island:game if score FI_emerald FI_Random matches 71..100 run schedule function final_island:spawn_items/caves/emerald 1134t