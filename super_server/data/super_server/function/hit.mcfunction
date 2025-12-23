advancement revoke @s only super_server:hit

#Gorbino Weapons
execute as @s[scores={MAIN_Game=3}] if items entity @s weapon.mainhand *[custom_data~{GB_Gamble_Swowrd:1b}] run function gorbino:abilities/gamble