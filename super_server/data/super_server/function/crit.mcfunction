advancement revoke @s only super_server:crit

#Final Island Weapons
execute as @s if items entity @s weapon.mainhand *[custom_data~{FI_Golden_Sword:1b}] run function final_island:abilities/golden_sword
execute as @s if items entity @s weapon.offhand *[custom_data~{FI_Golden_Sword:1b}] run function final_island:abilities/golden_sword