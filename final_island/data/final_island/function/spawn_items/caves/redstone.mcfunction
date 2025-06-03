scoreboard players set FI_redstone FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone",count:64}}] run scoreboard players add FI_redstone FI_Item_Cap 1

execute store result score FI_redstone FI_Random run random value 1..100
execute if score FI_redstone FI_Item_Cap matches 0 in final_island:game if score FI_redstone FI_Random matches 1..40 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",count:4b}}
execute if score FI_redstone FI_Item_Cap matches 0 in final_island:game if score FI_redstone FI_Random matches 31..65 run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",count:5b}}
schedule function final_island:spawn_items/caves/redstone 42t