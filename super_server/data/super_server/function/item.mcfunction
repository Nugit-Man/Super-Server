advancement revoke @s only super_server:right_click


#Things to tell the player if they do not meet requirements
tellraw @s[scores={FI_Mana_Cooldown=1..,MAIN_Game=2}] [{text:"Your weapons are still on cooldown",color:"red"}] 


#Final Island Swords (Make sure it checks for FI_Mana_Cooldown to be 0) with mana checker
execute as @s[scores={FI_Mana=60..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Stone_Sword:1b}] run function final_island:abilities/stone_sword
execute as @s[scores={FI_Mana=20..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Iron_Sword:1b}] run function final_island:abilities/iron_sword
execute as @s[scores={FI_Mana=75..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Deep_Sword:1b}] run function final_island:abilities/deep_sword
execute as @s[scores={FI_Mana=10..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Flint_Sword:1b}] run function final_island:abilities/flint_sword

#Final Island Axes
execute as @s[scores={FI_Mana=3..,MAIN_Game=2}] if items entity @s weapon.mainhand *[custom_data~{FI_Emerald_Axe:1b}] run function final_island:abilities/emerald_axe
execute as @s[scores={FI_Mana=75..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Diamond_Axe:1b}] run function final_island:abilities/diamond_axe
execute as @s[scores={FI_Mana=60..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Stone_Axe:1b}] run function final_island:abilities/stone_axe

#octothorpe

