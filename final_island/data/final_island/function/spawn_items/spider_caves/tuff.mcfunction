scoreboard players set FI_tuff FI_Item_Cap 0
execute as @e[type=item,nbt={Item:{id:"minecraft:tuff",count:64}}] run scoreboard players add FI_tuff FI_Item_Cap 1

execute store result score FI_tuff FI_Random run random value 1..6
execute if score FI_tuff FI_Item_Cap matches 0 in final_island:game if score FI_tuff FI_Random matches 1..3 run summon item 68997 14 45 {Item:{id:"minecraft:tuff",count:1b}}
execute if score FI_tuff FI_Item_Cap matches 0 in final_island:game if score FI_tuff FI_Random matches 2..4 run summon item 68977 15 31 {Item:{id:"minecraft:tuff",count:1b}}
execute if score FI_tuff FI_Item_Cap matches 0 in final_island:game if score FI_tuff FI_Random matches 3..5 run summon item 68997 16 19 {Item:{id:"minecraft:tuff",count:1b}}
schedule function final_island:spawn_items/spider_caves/tuff 63t