scoreboard players set FI_obsidian FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:obsidian",count:64}}] run scoreboard players add FI_obsidian FI_Item_Cap 1

execute store result score FI_obsidian FI_Random run random value 1..100
execute if score FI_obsidian FI_Item_Cap matches 0 in final_island:game if score FI_obsidian FI_Random matches 1..20 run summon item ~ ~ ~ {Item:{id:"minecraft:obsidian",count:1b}}
schedule function final_island:spawn_items/caves/obsidian 134t