item replace entity @s inventory.0 with spectral_arrow[custom_name=[{text:"Page 1",italic:false}]]
item replace entity @s[advancements={final_island:star=false}] inventory.1 with minecraft:structure_void[custom_name=[{text:"Locked",color:gray,italic:false}],lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Final Island",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={final_island:star=true},tag=!GB_star] inventory.1 with minecraft:gold_nugget[custom_model_data={strings:['GB_Star']},custom_name=[{text:"Star [2]",italic:false}]]
item replace entity @s[advancements={final_island:star=true},tag=GB_star] inventory.1 with minecraft:gold_nugget[custom_model_data={strings:['GB_Star']},enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}],custom_name=[{text:"Star [2]",italic:false}]]

item replace entity @s[advancements={gorbino:hazmat=false}] inventory.2 with minecraft:structure_void[custom_name=[{text:"Locked",color:gray,italic:false}],lore=[{text:"Get an achivement in:",color:"dark_gray",italic:false},{text:"Gorbino",color:"dark_gray",italic:false},{text:"to unlock",color:"dark_gray",italic:false}]]
item replace entity @s[advancements={gorbino:hazmat=true},tag=!GB_Hazmat] inventory.2 with leather_chestplate[trim={pattern:sentry,material:netherite},dyed_color=16776960,custom_name=[{text:"Hazmat Suit",italic:false}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,dyed_color,trim,unbreakable]}]
item replace entity @s[advancements={gorbino:hazmat=true},tag=GB_Hazmat] inventory.2 with leather_chestplate[trim={pattern:sentry,material:netherite},dyed_color=16776960,custom_name=[{text:"Hazmat Suit",italic:false}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,dyed_color,trim,unbreakable]},enchantment_glint_override=true,lore=[{text:"selected",italic:false,color:gray}]]
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with arrow[custom_name=[{text:"Main Menu",italic:false}]]
item replace entity @s inventory.10 with minecraft:air
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:air
item replace entity @s inventory.17 with barrier[custom_name=[{text:"Clear All",italic:false}]]
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:air
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air



execute store result score @s GB_Select run clear @s spectral_arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 1
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1



execute store result score @s GB_Select run clear @s arrow 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 0
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
tag @s[scores={GB_Select=2..}] remove GB_Hazmat
scoreboard players set @s[scores={GB_Select=2..}] GB_Points 0
execute if score @s GB_Select matches 2 run clear @s


execute store result score @s GB_Select run clear @s gold_nugget 0
execute if score @s[tag=GB_star] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_star
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_star
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s leather_chestplate 0
execute if score @s[tag=GB_Hazmat] GB_Select matches 2 run tag @s add GB_check
execute if score @s[tag=GB_check] GB_Select matches 2 run tag @s remove GB_Hazmat
execute if score @s[tag=GB_check] GB_Select matches 2 run scoreboard players remove @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s[scores={GB_Points=4..}] add GB_check
execute if score @s[tag=!GB_check] GB_Select matches 2 run scoreboard players add @s GB_Points 2
execute if score @s[tag=!GB_check] GB_Select matches 2 run tag @s add GB_Hazmat
tag @s remove GB_check
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1