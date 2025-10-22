item replace entity @s inventory.0 with spectral_arrow[custom_name=[{text:"Page 2",italic:false}]]
item replace entity @s[tag=!GB_simple_armor] inventory.2 with leather_chestplate[custom_name=[{text:"Light Armor [1]",italic:false}],!attribute_modifiers]
item replace entity @s[tag=GB_simple_armor] inventory.2 with leather_chestplate[custom_name=[{text:"Light Armor [1]",italic:false}],!attribute_modifiers,enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=!GB_knight] inventory.3 with iron_sword[custom_name=[{text:"Knight [2]",italic:false}],!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=GB_knight] inventory.3 with iron_sword[custom_name=[{text:"Knight [2]",italic:false}],!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
#item replace entity @s[tag=!GB_frog] inventory.6 with ochre_froglight[custom_name=[{text:"Frog [1]",italic:false}]]
#item replace entity @s[tag=GB_frog] inventory.6 with ochre_froglight[custom_name=[text:"Frog [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
#item replace entity @s[tag=!GB_builder] inventory.5 with oak_planks[custom_name=[{text:"Builder [1]",italic:false}]]
#item replace entity @s[tag=GB_builder] inventory.5 with oak_planks[custom_name=[{text:"Builder [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=!GB_dash] inventory.4 with sugar[custom_name=[{text:"Dash [1]",italic:false}]]
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with arrow[custom_name=[{text:"Main Menu",italic:false}]]
item replace entity @s[tag=!GB_chain_armor] inventory.11 with chainmail_chestplate[custom_name=[{text:"Chain Armor [2]",italic:false}],!attribute_modifiers]
item replace entity @s[tag=GB_chain_armor] inventory.11 with chainmail_chestplate[custom_name=[{text:"Chain Armor [2]",italic:false}],!attribute_modifiers,enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=!GB_lumberjack] inventory.12 with iron_axe[custom_name=[{text:"Lumberjack [1]",italic:false}],!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s[tag=!GB_burst_charm] inventory.13 with nether_star[custom_name=[{text:"Burst Charm [1]",italic:false}],enchantment_glint_override=false]
item replace entity @s[tag=!GB_fireball] inventory.14 with fire_charge[custom_name=[{text:"Fireball [2]",italic:false}]]
item replace entity @s[tag=!GB_dripstone] inventory.5 with dripstone_block[custom_name=[{text:"Dripstone [1]",italic:false}]]
item replace entity @s[tag=GB_dripstone] inventory.5 with dripstone_block[custom_name=[{text:"Dripstone [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s inventory.17 with barrier[custom_name=[{text:"Clear All",italic:false}]]
item replace entity @s inventory.18 with air
item replace entity @s[tag=!GB_heavy_armor] inventory.20 with iron_chestplate[custom_name=[{text:"Plate Armor [3]",italic:false}],!attribute_modifiers]
item replace entity @s[tag=GB_heavy_armor] inventory.20 with iron_chestplate[custom_name=[{text:"Plate Armor [3]",italic:false}],!attribute_modifiers,enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=!GB_archer] inventory.21 with bow[custom_name=[{text:"Archer [2]",italic:false}]]
item replace entity @s[tag=!GB_freeze_bolt] inventory.22 with breeze_rod[custom_name=[{text:"Freeze Bolt [1]",italic:false}]]
#item replace entity @s[tag=!GB_flame_runner] inventory.23 with flint_and_steel[custom_name=[{text:"Flame Runner [1]",italic:false}]]
item replace entity @s[tag=!GB_ground_slam] inventory.23 with dirt[custom_name=[{text:"Ground Slam [1]",italic:false}]]
item replace entity @s inventory.26 with air

item replace entity @s[tag=GB_dash] inventory.4 with sugar[custom_name=[{text:"Dash [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_lumberjack] inventory.12 with iron_axe[custom_name=[{text:"Lumberjack [1]",italic:false}],!tool,!damage,!max_damage,!attribute_modifiers,enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_burst_charm] inventory.13 with nether_star[custom_name=[{text:"Burst Charm [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_fireball] inventory.14 with fire_charge[custom_name=[{text:"Fireball [2]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_archer] inventory.21 with bow[custom_name=[{text:"Archer [2]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_freeze_bolt] inventory.22 with breeze_rod[custom_name=[{text:"Freeze Bolt [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
#item replace entity @s[tag=GB_flame_runner] inventory.23 with flint_and_steel[custom_name=[{text:"Flame Runner [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s[tag=GB_ground_slam] inventory.23 with dirt[custom_name=[{text:"Ground Slam [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]



execute store result score @s GB_Select run clear @s spectral_arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 2
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 0
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s leather_chestplate 0
execute if score @s[tag=GB_simple_armor] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_simple_armor
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_simple_armor
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s chainmail_chestplate 0
execute if score @s[tag=GB_chain_armor] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_chain_armor
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_chain_armor
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s iron_chestplate 0
execute if score @s[tag=GB_heavy_armor] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_heavy_armor
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 3
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=3..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 3
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_heavy_armor
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s iron_sword 0
execute if score @s[tag=GB_knight] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_knight
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_knight
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s iron_axe 0
execute if score @s[tag=GB_lumberjack] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_lumberjack
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_lumberjack
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s bow 0
execute if score @s[tag=GB_archer] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_archer
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_archer
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s nether_star 0
execute if score @s[tag=GB_burst_charm] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_burst_charm
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_burst_charm
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s breeze_rod 0
execute if score @s[tag=GB_freeze_bolt] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_freeze_bolt
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_freeze_bolt
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s fire_charge 0
execute if score @s[tag=GB_fireball] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_fireball
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_fireball
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s sugar 0
execute if score @s[tag=GB_dash] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_dash
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_dash
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s dirt 0
execute if score @s[tag=GB_ground_slam] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_ground_slam
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_ground_slam
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

#execute store result score @s GB_Select run clear @s ochre_froglight 0
#execute if score @s[tag=GB_frog] GB_Select matches 2 run tag @s add GB_check
#execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_frog
#execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
#execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
#execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
#execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_frog
#tag @s remove GB_check
#execute if score @s GB_Select matches 2 run clear @s
#scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s dripstone_block 0
execute if score @s[tag=GB_dripstone] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_dripstone
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_dripstone
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s flint_and_steel 0
execute if score @s[tag=GB_flame_runner] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_flame_runner
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_flame_runner
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

#Builder
#execute store result score @s GB_Select run clear @s oak_planks 0
#execute if score @s[tag=GB_builder] GB_Select matches 2 run tag @s add GB_check
#execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_builder
#execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
#execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
#execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
#execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_builder
#tag @s remove GB_check
#execute if score @s GB_Select matches 2 run clear @s
#scoreboard players set @s GB_Select 1






#Stuff I moved to page 1
item replace entity @s[tag=!GB_grow] inventory.6 with oak_sapling[custom_name=[{text:"Grow [1]",italic:false}]]
item replace entity @s[tag=GB_grow] inventory.6 with oak_sapling[custom_name=[{text:"Grow [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_shrink] inventory.15 with pufferfish[custom_name=[{text:"Shrink [1]",italic:false}]]
item replace entity @s[tag=GB_shrink] inventory.15 with pufferfish[custom_name=[{text:"Shrink [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_lava] inventory.7 with lava_bucket[custom_name=[{text:"Lava [2]",italic:false}]]
item replace entity @s[tag=GB_lava] inventory.7 with lava_bucket[custom_name=[{text:"Lava [2]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_heal] inventory.1 with red_dye[custom_name=[{text:"Heal [1]",italic:false}]]
item replace entity @s[tag=GB_heal] inventory.1 with red_dye[custom_name=[{text:"Heal [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_cancer] inventory.25 with prismarine_crystals[custom_name=[{text:"Cancer [1]",italic:false}]]
item replace entity @s[tag=GB_cancer] inventory.25 with prismarine_crystals[custom_name=[{text:"Cancer [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_curry] inventory.24 with rabbit_stew[custom_name=[{text:"Curry [1]",italic:false}]]
item replace entity @s[tag=GB_curry] inventory.24 with rabbit_stew[custom_name=[{text:"Curry [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_knockback] inventory.10 with stick[custom_name=[{text:"Knockback Stick [1]",italic:false}]]
item replace entity @s[tag=GB_knockback] inventory.10 with stick[custom_name=[{text:"Knockback Stick [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_invis] inventory.19 with glass_pane[custom_name=[{text:"InvisIbilty [1]",italic:false}]]
item replace entity @s[tag=GB_invis] inventory.19 with glass_pane[custom_name=[{text:"InvisIbilty [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]

item replace entity @s[tag=!GB_elytra] inventory.16 with elytra[custom_name=[{text:"Elytra [1]",italic:false}]]
item replace entity @s[tag=GB_elytra] inventory.16 with elytra[custom_name=[{text:"Elytra [1]",italic:false}],enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]


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

execute store result score @s GB_Select run clear @s red_dye 0
execute if score @s[tag=GB_heal] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_heal
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_heal
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

execute store result score @s GB_Select run clear @s elytra 0
execute if score @s[tag=GB_elytra] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_elytra
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=5..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 1
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_elytra
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1


execute store result score @s GB_Select run clear @s barrier 0
tag @s[scores={GB_Select=2..}] remove GB_lava
tag @s[scores={GB_Select=2..}] remove GB_grow
tag @s[scores={GB_Select=2..}] remove GB_dripstone
tag @s[scores={GB_Select=2..}] remove GB_dash
tag @s[scores={GB_Select=2..}] remove GB_knight
tag @s[scores={GB_Select=2..}] remove GB_simple_armor
tag @s[scores={GB_Select=2..}] remove GB_heal
tag @s[scores={GB_Select=2..}] remove GB_knockback
tag @s[scores={GB_Select=2..}] remove GB_chain_armor
tag @s[scores={GB_Select=2..}] remove GB_lumberjack
tag @s[scores={GB_Select=2..}] remove GB_burst_charm
tag @s[scores={GB_Select=2..}] remove GB_fireball
tag @s[scores={GB_Select=2..}] remove GB_shrink
tag @s[scores={GB_Select=2..}] remove GB_elytra
tag @s[scores={GB_Select=2..}] remove GB_cancer
tag @s[scores={GB_Select=2..}] remove GB_curry
tag @s[scores={GB_Select=2..}] remove GB_ground_slam
tag @s[scores={GB_Select=2..}] remove GB_freeze_bolt
tag @s[scores={GB_Select=2..}] remove GB_archer
tag @s[scores={GB_Select=2..}] remove GB_heavy_armor
tag @s[scores={GB_Select=2..}] remove GB_invis
tag @s[scores={GB_Select=2..}] remove GB_star
scoreboard players set @s[scores={GB_Select=2..}] GB_Points 0
execute if score @s GB_Select matches 2 run clear @s