item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s[tag=!GB_mace_master] inventory.2 with mace[custom_name=[{text:"Mace Master [2]",italic:false}],!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!GB_cancer] inventory.3 with prismarine_crystals[custom_name=[{text:"Cancer [1]",italic:false}]]
item replace entity @s[tag=GB_cancer] inventory.3 with prismarine_crystals[custom_name=[{text:"Cancer [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=!GB_lava] inventory.4 with lava_bucket[custom_name=[{text:"Lava [2]",italic:false}]]
item replace entity @s[tag=GB_lava] inventory.4 with lava_bucket[custom_name=[{text:"Lava [2]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=!GB_grow] inventory.5 with oak_sapling[custom_name=[{text:"Grow [1]",italic:false}]]
item replace entity @s[tag=!GB_shotgun] inventory.6 with crossbow[custom_name=[{text:"Shotgun [3]",italic:false}]]
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name=[{text:"Main Menu",italic:false}]]
item replace entity @s inventory.10 with air
item replace entity @s[tag=!GB_slime_bounce] inventory.11 with slime_block[custom_name=[{text:"Slime Bounce [1]",italic:false}]]
item replace entity @s[tag=!GB_bomber] inventory.12 with tnt[custom_name=[{text:"Bomber [2]",italic:false}]]
item replace entity @s[tag=!GB_chad] inventory.13 with diamond[custom_name=[{text:"Chad [1]",italic:false}]]
item replace entity @s[tag=GB_chad] inventory.13 with diamond[custom_name=[{text:"Chad [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=!GB_shrink] inventory.14 with pufferfish[custom_name=[{text:"Shrink [1]",italic:false}]]
item replace entity @s[tag=!GB_leap_pearl] inventory.15 with ender_pearl[custom_name=[{text:"Leap Pearl [2]",italic:false}]]
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with spectral_arrow[custom_name=[{text:"Page 3",italic:false}]]
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s[tag=!GB_wind_waker] inventory.20 with wind_charge[custom_name=[{text:"Wind Waker [1]",italic:false}]]
item replace entity @s[tag=!GB_spin] inventory.21 with popped_chorus_fruit[custom_name=[{text:"Spin [1]",italic:false}]]
item replace entity @s[tag=!GB_lightning_bolt] inventory.22 with lightning_rod[custom_name=[{text:"Lightning Bolt [2]",italic:false}]]
item replace entity @s[tag=!GB_lightweight] inventory.23 with feather[custom_name=[{text:"Lightweight [1]",italic:false}]]
item replace entity @s[tag=!GB_elytra] inventory.24 with elytra[custom_name=[{text:"Elytra [2]",italic:false}]]
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s[tag=GB_wind_waker] inventory.20 with wind_charge[custom_name=[{text:"Wind Waker [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_spin] inventory.21 with popped_chorus_fruit[custom_name=[{text:"Spin [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_lightning_bolt] inventory.22 with lightning_rod[custom_name=[{text:"Lightning Bolt [2]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_lightweight] inventory.23 with feather[custom_name=[{text:"Lightweight [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_elytra] inventory.24 with elytra[custom_name=[{text:"Elytra [2]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_shrink] inventory.14 with pufferfish[custom_name=[{text:"Shrink [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_leap_pearl] inventory.15 with ender_pearl[custom_name=[{text:"Leap Pearl [2]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_slime_bounce] inventory.11 with slime_block[custom_name=[{text:"Slime Bounce [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_bomber] inventory.12 with tnt[custom_name=[{text:"Bomber [2]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_grow] inventory.5 with oak_sapling[custom_name=[{text:"Grow [1]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_shotgun] inventory.6 with crossbow[custom_name=[{text:"Shotgun [3]",italic:false}],enchantment_glint_override=true]
item replace entity @s[tag=GB_mace_master] inventory.2 with mace[custom_name=[{text:"Mace Master [2]",italic:false}],!tool,!damage,!max_damage,enchantment_glint_override=true]



execute store result score @s GB_Select run clear @s spectral_arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 3
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 0
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s mace 0
execute if score @s[tag=GB_mace_master] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_mace_master
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_mace_master
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s slime_block 0
execute if score @s[tag=GB_slime_bounce] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_slime_bounce
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_slime_bounce
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s wind_charge 0
execute if score @s[tag=GB_wind_waker] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove wind_waker
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_wind_waker
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s tnt 0
execute if score @s[tag=GB_bomber] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_bomber
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_bomber
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s popped_chorus_fruit 0
execute if score @s[tag=GB_spin] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_spin
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_spin
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s lightning_rod 0
execute if score @s[tag=GB_lightning_bolt] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_lightning_bolt
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_lightning_bolt
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s oak_sapling 0
execute if score @s[tag=GB_grow] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_grow
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_grow
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s pufferfish 0
execute if score @s[tag=GB_shrink] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_shrink
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_shrink
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s feather 0
execute if score @s[tag=GB_lightweight] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_lightweight
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_lightweight
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s crossbow 0
execute if score @s[tag=GB_shotgun] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_shotgun
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 3
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=3..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 3
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_shotgun
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s ender_pearl 0
execute if score @s[tag=GB_leap_pearl] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_leap_pearl
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_leap_pearl
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1
execute store result score @s GB_Select run clear @s elytra 0
execute if score @s[tag=GB_elytra] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_elytra
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_elytra
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s diamond 0
execute if score @s[tag=GB_chad] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_chad
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_chad
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s prismarine_crystals 0
execute if score @s[tag=GB_cancer] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_cancer
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_cancer
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s lava_bucket 0
execute if score @s[tag=GB_lava] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_lava
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_lava
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s barrier 0
tag @s[scores={GB_Select=2..}] remove GB_lava