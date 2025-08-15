scoreboard players set FI_Spider FI_Item_Cap 0
execute as @e[type=spider,tag=FI_Spider] run scoreboard players add FI_Spider FI_Item_Cap 1

execute store result score FI_Spider FI_Random run random value 1..5
execute if score FI_Spider FI_Item_Cap matches 0..9 in final_island:game if score FI_Spider FI_Random matches 1 at @e[type=marker,limit=1,sort=random,tag=FI_Spider_Spawner] run summon spider ~ ~ ~ {Tags:[FI_Spider],Health:100,attributes:[{id:attack_damage,base:20f},{id:movement_speed,base:1.2f},{id:armor,base:5f},{id:max_health,base:100f}]}
schedule function final_island:spawn_items/spider_caves/spider 30t