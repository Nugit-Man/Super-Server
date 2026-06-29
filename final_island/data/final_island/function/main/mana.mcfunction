
#Display mana and restore it at spawn
execute in final_island:game at @e[tag=FI_Mana_Restore] run function final_island:main/mana/restore
execute as @a[scores={MAIN_Game=2}] run title @s actionbar ["Mana: ",{score:{objective:"FI_Mana",name:"@s"}},"/",{score:{objective:"FI_Mana_Max",name:"@s"}}]


#Mana Cooldown
scoreboard players remove @a[scores={FI_Mana_Cooldown_deep_sword=1..,MAIN_Game=2}] FI_Mana_Cooldown_deep_sword 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_deep_sword=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_deep_sword 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_diamond_axe=1..,MAIN_Game=2}] FI_Mana_Cooldown_diamond_axe 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_diamond_axe=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_diamond_axe 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_iron_axe=1..,MAIN_Game=2}] FI_Mana_Cooldown_iron_axe 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_iron_axe=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_iron_axe 1

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


scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Stone=1..,MAIN_Game=2}] FI_Mana_Cooldown_Gem_Stone 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Stone=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Gem_Stone 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Copper=1..,MAIN_Game=2}] FI_Mana_Cooldown_Gem_Copper 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Copper=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Gem_Copper 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Iron=1..,MAIN_Game=2}] FI_Mana_Cooldown_Gem_Iron 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Iron=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Gem_Iron 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Diamond=1..,MAIN_Game=2}] FI_Mana_Cooldown_Gem_Diamond 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Diamond=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Gem_Diamond 1

scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Tuff=1..,MAIN_Game=2}] FI_Mana_Cooldown_Gem_Tuff 1
scoreboard players remove @a[scores={FI_Mana_Cooldown_Gem_Tuff=1..,MAIN_Game=2},tag=FI_Armor_Set_Amethyst] FI_Mana_Cooldown_Gem_Tuff 1