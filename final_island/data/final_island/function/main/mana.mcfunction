
#Display mana and restore it at spawn
execute in final_island:game at @e[tag=FI_Mana_Restore] run execute as @a[distance=..3] run scoreboard players operation @s FI_Mana = @s FI_Mana_Max
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Regen 1
execute in final_island:game at @e[tag=FI_Mana_Restore] run tag @a[distance=..3] remove FI_Armor_Set_Emerald
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3,scores={FI_Mana_Max=0}] FI_Mana_Max 100
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_deep_sword 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_diamond_axe 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_flint_sword 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_iron_sword 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_stone_axe 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_stone_sword 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Crystal_Gray 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Crystal_Red 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Armor_Set_Stone 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Armor_Set_Copper 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Armor_Set_Gold 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Armor_Set_Iron 0
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..3] FI_Armor_Set_Diamond 0
execute as @a[scores={MAIN_Game=2}] run title @s actionbar ["Mana: ",{score:{objective:"FI_Mana",name:"@s"}},"/",{score:{objective:"FI_Mana_Max",name:"@s"}}]


#Mana Cooldown
scoreboard players remove @a[scores={FI_Mana_Cooldown_deep_sword=1..,MAIN_Game=2}] FI_Mana_Cooldown_deep_sword 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_deep_sword=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_deep_sword 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_diamond_axe=1..,MAIN_Game=2}] FI_Mana_Cooldown_diamond_axe 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_diamond_axe=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_diamond_axe 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_flint_sword=1..,MAIN_Game=2}] FI_Mana_Cooldown_flint_sword 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_flint_sword=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_flint_sword 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_iron_sword=1..,MAIN_Game=2}] FI_Mana_Cooldown_iron_sword 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_iron_sword=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_iron_sword 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_stone_axe=1..,MAIN_Game=2}] FI_Mana_Cooldown_stone_axe 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_stone_axe=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_stone_axe 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_stone_sword=1..,MAIN_Game=2}] FI_Mana_Cooldown_stone_sword 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_stone_sword=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_stone_sword 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Crystal_Gray=1..,MAIN_Game=2}] FI_Mana_Cooldown_Crystal_Gray 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Crystal_Gray=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Crystal_Gray 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Crystal_Red=1..,MAIN_Game=2}] FI_Mana_Cooldown_Crystal_Red 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Crystal_Red=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Crystal_Red 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Crystal_Red=..600},tag=FI_Mana_Crystal_Red] FI_Mana_Regen 1
tag @a[scores={FI_Mana_Cooldown_Crystal_Red=..600},tag=FI_Mana_Crystal_Red] remove FI_Mana_Crystal_Red