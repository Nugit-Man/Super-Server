scoreboard players set FI_sculk FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:sculk",count:64}}] run scoreboard players add FI_sculk FI_Item_Cap 1

execute store result score FI_sculk FI_Random run random value 1..100
execute if score FI_sculk FI_Item_Cap matches 0 in final_island:game if score FI_sculk FI_Random matches 1..4 run summon item 68994 148 -10 {Item:{id:"minecraft:sculk",count:2b}}
schedule function final_island:spawn_items/caves/sculk 7t