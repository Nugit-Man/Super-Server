scoreboard players set FI_crystal FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:64}}] run scoreboard players add FI_crystal FI_Item_Cap 1

execute store result score FI_crystal FI_Random run random value 1..100
execute if score FI_crystal FI_Item_Cap matches 0 in final_island:game if score FI_crystal FI_Random matches 1..6 run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",count:3b}}
execute if score FI_crystal FI_Item_Cap matches 0 in final_island:game if score FI_crystal FI_Random matches 7..10 run summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard",count:4b}}
schedule function final_island:spawn_items/caves/crystal 6t