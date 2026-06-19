advancement revoke @s only super_server:right_click


#Things to tell the player if they do not meet requirements
#tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}] 


#Final Island Swords (Make sure it checks for FI_Mana_Cooldown to be 0) with mana checker
execute as @s[scores={FI_Mana=60..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_stone_sword=0}] weapon.mainhand *[custom_data~{FI_Stone_Sword:1b}] run function final_island:abilities/stone_sword
execute as @s[scores={FI_Mana=20..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_iron_sword=0}] weapon.mainhand *[custom_data~{FI_Iron_Sword:1b}] run function final_island:abilities/iron_sword
execute as @s[scores={FI_Mana=75..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_deep_sword=0}] weapon.mainhand *[custom_data~{FI_Deep_Sword:1b}] run function final_island:abilities/deep_sword
execute as @s[scores={FI_Mana=10..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_flint_sword=0}] weapon.mainhand *[custom_data~{FI_Flint_Sword:1b}] run function final_island:abilities/flint_sword

#Final Island Axes
execute as @s[scores={FI_Mana=3..,MAIN_Game=2}] if items entity @s weapon.mainhand *[custom_data~{FI_Emerald_Axe:1b}] run function final_island:abilities/emerald_axe
execute as @s[scores={FI_Mana=75..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_diamond_axe=0}] weapon.mainhand *[custom_data~{FI_Diamond_Axe:1b}] run function final_island:abilities/diamond_axe
execute as @s[scores={FI_Mana=60..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_stone_axe=0}] weapon.mainhand *[custom_data~{FI_Stone_Axe:1b}] run function final_island:abilities/stone_axe

#Final Island Crystals
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Crystal_Gray=0}] weapon.mainhand *[custom_data~{FI_Mana_Crystal_Gray:1b}] run function final_island:items/crystal_gray
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Crystal_Red=0}] weapon.mainhand *[custom_data~{FI_Mana_Crystal_Red:1b}] run function final_island:items/crystal_red

#Final Island Gems
execute as @s[scores={FI_Mana=50..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Stone=0}] weapon.mainhand *[custom_data~{FI_Stone_Gem:1b}] run function final_island:items/gem_stone
execute as @s[scores={FI_Mana=50..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Copper=0}] weapon.mainhand *[custom_data~{FI_Copper_Gem:1b}] run function final_island:items/gem_copper
execute as @s[scores={FI_Mana=15..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Iron=0}] weapon.mainhand *[custom_data~{FI_Iron_Gem:1b}] run function final_island:items/gem_iron
execute as @s[scores={FI_Mana=25..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Diamond=0}] weapon.mainhand *[custom_data~{FI_Diamond_Gem:1b}] run function final_island:items/gem_diamond
execute as @s[scores={FI_Mana=40..,MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Tuff=0}] weapon.mainhand *[custom_data~{FI_Tuff_Gem:1b}] run function final_island:items/gem_tuff
#octothorpe

#The weapon is still on cooldown
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_stone_sword=1..}] weapon.mainhand *[custom_data~{FI_Stone_Sword:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_iron_sword=1..}] weapon.mainhand *[custom_data~{FI_Iron_Sword:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_deep_sword=1..}] weapon.mainhand *[custom_data~{FI_Deep_Sword:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_flint_sword=1..}] weapon.mainhand *[custom_data~{FI_Flint_Sword:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_diamond_axe=1..}] weapon.mainhand *[custom_data~{FI_Diamond_Axe:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_stone_axe=1..}] weapon.mainhand *[custom_data~{FI_Stone_Axe:1b}] run tellraw @s [{text:"Your weapon is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Crystal_Gray=1..}] weapon.mainhand *[custom_data~{FI_Mana_Crystal_Gray:1b}] run tellraw @s [{text:"Your crystal is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Crystal_Red=1..}] weapon.mainhand *[custom_data~{FI_Mana_Crystal_Red:1b}] run tellraw @s [{text:"Your crystal is still on cooldown",color:"red"}]

execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Stone=1..}] weapon.mainhand *[custom_data~{FI_Stone_Gem:1b}] run tellraw @s [{text:"Your gem is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Copper=1..}] weapon.mainhand *[custom_data~{FI_Copper_Gem:1b}] run tellraw @s [{text:"Your gem is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Iron=1..}] weapon.mainhand *[custom_data~{FI_Iron_Gem:1b}] run tellraw @s [{text:"Your gem is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Diamond=1..}] weapon.mainhand *[custom_data~{FI_Diamond_Gem:1b}] run tellraw @s [{text:"Your gem is still on cooldown",color:"red"}]
execute as @s[scores={MAIN_Game=2}] if items entity @s[scores={FI_Mana_Cooldown_Gem_Tuff=1..}] weapon.mainhand *[custom_data~{FI_Tuff_Gem:1b}] run tellraw @s [{text:"Your gem is still on cooldown",color:"red"}]

execute as @s[scores={MM_Test_Dash=100..,MM_Test_Dash2=0},tag=MM_Class_Assassin] if items entity @s weapon.mainhand *[custom_data~{MM_Test:1b}] run function mob_madness:classes/assassin/test_right