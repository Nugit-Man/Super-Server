advancement revoke @s only super_server:4tick

#Gorbino
execute if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod"}},scores={MAIN_Game=3}] run function gorbino:abilities/frost_wand
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}},scores={MAIN_Game=3}] run function gorbino:abilities/fireball
execute if entity @s[nbt={SelectedItem:{id:"minecraft:dripstone_block"}},scores={MAIN_Game=3}] run function gorbino:abilities/dripstone