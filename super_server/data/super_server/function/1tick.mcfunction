advancement revoke @s only super_server:1tick

#Final Island
execute as @s[scores={MAIN_Game=2}] if items entity @s weapon.mainhand *[custom_data~{FI_Torch:1b}] run function final_island:items/torch
execute as @s[scores={MAIN_Game=2}] if items entity @s weapon.mainhand *[custom_data~{FI_Lantern:1b}] run function final_island:items/lantern
execute as @s[scores={MAIN_Game=2}] if items entity @s weapon.mainhand *[custom_data~{FI_Mana_Crystal:1b}] run scoreboard players add @s FI_Mana 10

#gorbino
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sugar"}},scores={MAIN_Game=3}] run function gorbino:abilities/dash