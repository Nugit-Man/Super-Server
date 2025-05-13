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
item replace entity @s[tag=!super_shotgun] inventory.2 with crossbow[custom_name='["",{"text":"Super Shotgun [5]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!star] inventory.3 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!idk] inventory.4 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!invis] inventory.5 with glass_pane[custom_name='["",{"text":"Invisabilty [1]","italic":false}]']
item replace entity @s[tag=!crack] inventory.6 with ghast_tear[custom_name='["",{"text":"Cocaine [1]","italic":false}]']
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name='["",{"text":"Main Menu","italic":false}]']
item replace entity @s inventory.10 with air
item replace entity @s[tag=!curry] inventory.11 with rabbit_stew[custom_name='["",{"text":"Curry [1]","italic":false}]']
item replace entity @s[tag=!laser] inventory.12 with honey_bottle[custom_name='["",{"text":"Super Laser Piss [2]","italic":false}]']
item replace entity @s[tag=!sneak] inventory.13 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders [1]","italic":false}]']
item replace entity @s[tag=!trident] inventory.14 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!land_mine] inventory.15 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with spectral_arrow[custom_name='["",{"text":"Page 1","italic":false}]']
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s[tag=!tnt] inventory.20 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!knockback] inventory.21 with stick[custom_name='["",{"text":"Knockback Stick [1]","italic":false}]']
item replace entity @s[tag=!idk] inventory.22 with red_dye[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!flash_bang] inventory.23 with egg[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s[tag=!smoke_bomb] inventory.24 with gunpowder[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air



item replace entity @s[tag=super_shotgun] inventory.2 with crossbow[custom_name='["",{"text":"Super Shotgun [5]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=star] inventory.3 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=gravity_gun] inventory.4 with glowstone_dust[custom_name='["",{"text":"Gravity Gun [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=invis] inventory.5 with glass_pane[custom_name='["",{"text":"Invisabilty [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=crack] inventory.6 with ghast_tear[custom_name='["",{"text":"Cocaine [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=curry] inventory.11 with rabbit_stew[custom_name='["",{"text":"Curry [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=laser] inventory.12 with honey_bottle[custom_name='["",{"text":"Super Laser Piss [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=sneak] inventory.13 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=trident] inventory.14 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=land_mine] inventory.15 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=tnt] inventory.20 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=knockback] inventory.21 with stick[custom_name='["",{"text":"Knockback Stick [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=idk] inventory.22 with bedrock[custom_name='["",{"text":"To Be Added","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=flash_bang] inventory.23 with egg[custom_name='["",{"text":"Flashbang [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=smoke_bomb] inventory.24 with gunpowder[custom_name='["",{"text":"Smoke Bomb [1]","italic":false}]',enchantment_glint_override=true]




execute store result score @s Select run clear @s spectral_arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 1
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 0
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s crossbow 0
execute if score @s[tag=super_shotgun] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove super_shotgun
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 5
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=1..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 5
execute if score @s[tag=!check] Select matches 2 run tag @s add super_shotgun
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s glowstone_dust 0
execute if score @s[tag=gravity_gun] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove gravity_gun
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add gravity_gun
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s ghast_tear 0
execute if score @s[tag=crack] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove crack
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add crack
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s rabbit_stew 0
execute if score @s[tag=curry] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove curry
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add curry
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s honey_bottle 0
execute if score @s[tag=laser] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove laser
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add laser
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s leather_leggings 0
execute if score @s[tag=sneak] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove sneak
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add sneak
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s stick 0
execute if score @s[tag=knockback] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove knockback
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add knockback
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s egg 0
execute if score @s[tag=flash_bang] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove flash_bang
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add flash_bang
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s gunpowder 0
execute if score @s[tag=smoke_bomb] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove smoke_bomb
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add smoke_bomb
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s glass_pane 0
execute if score @s[tag=invis] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove invis
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add invis
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1