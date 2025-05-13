item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s[tag=!simple_armor] inventory.2 with leather_chestplate[custom_name='["",{"text":"Light Armor [1]","italic":false}]',!attribute_modifiers]
item replace entity @s[tag=simple_armor] inventory.2 with leather_chestplate[custom_name='["",{"text":"Light Armor [1]","italic":false}]',!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=!knight] inventory.3 with iron_sword[custom_name='["",{"text":"Knight [2]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=knight] inventory.3 with iron_sword[custom_name='["",{"text":"Knight [2]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=!frog] inventory.6 with ochre_froglight[custom_name='["",{"text":"Frog [1]","italic":false}]']
item replace entity @s[tag=frog] inventory.6 with ochre_froglight[custom_name='["",{"text":"Frog [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=!builder] inventory.5 with oak_planks[custom_name='["",{"text":"Builder [1]","italic":false}]']
item replace entity @s[tag=builder] inventory.5 with oak_planks[custom_name='["",{"text":"Builder [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=!dash] inventory.4 with sugar[custom_name='["",{"text":"Dash [1]","italic":false}]']
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name='["",{"text":"Main Menu","italic":false}]']
item replace entity @s inventory.10 with air
item replace entity @s[tag=!chain_armor] inventory.11 with chainmail_chestplate[custom_name='["",{"text":"Chain Armor [2]","italic":false}]',!attribute_modifiers]
item replace entity @s[tag=chain_armor] inventory.11 with chainmail_chestplate[custom_name='["",{"text":"Chain Armor [2]","italic":false}]',!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=!lumberjack] inventory.12 with iron_axe[custom_name='["",{"text":"Lumberjack [1]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!burst_charm] inventory.13 with nether_star[custom_name='["",{"text":"Burst Charm [1]","italic":false}]',enchantment_glint_override=false]
item replace entity @s[tag=!fireball] inventory.14 with fire_charge[custom_name='["",{"text":"Fireball [2]","italic":false}]']
item replace entity @s[tag=!dripstone] inventory.15 with dripstone_block[custom_name='["",{"text":"Dripstone [1]","italic":false}]']
item replace entity @s[tag=dripstone] inventory.15 with dripstone_block[custom_name='["",{"text":"Dripstone [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with spectral_arrow[custom_name='["",{"text":"Page 2","italic":false}]']
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s[tag=!heavy_armor] inventory.20 with iron_chestplate[custom_name='["",{"text":"Plate Armor [3]","italic":false}]',!attribute_modifiers]
item replace entity @s[tag=heavy_armor] inventory.20 with iron_chestplate[custom_name='["",{"text":"Plate Armor [3]","italic":false}]',!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=!archer] inventory.21 with bow[custom_name='["",{"text":"Archer [2]","italic":false}]']
item replace entity @s[tag=!freeze_bolt] inventory.22 with breeze_rod[custom_name='["",{"text":"Freeze Bolt [1]","italic":false}]']
item replace entity @s[tag=!flame_runner] inventory.23 with flint_and_steel[custom_name='["",{"text":"Flame Runner [1]","italic":false}]']
item replace entity @s[tag=!ground_slam] inventory.24 with dirt[custom_name='["",{"text":"Ground Slam [1]","italic":false}]']
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

item replace entity @s[tag=dash] inventory.4 with sugar[custom_name='["",{"text":"Dash [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=lumberjack] inventory.12 with iron_axe[custom_name='["",{"text":"Lumberjack [1]","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true]
item replace entity @s[tag=burst_charm] inventory.13 with nether_star[custom_name='["",{"text":"Burst Charm [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=fireball] inventory.14 with fire_charge[custom_name='["",{"text":"Fireball [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=archer] inventory.21 with bow[custom_name='["",{"text":"Archer [2]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=freeze_bolt] inventory.22 with breeze_rod[custom_name='["",{"text":"Freeze Bolt [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=flame_runner] inventory.23 with flint_and_steel[custom_name='["",{"text":"Flame Runner [1]","italic":false}]',enchantment_glint_override=true]
item replace entity @s[tag=ground_slam] inventory.24 with dirt[custom_name='["",{"text":"Ground Slam [1]","italic":false}]',enchantment_glint_override=true]




execute store result score @s Select run clear @s spectral_arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 2
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s arrow 0
execute if score @s Select matches 2 run scoreboard players set @s Menu 0
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1


execute store result score @s Select run clear @s leather_chestplate 0
execute if score @s[tag=simple_armor] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove simple_armor
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add simple_armor
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s chainmail_chestplate 0
execute if score @s[tag=chain_armor] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove chain_armor
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add chain_armor
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s iron_chestplate 0
execute if score @s[tag=heavy_armor] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove heavy_armor
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 3
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=3..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 3
execute if score @s[tag=!check] Select matches 2 run tag @s add heavy_armor
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s iron_sword 0
execute if score @s[tag=knight] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove knight
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add knight
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s iron_axe 0
execute if score @s[tag=lumberjack] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove lumberjack
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add lumberjack
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s bow 0
execute if score @s[tag=archer] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove archer
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add archer
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s nether_star 0
execute if score @s[tag=burst_charm] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove burst_charm
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add burst_charm
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s breeze_rod 0
execute if score @s[tag=freeze_bolt] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove freeze_bolt
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add freeze_bolt
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s fire_charge 0
execute if score @s[tag=fireball] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove fireball
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=4..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 2
execute if score @s[tag=!check] Select matches 2 run tag @s add fireball
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s sugar 0
execute if score @s[tag=dash] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove dash
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add dash
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s dirt 0
execute if score @s[tag=ground_slam] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove ground_slam
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add ground_slam
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s ochre_froglight 0
execute if score @s[tag=frog] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove frog
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add frog
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s dripstone_block 0
execute if score @s[tag=dripstone] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove dripstone
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add dripstone
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s flint_and_steel 0
execute if score @s[tag=flame_runner] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove flame_runner
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add flame_runner
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1

execute store result score @s Select run clear @s oak_planks 0
execute if score @s[tag=builder] Select matches 2 run tag @s add check
execute if score @s[tag=check] Select matches 2 run tag @s remove builder
execute if score @s[tag=check] Select matches 2 run scoreboard players remove @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s[scores={Points=5..}] add check
execute if score @s[tag=!check] Select matches 2 run scoreboard players add @s Points 1
execute if score @s[tag=!check] Select matches 2 run tag @s add builder
tag @s remove check
execute if score @s Select matches 2 run clear @s
scoreboard players set @s Select 1