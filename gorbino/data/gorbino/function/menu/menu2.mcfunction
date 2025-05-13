item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s[tag=!mace_master] inventory.2 with mace[custom_name='["",{"text":"Mace Master [2]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!cancer] inventory.3 with prismarine_crystals[custom_name='["",{"text":"Cancer [1]","italic":false}]']
item replace entity @s[tag=cancer] inventory.3 with prismarine_crystals[custom_name='["",{"text":"Cancer [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=!lava] inventory.4 with lava_bucket[custom_name='["",{"text":"Lava [2]","italic":false}]']
item replace entity @s[tag=lava] inventory.4 with lava_bucket[custom_name='["",{"text":"Lava [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=!grow] inventory.5 with oak_sapling[custom_name='["",{"text":"Grow [1]","italic":false}]']
item replace entity @s[tag=!shotgun] inventory.6 with crossbow[custom_name='["",{"text":"Shotgun [3]","italic":false}]']
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name='["",{"text":"Main Menu","italic":false}]']
item replace entity @s inventory.10 with air
item replace entity @s[tag=!slime_bounce] inventory.11 with slime_block[custom_name='["",{"text":"Slime Bounce [1]","italic":false}]']
item replace entity @s[tag=!bomber] inventory.12 with tnt[custom_name='["",{"text":"Bomber [2]","italic":false}]']
item replace entity @s[tag=!chad] inventory.13 with diamond[custom_name='["",{"text":"Chad [1]","italic":false}]']
item replace entity @s[tag=chad] inventory.13 with diamond[custom_name='["",{"text":"Chad [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=!shrink] inventory.14 with pufferfish[custom_name='["",{"text":"Shrink [1]","italic":false}]']
item replace entity @s[tag=!leap_pearl] inventory.15 with ender_pearl[custom_name='["",{"text":"Leap Pearl [2]","italic":false}]']
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with spectral_arrow[custom_name='["",{"text":"Page 3","italic":false}]']
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s[tag=!wind_waker] inventory.20 with wind_charge[custom_name='["",{"text":"Wind Waker [1]","italic":false}]']
item replace entity @s[tag=!spin] inventory.21 with popped_chorus_fruit[custom_name='["",{"text":"Spin [1]","italic":false}]']
item replace entity @s[tag=!lightning_bolt] inventory.22 with lightning_rod[custom_name='["",{"text":"Lightning Bolt [2]","italic":false}]']
item replace entity @s[tag=!lightweight] inventory.23 with feather[custom_name='["",{"text":"Lightweight [1]","italic":false}]']
item replace entity @s[tag=!elytra] inventory.24 with elytra[custom_name='["",{"text":"Elytra [2]","italic":false}]']
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s[tag=wind_waker] inventory.20 with wind_charge[custom_name='["",{"text":"Wind Waker [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=spin] inventory.21 with popped_chorus_fruit[custom_name='["",{"text":"Spin [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=lightning_bolt] inventory.22 with lightning_rod[custom_name='["",{"text":"Lightning Bolt [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=lightweight] inventory.23 with feather[custom_name='["",{"text":"Lightweight [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=elytra] inventory.24 with elytra[custom_name='["",{"text":"Elytra [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=shrink] inventory.14 with pufferfish[custom_name='["",{"text":"Shrink [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=leap_pearl] inventory.15 with ender_pearl[custom_name='["",{"text":"Leap Pearl [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=slime_bounce] inventory.11 with slime_block[custom_name='["",{"text":"Slime Bounce [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=bomber] inventory.12 with tnt[custom_name='["",{"text":"Bomber [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=grow] inventory.5 with oak_sapling[custom_name='["",{"text":"Grow [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=shotgun] inventory.6 with crossbow[custom_name='["",{"text":"Shotgun [3]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=mace_master] inventory.2 with mace[custom_name='["",{"text":"Mace Master [2]","italic":false}]',!tool,!damage,!max_damage,enchantment_glint_override=true]



execute store result score @s Select run clear @s spectral_arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 3
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 0
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s mace 0
execute if score @s[tag=mace_master] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove mace_master
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add mace_master
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s slime_block 0
execute if score @s[tag=slime_bounce] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove slime_bounce
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add slime_bounce
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s wind_charge 0
execute if score @s[tag=wind_waker] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove wind_waker
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add wind_waker
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s tnt 0
execute if score @s[tag=bomber] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove bomber
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add bomber
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s popped_chorus_fruit 0
execute if score @s[tag=spin] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove spin
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add spin
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s lightning_rod 0
execute if score @s[tag=lightning_bolt] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove lightning_bolt
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add lightning_bolt
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s oak_sapling 0
execute if score @s[tag=grow] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove grow
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add grow
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s pufferfish 0
execute if score @s[tag=shrink] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove shrink
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add shrink
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s feather 0
execute if score @s[tag=lightweight] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove lightweight
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add lightweight
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s crossbow 0
execute if score @s[tag=shotgun] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove shotgun
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 3
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=3..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 3
execute if score @s[tag=!check] Select matches 2 run tag @s add shotgun
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s ender_pearl 0
execute if score @s[tag=leap_pearl] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove leap_pearl
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add leap_pearl
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1
execute store result score @s Select run clear @s elytra 0
execute if score @s[tag=elytra] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove elytra
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add elytra
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s diamond 0
execute if score @s[tag=chad] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove chad
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add chad
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s prismarine_crystals 0
execute if score @s[tag=cancer] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove cancer
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add cancer
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s lava_bucket 0
execute if score @s[tag=lava] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove lava
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add lava
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add lava
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1