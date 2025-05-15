
#Display mana and restore it at spawn
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5] FI_Mana 100
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5,scores={FI_Mana_Max=0}] FI_Mana_Regen 1
execute in final_island:game at @e[tag=FI_Mana_Restore] run tag @a[distance=..5] remove FI_Armor_Set_Emerald
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5,scores={FI_Mana_Max=0}] FI_Mana_Max 100
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5] FI_Mana_Cooldown 0
execute as @a[scores={MAIN_Game=2}] run title @s actionbar ["Mana: ",{score:{objective:"FI_Mana",name:"@s"}},"/",{score:{objective:"FI_Mana_Max",name:"@s"}}]


#Mana Cooldown
scoreboard players remove @a[scores={FI_Mana_Cooldown=1..,MAIN_Game=2}] FI_Mana_Cooldown 1
scoreboard players remove @a[scores={FI_Mana_Cooldown=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown 1

