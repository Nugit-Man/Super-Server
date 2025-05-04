advancement revoke @s only super_server:right_click

#Final Island Swords (Make sure it checks for FI_Mana_Cooldown to be 0) with mana checker
execute as @s[scores={FI_Mana=60..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Stone_Sword:1b}] run function final_island:abilities/stone_sword
execute as @s[scores={FI_Mana=20..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Iron_Sword:1b}] run function final_island:abilities/iron_sword
execute as @s[scores={FI_Mana=75..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Deep_Sword:1b}] run function final_island:abilities/deep_sword
execute as @s[scores={FI_Mana=10..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown=0}] weapon.mainhand *[custom_data~{FI_Flint_Sword:1b}] run function final_island:abilities/flint_sword

#octothorpe