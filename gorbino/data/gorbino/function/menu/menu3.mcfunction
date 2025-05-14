#Super Shotgun   Done
#Star            TBA 
#Gravity Gun     TBA
#Invis           Done
#Crack           Done

#Curry                          Done
#Super Laser Piss               Done
#Sneaky Sliders                 Done
#                               TBA
#Land Mine                      TBA

#An Actual explosive not just what I have                               TBA
#Knockback Stick                                                        Done
#Heal
#Something to blind others (Lizzies thing from wild life maybe idk)     TBA
#Smoke Bomb                                                             TBA

item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s[tag=!GB_super_shotgun] inventory.2 with crossbow[custom_name='["",{"text":"Super Shotgun [5]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!GB_star] inventory.3 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_idk] inventory.4 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_invis] inventory.5 with glass_pane[custom_name='["",{"text":"Invisabilty [1]","italic":false}]']
item replace entity @s[tag=!GB_crack] inventory.6 with ghast_tear[custom_name='["",{"text":"Cocaine [1]","italic":false}]']
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name='["",{"text":"Main Menu","italic":false}]']
item replace entity @s inventory.10 with air
item replace entity @s[tag=!GB_curry] inventory.11 with rabbit_stew[custom_name='["",{"text":"Curry [1]","italic":false}]']
item replace entity @s[tag=!GB_laser] inventory.12 with honey_bottle[custom_name='["",{"text":"Super Laser Piss [2]","italic":false}]']
item replace entity @s[tag=!GB_sneak] inventory.13 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders [1]","italic":false}]']
item replace entity @s[tag=!GB_trident] inventory.14 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_land_mine] inventory.15 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with spectral_arrow[custom_name='["",{"text":"Page 1","italic":false}]']
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s[tag=!GB_tnt] inventory.20 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_knockback] inventory.21 with stick[custom_name='["",{"text":"Knockback Stick [1]","italic":false}]']
item replace entity @s[tag=!GB_idk] inventory.22 with red_dye[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_flash_bang] inventory.23 with egg[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!GB_smoke_bomb] inventory.24 with gunpowder[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

item replace entity @s[tag=GB_super_shotgun] inventory.2 with crossbow[custom_name='["",{"text":"Super Shotgun [5]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=GB_star] inventory.3 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_gravity_gun] inventory.4 with glowstone_dust[custom_name='["",{"text":"Gravity Gun [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_invis] inventory.5 with glass_pane[custom_name='["",{"text":"Invisabilty [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_crack] inventory.6 with ghast_tear[custom_name='["",{"text":"Cocaine [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_curry] inventory.11 with rabbit_stew[custom_name='["",{"text":"Curry [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_laser] inventory.12 with honey_bottle[custom_name='["",{"text":"Super Laser Piss [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_sneak] inventory.13 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_trident] inventory.14 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_land_mine] inventory.15 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_tnt] inventory.20 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_knockback] inventory.21 with stick[custom_name='["",{"text":"Knockback Stick [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_idk] inventory.22 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_flash_bang] inventory.23 with egg[custom_name='["",{"text":"Flashbang [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=GB_smoke_bomb] inventory.24 with gunpowder[custom_name='["",{"text":"Smoke Bomb [1]","italic":false}]',enchantment_glint_override=true]

execute store result score @s GB_Select run clear @s spectral_arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 1
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 0
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s crossbow 0
execute if score @s[tag=GB_super_shotgun] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_super_shotgun
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 5
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=1..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 5
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_super_shotgun
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s glowstone_dust 0
execute if score @s[tag=GB_gravity_gun] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_gravity_gun
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_gravity_gun
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s ghast_tear 0
execute if score @s[tag=GB_crack] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_crack
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_crack
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s rabbit_stew 0
execute if score @s[tag=GB_curry] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_curry
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_curry
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s honey_bottle 0
execute if score @s[tag=GB_laser] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_laser
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_laser
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s leather_leggings 0
execute if score @s[tag=GB_sneak] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_sneak
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_sneak
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s stick 0
execute if score @s[tag=GB_knockback] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_knockback
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_knockback
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s egg 0
execute if score @s[tag=GB_flash_bang] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_flash_bang
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_flash_bang
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s gunpowder 0
execute if score @s[tag=GB_smoke_bomb] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_smoke_bomb
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_smoke_bomb
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s glass_pane 0
execute if score @s[tag=GB_invis] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_invis
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_invis
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1