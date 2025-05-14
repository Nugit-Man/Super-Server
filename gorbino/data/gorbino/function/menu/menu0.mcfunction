item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with diamond_sword[custom_name='["",{"text":"Join The Fight!","italic":false}]',!tool,!damage,!max_damage,!attribute_modifiers]
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with diamond_chestplate[custom_name='["",{"text":"Change Your Loadout!","italic":false}]',!attribute_modifiers]
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

execute store result score @s GB_Select run clear @s diamond_sword 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Mode 2
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1

execute store result score @s GB_Select run clear @s diamond_chestplate 0
execute if score @s GB_Select matches 2 run scoreboard players set @s GB_Menu 1
execute if score @s GB_Select matches 2 run clear @s
scoreboard players set @s GB_Select 1